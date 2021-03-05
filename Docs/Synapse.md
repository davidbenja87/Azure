Synapse Architechture

Modern Datawarehouse

![image](https://user-images.githubusercontent.com/38088886/109928775-b6a71b00-7cbd-11eb-9992-03083ed24afe.png)

Synapse vs Dedicated sql pool

![image](https://user-images.githubusercontent.com/38088886/110075741-32b36880-7d7b-11eb-8ee3-dbf351445dc6.png)



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


