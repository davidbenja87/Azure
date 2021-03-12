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





