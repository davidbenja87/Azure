Synapse Optimization

* For big dataloading,use Polybase instead of ADF,BCP
* For big data join, use HASH Distribution
* For small data join, use default Round Robin Distribution
* By Default data stored in DWH stored as 60 partition database
* Making further partition may overhead performance. If you would like to partition the data atleast 1 million rows need to be there due to column store index limitation.
* Use small column size in column. For example varchar/char instead of nvarchar.
* Scaling- Due to scaling in/out nature, use this feature during big data load/peak business hours
* Passing and resuming compute- As storage and compute are decoupled, create some trigger to stop DWH to avoid compute cost when not in use.

https://docs.microsoft.com/en-us/azure/architecture/best-practices/data-partitioning-strategies
