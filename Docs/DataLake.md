
Difference between blob and data lake stroage
![image](https://user-images.githubusercontent.com/38088886/111019186-7a5a7580-83b5-11eb-9a38-37474ffc5e7a.png)


DataLake architechture

![image](https://user-images.githubusercontent.com/38088886/111019224-c1486b00-83b5-11eb-9f8b-b8fddd707b32.png)


Data Lake HA vs Disaster recovery
![image](https://user-images.githubusercontent.com/38088886/111019292-24d29880-83b6-11eb-8ab5-1471a8737c93.png)


Locally redudant storage
* all the replica is stored in one availablity zone (Physical Datacenter)
![image](https://user-images.githubusercontent.com/38088886/111019558-e63ddd80-83b7-11eb-9f5b-b1a944010343.png)

Zone redudant stroage
* This is true High availablity. If one zone failed, the request will be picked up by other AZ
* This one will not have DR. if one region fails, then everyting fails.
![image](https://user-images.githubusercontent.com/38088886/111019605-2e5d0000-83b8-11eb-934e-258e81be230a.png)

Geo redudant storage

* This serves Disaster recovery. If one region failed, data can be backed up from another region.
* But atleast take an hour for application to become available

![image](https://user-images.githubusercontent.com/38088886/111019639-9ad7ff00-83b8-11eb-90ab-f34d871321be.png)

Geo zone redudant
* This will give both high availablity and Disaster recovery.

![image](https://user-images.githubusercontent.com/38088886/111019693-d70b5f80-83b8-11eb-9fb0-7b3e636bdb73.png)

Read access Geo redudant storage
* This will give Disaster recovery.
* If primary location is down, then you immediatley access the data from Secondary region

![image](https://user-images.githubusercontent.com/38088886/111019752-12a62980-83b9-11eb-93bf-682807aa1144.png)

Read acccess Geo zone redudant stroage
* This will give both Disaster recover (immediate READ) and also High Availabilty.

![image](https://user-images.githubusercontent.com/38088886/111019823-7a5c7480-83b9-11eb-84de-bbcefe6484cb.png)


![image](https://user-images.githubusercontent.com/38088886/111019854-b5f73e80-83b9-11eb-9f1b-172b34d13103.png)


**Failover**

* currently only Manual failover is available

![image](https://user-images.githubusercontent.com/38088886/111019908-11c1c780-83ba-11eb-9920-3094c2fbc414.png)

**Data Protection**

![image](https://user-images.githubusercontent.com/38088886/111019951-66fdd900-83ba-11eb-868c-9299cad9eb20.png)

# Design a Data Storage Structure

# DataLake Architecthure planning

For those organisations starting their data lake journey, they will attempt to answer these frequently asked questions:

* How do we structure the lake?
* Which file formats should we use?
* Should we have multiple lakes or just one?
* How best to secure and govern the lake?

[Datalake planning part 1](https://cloudblogs.microsoft.com/industry-blog/en-gb/technetuk/2020/04/09/building-your-data-lake-on-azure-data-lake-storage-gen2-part-1/)

![image](https://user-images.githubusercontent.com/38088886/111732040-a457e000-886c-11eb-926d-0ad39b9fb543.png)

# Query Data in DataLake using DataExplorer

[Query data in Azure Data Lake using Azure Data Explorer](https://docs.microsoft.com/en-us/azure/data-explorer/data-lake-query-data)

[Query Azure Storage analytics logs in Azure Log Analytics](https://azure.microsoft.com/en-in/blog/query-azure-storage-analytics-logs-in-azure-log-analytics/)

# Table service - Guidelines for table service

[Guidelines for Table design](https://docs.microsoft.com/en-us/azure/storage/tables/table-storage-design-guidelines)

# Dynamic file prunning

[Dynamic file prunning](https://docs.microsoft.com/en-us/azure/databricks/delta/optimizations/dynamic-file-pruning)

with static pruninng
step 1 partition the data
![image](https://user-images.githubusercontent.com/38088886/111736124-23511680-8875-11eb-99b9-f3c3cc2ff6d9.png)

* here we know the filter and it also use partiton data beforehand. so we can apply static prunning to avoid unneccessary file read.

![image](https://user-images.githubusercontent.com/38088886/111736365-978bba00-8875-11eb-95b4-eb33c9b7988e.png)

![image](https://user-images.githubusercontent.com/38088886/111736428-b8540f80-8875-11eb-85e5-3f231cfe5797.png)

without prunning

Here in this query, we are joining small table with big table but filter by small table. Even though it filters small table with US & India value, we are scanning full big table here. Because we are not using location filter here which is the big table partitioning 

![image](https://user-images.githubusercontent.com/38088886/111736528-e89bae00-8875-11eb-9542-d24f58fae45f.png)

ofcourse brodcast join helps to improve performance, as it copies this small data to all executor to avoid data shuffling. This also involve I/O operation for performing 
broadcast join. But the join operation will perform on all executor, eventhough we are interested on US and India.


![image](https://user-images.githubusercontent.com/38088886/111736688-3d3f2900-8876-11eb-8383-cf54896b0bcb.png)

Dynamic file prunning helps to skip unnecssary operation on the executor which hold other than US & India.

DFP prune unwanted partitioned files

![image](https://user-images.githubusercontent.com/38088886/111737358-6318fd80-8877-11eb-8d1b-567da2eb3059.png)







