**CosmosDB**

* Nosql DB
* Computation is calculated based on Request Unit(RU)/ Throughput
* RU is mix of RAM/CPU/ I/O
* It is organised into Database and then several contaniner
* Throughput can be set at Database level (Shared) or at the contaniner level(Dedicated)
* Throughtput can be assigned during creation, which mean we can't change once it is created
* Once the throughput assigned to container, it is equally divide RU for each logical partition

![image](https://user-images.githubusercontent.com/38088886/110902123-43c12400-82fd-11eb-8e8f-716ee7d782b2.png)


**CosmosDB partition**
![image](https://user-images.githubusercontent.com/38088886/110900838-4de22300-82fb-11eb-98de-da2c3778da27.png)


![image](https://user-images.githubusercontent.com/38088886/110900706-18d5d080-82fb-11eb-9ef2-8e097b4b6641.png)

Avoid Hot partition at store

![image](https://user-images.githubusercontent.com/38088886/110902754-45d7b280-82fe-11eb-80ad-f602d8082379.png)

Avoid Hot partition at query
* If the data is split by year, most recent data sits in one partition, All the query which require to get last one year data will overflow on one partition.

![image](https://user-images.githubusercontent.com/38088886/110903155-ec23b800-82fe-11eb-8a1c-9303ad18c3e9.png)

Single vs Cross query partition

Single

![image](https://user-images.githubusercontent.com/38088886/110903397-4a509b00-82ff-11eb-9aac-61642a88716e.png)

Cross
* cross partiton query requires data to be processed across several logical partition and then combine the result. This will result in more RU usage.
![image](https://user-images.githubusercontent.com/38088886/110903627-a3203380-82ff-11eb-8ae3-a42bb60f1eff.png)


Composite key

* In one document we can store maximum 20 MB of data. In our single partition example, we partition the data by Username, meaning all relevant information regarding single user will be stored in one document under onelogical partition. If a user has more than 20 MB of data, then it will fail. so we need to split user information into several small documents.
* Also In one logical partition, you can have maximum 20 GB of data,but you can have collection of a documents in a single logical partiton.
* this is why we need composite key, in our example username-mmddyyyy. so that data will be scaled.

![image](https://user-images.githubusercontent.com/38088886/111015794-75d89180-83a2-11eb-85f8-3894c1201c3a.png)


Partition best practice

![image](https://user-images.githubusercontent.com/38088886/111016071-c3093300-83a3-11eb-8dde-7523ebe951fa.png)

**Global Distribution /Replication**

* We can set up one primary region where data gets store and consumed by the user.
* But if we have user from globally different region, then we might need to replicate the data in those region as well.
* This will provide the users to READ the data from their own region. It reduce the latency.
* One WRITE region and multiple READ region can be set.
* When you set up multiple READ region, the same RU and Storage will be copied to all READ region. Need to be aware of the cost.
* Apart from globally distribute region, you can also of data copied to the paried region. This will be useful for disaster recovery(DR) or High Availiblity(HA) of your application.
* if our purpose to disaster recovery, then we need to use Region Pair.
* If our purpose to give user to feel low latency, the choose global replication

![image](https://user-images.githubusercontent.com/38088886/111016711-5132e880-83a7-11eb-83fc-701b6f297dde.png)


![image](https://user-images.githubusercontent.com/38088886/111016477-298f5080-83a6-11eb-836b-b1cb32abd031.png)


Multi-Master (Multi write)

* In our previous, Multi READ example, User from japan, tries to WRITE some record, it can't do it japan as it is READ only, it needs to go west us and write it there and again it needs to replicate in japan, so that user will see an updated record.
* To avoid this, cosmosdb provide MULTI-WRITE option, so that any user from anywhere they can write in thier own region and it will automatically updated into other region.

![image](https://user-images.githubusercontent.com/38088886/111016902-46c51e80-83a8-11eb-8e37-2b5447ebefcc.png)

Conflict Resolution

* if two user from two different region WRITE the same record at the same time, which one will be updated. To decide this, cosmosdb provide us conflict resolution.
![image](https://user-images.githubusercontent.com/38088886/111017144-80e2f000-83a9-11eb-9500-62147e393244.png)
 
 **Manual / Automatic failover**
 
 * Use case 1 : In our case we have four READ/WRITE region, if one region fails automatically, cosmosdb repoint the user request to thier nearest region to serve thier request.
 * Use case 2 : If we have one WRITE region (West US), three READ region. If user request to one of the READ region fails, then it redirects to the nearest region to serve thier request.
 * Use case 3: what if one and ONLY WRITE region fails, then it comes to the picture Failover- either we manually point failover region or automatically tag the fail over region.
 ![image](https://user-images.githubusercontent.com/38088886/111017425-57c35f00-83ab-11eb-8896-fd8ab726f04a.png)
 

**Measuring performance**

![image](https://user-images.githubusercontent.com/38088886/111017911-05d00880-83ae-11eb-8c41-e1650b4519df.png)

![image](https://user-images.githubusercontent.com/38088886/111018083-dbcb1600-83ae-11eb-9493-1e8be2e12947.png)


**Data consistency**

![image](https://user-images.githubusercontent.com/38088886/111018519-1e8ded80-83b1-11eb-83fb-bdf2e0402ee0.png)

![image](https://user-images.githubusercontent.com/38088886/111018547-5a28b780-83b1-11eb-8ff5-1e933d8d8c94.png)









