
![image](https://user-images.githubusercontent.com/38088886/111021211-b6480780-83c2-11eb-9c81-d2c8219e2032.png)

**Deplyment options and Purchasing model**

Deployment option
 * single Database
 * Elastic pool
 * Managed Instance


Purchase model
* V-core
* DTU

Compute tier
* provisioned
* serverless

![image](https://user-images.githubusercontent.com/38088886/111021283-19d23500-83c3-11eb-87f9-01ea8b47cd35.png)

![image](https://user-images.githubusercontent.com/38088886/111021321-5736c280-83c3-11eb-8db0-d23790c87377.png)

![image](https://user-images.githubusercontent.com/38088886/111021489-91ed2a80-83c4-11eb-852f-47395cb39e16.png)

**Horizontal vs Vertical Scaling**


![image](https://user-images.githubusercontent.com/38088886/111022001-f067d800-83c7-11eb-946e-c4f610dc8109.png)

Horizontal scale out

![image](https://user-images.githubusercontent.com/38088886/111022091-94518380-83c8-11eb-93a9-4ad5b51c629f.png)

![image](https://user-images.githubusercontent.com/38088886/111022133-dd093c80-83c8-11eb-89d9-9934832e0ded.png)


**Azure sql db High availablitly** 

![image](https://user-images.githubusercontent.com/38088886/111026162-d8e91900-83e0-11eb-9bb6-bd81b8b34286.png)

![image](https://user-images.githubusercontent.com/38088886/111026354-ae4b9000-83e1-11eb-9668-61ca43b0c9d7.png)

sql db zone redudancy
![image](https://user-images.githubusercontent.com/38088886/111026461-49dd0080-83e2-11eb-86e8-b7a008528c02.png)


**Disaster Recovery - Geo replication**

![image](https://user-images.githubusercontent.com/38088886/111026684-75141f80-83e3-11eb-8049-e45e15bb309d.png)

configure geo-replication

![image](https://user-images.githubusercontent.com/38088886/111026744-d9cf7a00-83e3-11eb-8c23-c8ae371b6fcd.png)

**Failover group**

![image](https://user-images.githubusercontent.com/38088886/111026803-52ced180-83e4-11eb-8e51-8d5dbdd3f94b.png)

![image](https://user-images.githubusercontent.com/38088886/111026819-709c3680-83e4-11eb-9976-1fe809f34a11.png)

![image](https://user-images.githubusercontent.com/38088886/111026898-d8528180-83e4-11eb-817f-61c796d613a5.png)

![image](https://user-images.githubusercontent.com/38088886/111027091-f8cf0b80-83e5-11eb-8d61-32acadaa53a6.png)


**Database Backup**

![image](https://user-images.githubusercontent.com/38088886/111027192-89a5e700-83e6-11eb-812d-dbbc748ed11c.png)

Storage and security of backup files

![image](https://user-images.githubusercontent.com/38088886/111027278-249ec100-83e7-11eb-95b3-e13c148b51f5.png)

Backup retention period

![image](https://user-images.githubusercontent.com/38088886/111027321-75aeb500-83e7-11eb-993e-683a4c635002.png)

Backup and restore

![image](https://user-images.githubusercontent.com/38088886/111027361-b4dd0600-83e7-11eb-9117-e881cd3676b4.png)

Manage backup using portal

![image](https://user-images.githubusercontent.com/38088886/111027430-303eb780-83e8-11eb-9990-570349edbb8b.png)


Restore database steps

![image](https://user-images.githubusercontent.com/38088886/111027506-a3e0c480-83e8-11eb-9911-dbe9c2eadbb2.png)


# Azure Sql Automated tunning

Azure SQL Database automatically manages data services that constantly monitor your queries and identifies the action that you can perform to improve performance of your workload. You can review recommendations and manually apply them, or let Azure SQL Database automatically apply corrective actions - this is known as automatic tuning mode.

Automatic tuning can be enabled at the server or the database level through:

The Azure portal
REST API calls
T-SQL commands

* Force plan
* Create index
* drop index

![image](https://user-images.githubusercontent.com/38088886/111254617-598c5d00-860d-11eb-9693-99c35397fbb9.png)

![image](https://user-images.githubusercontent.com/38088886/111255029-32825b00-860e-11eb-9fb0-4b81e43a24f6.png)

Set Automatic tunning through sql

```sql
ALTER DATABASE current SET AUTOMATIC_TUNING = AUTO | INHERIT | CUSTOM
```

Automatic tuning options on a server are applied to all databases on this server. By default, all databases inherit configuration from their parent server, but this can be overridden and specified for each database individually.

[more info on automatic tunning](https://docs.microsoft.com/en-us/azure/azure-sql/database/automatic-tuning-enable)


