CosmosDB

* Nosql DB
* Computation is calculated based on Request Unit(RU)/ Throughput
* RU is mix of RAM/CPU/ I/O
* It is organised into Database and then several contaniner
* Throughput can be set at Database level (Shared) or at the contaniner level(Dedicated)
* Throughtput can be assigned during creation, which mean we can't change once it is created
* Once the throughput assigned to container, it is equally divide RU for each logical partition

![image](https://user-images.githubusercontent.com/38088886/110902123-43c12400-82fd-11eb-8e8f-716ee7d782b2.png)


CosmosDB partition
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








