
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

![image](https://user-images.githubusercontent.com/38088886/111019639-9ad7ff00-83b8-11eb-90ab-f34d871321be.png)

Geo zone redudant
* This will give both high availablity and Disaster recovery.

![image](https://user-images.githubusercontent.com/38088886/111019693-d70b5f80-83b8-11eb-9fb0-7b3e636bdb73.png)
