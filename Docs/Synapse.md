Synapse Architechture

Three compenents in DWH.
* Control node
* Compute node
* Storage node

![image](https://user-images.githubusercontent.com/38088886/110204586-a46adf80-7e6b-11eb-89b7-220cc4de9da9.png)


Modern Datawarehouse

![image](https://user-images.githubusercontent.com/38088886/109928775-b6a71b00-7cbd-11eb-9992-03083ed24afe.png)

Synapse vs Dedicated sql pool

![image](https://user-images.githubusercontent.com/38088886/110075741-32b36880-7d7b-11eb-8ee3-dbf351445dc6.png)


Synapse workspace

Difference between SQL dedicated pool vs serverless pool
* you can query the data available in SQL dedicated pool, but can't query from external storage.
* In serverless pool, you can query external storage like blob, spark pool. This is good for ad-hoc query

![image](https://user-images.githubusercontent.com/38088886/110197960-d61d7f80-7e46-11eb-99fd-e7b9bca4cd13.png)




Synapse Optimization

* For big dataloading,use Polybase instead of ADF,BCP
* For big data join, use HASH Distribution
* For small data join, use default Round Robin Distribution
* By Default data stored in DWH stored as 60 partition database
* Making further partition may overhead performance. If you would like to partition the data atleast 1 million rows need to be there due to column store index limitation.
* Use small column size in column. For example varchar/char instead of nvarchar.
* Scaling- Due to scaling in/out nature, use this feature during big data load/peak business hours
* Passing and resuming compute- As storage and compute are decoupled, create some trigger to stop DWH to avoid compute cost when not in use.


Partition Strategy
SQL Database
https://docs.microsoft.com/en-us/azure/architecture/best-practices/data-partitioning-strategies

Synapse Optimzation

https://docs.microsoft.com/en-us/azure/synapse-analytics/sql-data-warehouse/sql-data-warehouse-best-practices

Cosmodb Optimzation

https://docs.microsoft.com/en-us/learn/modules/monitor-and-scale-cosmos-db/

DataLake gen2 Optimization

https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-performance-tuning-guidance

Databricks best practice

https://docs.microsoft.com/en-us/learn/modules/describe-azure-databricks-best-practices/


