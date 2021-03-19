# Synapse Architechture

Three compenents in DWH.
* Control node
* Compute node
* Storage node

Control node:
  User submits code into control node. 
  Control node has MPP engine to submit queries parallel to the compute node
  
![image](https://user-images.githubusercontent.com/38088886/110204586-a46adf80-7e6b-11eb-89b7-220cc4de9da9.png)

Compute node:
 Compute node maps to the data distribution and runs parallelly.
 There is an internal service DMS which is used to transfer data between compute node to do data process.

![image](https://user-images.githubusercontent.com/38088886/110204644-0d525780-7e6c-11eb-9bfb-eb667c98e6a6.png)


Storage
 Totally data is distributed into 60 database
 
![image](https://user-images.githubusercontent.com/38088886/110204790-e8aaaf80-7e6c-11eb-9cc1-39e8b4852a3a.png)

# Data Distribution & Sharding

In Datawarehouse, three techniques are used
* Round robin - Data is evenly distributed based on order of rows. It is good for loading data into the staging table. Not good for join/group by, because it requires data transformation.
* Replicate table- copy the cache of data in all the conmpute to avoid data tranfer among the node. This is good for small table involving in join and group by operation.
* HASH table - distrubte the row based on the partition key. It is good for large table.

[More info of Data Distribution](https://rajanieshkaushikk.com/2020/09/09/how-to-choose-right-data-distribution-strategy-for-azure-synapse/)

Good Hash key

![image](https://user-images.githubusercontent.com/38088886/110205297-24df0f80-7e6f-11eb-9cdf-3d51083525b9.png)

![image](https://user-images.githubusercontent.com/38088886/110205307-32949500-7e6f-11eb-9544-144be910b8a0.png)


Modern Datawarehouse

![image](https://user-images.githubusercontent.com/38088886/109928775-b6a71b00-7cbd-11eb-9992-03083ed24afe.png)

Synapse vs Dedicated sql pool

![image](https://user-images.githubusercontent.com/38088886/110075741-32b36880-7d7b-11eb-8ee3-dbf351445dc6.png)

## Table type

Clustered column store index
* store and organise data into column
* Highly compressed. Because it stores data into column, so it packs repeated value in the column
* Stored data as segment 1 Million row.
* No secondary index. as already stores the data as column

Heap
* No index on the data. But it allow secondary index
* No data compression

Clustered B tree index
* sorted index is stored on the data, means in actual physical table
* No data compression
* secondary index can be created

# Data Migration

Best practice to load data into DWH
* do n't ordered data while loading, use round robin for loading into DWH
* use CTAS,because is uses parallel loading and also minimise logging (not all write are captured in transaction logging)

Loading method
=================

Single client loading method
 * SSIS
 * Azure Data Factory
 * BCP
 * This can add some parallel processing mean submit multiple BCP but bottleneck at the control node

![image](https://user-images.githubusercontent.com/38088886/110206985-f8c88c00-7e78-11eb-9a36-c8c1e0f99e5b.png)


Parallel reader loading method
* polybase - Read data from Storage account and loads content into DWH
* It bypassess control node and loads directly into compute node
Load with polybase
![image](https://user-images.githubusercontent.com/38088886/110207001-07af3e80-7e79-11eb-8301-c6b76b8a0a1f.png)

## Polybase set up

External table

It just contains meta data and actual data sits in external storage system. You can query the external source sytem file as traditional table.

If there is change in the underlying file,let's say adding field or removing, you suppose to drop external and create it again. you can't drop the table.


![image](https://user-images.githubusercontent.com/38088886/110207139-7391a700-7e79-11eb-8d1f-b2e6260e1f22.png)


# Security

Network security
 Firewall
 selected virtual network
 private endpoint

Data protection
 Transparnet layer security, encrypts data in motion (client <-> server)
 Transparent data encryption (TDE) encrypts the data at rest
 
Dynamic data masking
 * It masks the data not encrypt it. so you can have real data and less privilage user can see the hided version of the data
 * Default - applies to any data type. completely mask the data
 * partial - shows start and end char,remaining will be masked
 * email -shows the first char and remaining will be masked
 * random - entire column is replaced with randon number between the specified range
 * credit card - shows only last 4 character

Access Managment
 * Authentication - authenticates your identity
    Sql authentication
    Active directory authentication - centrally managed identity in AAD.
 * Authorization - once authenicated, verifies the access control
    row level security -control access to row based on the role of the user.
    column level security - control access to column based on the role of the user.

![image](https://user-images.githubusercontent.com/38088886/110212644-4ef6f880-7e94-11eb-86ed-c2faac6b453e.png)

## Data encryption

![image](https://user-images.githubusercontent.com/38088886/111259545-09b29380-8617-11eb-9588-e62a841b1ba7.png)

[simple step to encrypt Database TDE](https://docs.microsoft.com/en-us/azure/synapse-analytics/sql-data-warehouse/sql-data-warehouse-encryption-tde-tsql)

[more info on TDE](https://docs.microsoft.com/en-us/sql/relational-databases/security/encryption/transparent-data-encryption?view=sql-server-ver15)
[TDE](https://docs.microsoft.com/en-us/sql/relational-databases/security/encryption/transparent-data-encryption?view=sql-server-ver15)

Synapse workspace

Difference between SQL dedicated pool vs serverless pool
* you can query the data available in SQL dedicated pool, but can't query from external storage.
* In serverless pool, you can query external storage like blob, spark pool. This is good for ad-hoc query

![image](https://user-images.githubusercontent.com/38088886/110197960-d61d7f80-7e46-11eb-99fd-e7b9bca4cd13.png)




# Synapse Optimization

* For big dataloading,use Polybase instead of ADF,BCP
* For big data join, use HASH Distribution
* For small data join, use default Round Robin Distribution
* By Default data stored in DWH stored as 60 partition database
* Making further partition may overhead performance. If you would like to partition the data atleast 1 million rows need to be there due to column store index limitation.
* Use small column size in column. For example varchar/char instead of nvarchar.
* Scaling- Due to scaling in/out nature, use this feature during big data load/peak business hours
* Passing and resuming compute- As storage and compute are decoupled, create some trigger to stop DWH to avoid compute cost when not in use.


# Synapse Scaling

![image](https://user-images.githubusercontent.com/38088886/111022209-4a1cd200-83c9-11eb-885a-fc2c1ee41fce.png)


# Datawarehouse backup
![image](https://user-images.githubusercontent.com/38088886/111027898-00dd7a00-83eb-11eb-886a-113f2654d127.png)

Taking restore points
![image](https://user-images.githubusercontent.com/38088886/111027929-2ff3eb80-83eb-11eb-91f2-f1421a1e7595.png)

Restore DWH

![image](https://user-images.githubusercontent.com/38088886/111027943-4732d900-83eb-11eb-9e48-b81d6083d4be.png)


Synapse sql replicate restore point back to the paired region

![image](https://user-images.githubusercontent.com/38088886/111028045-ef48a200-83eb-11eb-8cb0-5b305499cc3d.png)


Partition Strategy
SQL Database
https://docs.microsoft.com/en-us/azure/architecture/best-practices/data-partitioning-strategies

Synapse Optimzation

https://docs.microsoft.com/en-us/azure/synapse-analytics/sql-data-warehouse/sql-data-warehouse-best-practices

CTAS/Partition switch VS UPDATE/DELETE

![image](https://user-images.githubusercontent.com/38088886/111257089-6e1f2400-8612-11eb-93a1-3ee0e04dccdb.png)

[CTAS VS UPDATE/DELETE Peformance](https://docs.microsoft.com/en-gb/archive/blogs/apsblog/azure-sql-dw-performance-ctaspartition-switching-vs-updatedelete)


# Monitor Synapse DWH

[Monitor Synapse performance](https://docs.microsoft.com/en-us/azure/synapse-analytics/sql-data-warehouse/sql-data-warehouse-manage-monitor)

Cosmodb Optimzation

https://docs.microsoft.com/en-us/learn/modules/monitor-and-scale-cosmos-db/

DataLake gen2 Optimization

https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-performance-tuning-guidance

Databricks best practice

https://docs.microsoft.com/en-us/learn/modules/describe-azure-databricks-best-practices/


