
# Secure Endpoint

## Service endpoint

* suppose if you have mportant asset in storage and you want to give secure access only to the specified resource, then use service endpoint.
* This will use Azure backbone network. Usually all azure services use internet.

![image](https://user-images.githubusercontent.com/38088886/111034242-8de4fb00-840c-11eb-9fe5-033fc26bf016.png)


![image](https://user-images.githubusercontent.com/38088886/111034381-3c893b80-840d-11eb-973a-b0d0b238a94d.png)

* Service endpoint needs to open in the virtual network level. meaning we are opening resources in the vnet to connect to certain Azure services.
* for instance Microsoft.storage, which means **we are opening all azure storage access**.

![image](https://user-images.githubusercontent.com/38088886/111034433-912cb680-840d-11eb-860a-cb2537d2077c.png)


## Private link (Private endpoint)

* Unlike service endpoint, where we open for entire service, in private endpoint, we open for specific resource.
* It also create private ip address, so that it transfers data within network.

![image](https://user-images.githubusercontent.com/38088886/111034544-1e700b00-840e-11eb-988d-61a23bf4d0ec.png)

![image](https://user-images.githubusercontent.com/38088886/111034585-4f504000-840e-11eb-952b-a3b176df2fc2.png)


# Storage Account Authentication
Access key - 
* root key
* its like password. with this key, you can do anything. this will have full privilege

Shared access signature(SAS)
* give least priviledge
* with start and end time
* with specifi ip address
* can create account level / container level


![image](https://user-images.githubusercontent.com/38088886/111034831-490e9380-840f-11eb-9f3a-4a7b0b0fd27a.png)

![image](https://user-images.githubusercontent.com/38088886/111034939-d520bb00-840f-11eb-9caa-be69ce446b91.png)

* SAS can be used in conjunction with storage access policy

![image](https://user-images.githubusercontent.com/38088886/111035047-4f513f80-8410-11eb-9cd5-f4dbbed2d08e.png)

Active Directory Identities

![image](https://user-images.githubusercontent.com/38088886/111035170-136aaa00-8411-11eb-94d1-5b4328f1862e.png)

Role based access control

![image](https://user-images.githubusercontent.com/38088886/111035279-968c0000-8411-11eb-90a5-068aa76a5d3c.png)

![image](https://user-images.githubusercontent.com/38088886/111035322-d521ba80-8411-11eb-99c7-32e5b7ee8f1e.png)

=======================================================================================================================


![image](https://user-images.githubusercontent.com/38088886/111057880-8ceeb080-8482-11eb-9035-f779620e84ef.png)


# Data encryption

State of data
* Rest
* in motion
* in use

![image](https://user-images.githubusercontent.com/38088886/111057915-cc1d0180-8482-11eb-94c1-42e1a7007b7a.png)

Type of encryption

* symmetric

Same key is used for encrypt and decrypt

![image](https://user-images.githubusercontent.com/38088886/111057951-09818f00-8483-11eb-9864-f2daad133dbd.png)

* Assymmetric
* public key for encrypt and private key for decrypt

![image](https://user-images.githubusercontent.com/38088886/111057997-536a7500-8483-11eb-8bc8-4db3fde97afc.png)

In both cases, key need to be maintained in secured place, in azure we need to use Azure key vault.

## Encryption at rest

![image](https://user-images.githubusercontent.com/38088886/111058079-e1def680-8483-11eb-954c-bdc5c52b638a.png)

Storage account blob account - Encryption at rest

![image](https://user-images.githubusercontent.com/38088886/111058121-25d1fb80-8484-11eb-8b0c-ab818ec34923.png)

Storage account gen 2 - encryption at rest

![image](https://user-images.githubusercontent.com/38088886/111058147-531ea980-8484-11eb-9aa9-d37330c8cf8e.png)

Azure sql DB - encryption at rest

* Transparent Data Encryption (TDE) - encrypts data at rest which includes data, logs & backup
* At database level, we do n't have option to select our own key

![image](https://user-images.githubusercontent.com/38088886/111058180-8eb97380-8484-11eb-822b-24631c85ac51.png)


Azure synapse - encryption at rest

* Transparent Data Encryption (TDE) - encrypts data at rest which includes data, logs & backup
* At database level, we do n't have option to select our own key


![image](https://user-images.githubusercontent.com/38088886/111058210-b90b3100-8484-11eb-8de6-96a82adaa5b8.png)

But at server leve TDE, can use Microsoft managed key/ Customer Managed Key

![image](https://user-images.githubusercontent.com/38088886/111058234-fb347280-8484-11eb-948c-086bdac9bb29.png)


Azure cosmos DB - encryption at rest

* In CosmosDB, we do n't have option to select Data encryption. By default, it encrypts data at rest, at motion and in use.


## Data Encryption at transit/motion

![image](https://user-images.githubusercontent.com/38088886/111058292-7b5ad800-8485-11eb-83d9-70209dac4f24.png)

Storage account - blob storage - Encryption at motion

![image](https://user-images.githubusercontent.com/38088886/111058331-ce348f80-8485-11eb-8cb6-421debd66c8c.png)

Storage account - DataLake gen2 - Encryption at motion

![image](https://user-images.githubusercontent.com/38088886/111058358-02a84b80-8486-11eb-975e-ec268847c5b2.png)

Azure sql DB - encryption at motion

* In sql DB, if we have data with PII information, then that needs to be encrypted while transferring data.

We need to use Always Encrypted

Step 1
![image](https://user-images.githubusercontent.com/38088886/111058438-92e69080-8486-11eb-81e9-a6fa876ed020.png)

Step 2

![image](https://user-images.githubusercontent.com/38088886/111058467-b7db0380-8486-11eb-87d7-1b6373b22f57.png)

Step 3

* Select the fields which we want to encrypt
* Select encryption type - Deterministic/ Randomised
* Select encryption key - existing key/ new key

![image](https://user-images.githubusercontent.com/38088886/111058516-038dad00-8487-11eb-9b64-9c378620fad4.png)

Step 4

* Select the master key (CMK) to protect column level encryption (CEK)
* This master key can be stored in windows certificate store or Azure Key vault

![image](https://user-images.githubusercontent.com/38088886/111058551-50718380-8487-11eb-89e0-3787049999da.png)


Step 5

* select you want script or run immediately

![image](https://user-images.githubusercontent.com/38088886/111058568-68490780-8487-11eb-9fa9-815aabef1964.png)

Step 6:

![image](https://user-images.githubusercontent.com/38088886/111058574-7b5bd780-8487-11eb-9e41-78e4b21d2eda.png)

Step 7:

Now we can visualise, the data is encrypted

![image](https://user-images.githubusercontent.com/38088886/111058794-c75b4c00-8488-11eb-8c00-ba0fde04ac13.png)



Deterministic vs Randomised

![image](https://user-images.githubusercontent.com/38088886/111058647-d1c91600-8487-11eb-9dd4-24329cac807f.png)

CEK vs CMK

* To decrypt the data, User (Client) should supply CMK to decrypt CEK to see the actual values


![image](https://user-images.githubusercontent.com/38088886/111058707-148aee00-8488-11eb-910a-74c3a28e3309.png)


Azure synapse DB - encryption at motion


Same type of encryption at motion which we have done so far for the synapse

Access policy need to be configured in key vault, in order to generate the keys

![image](https://user-images.githubusercontent.com/38088886/111058878-5b2d1800-8489-11eb-960c-948e1ef244c2.png)


# Data Auditing

## Auditing in SQL DB

![image](https://user-images.githubusercontent.com/38088886/111059006-42713200-848a-11eb-8213-8d94e0897541.png)

Set up Auditing in SQL DB

### Server level Auditing

*  tracks all database activities

![image](https://user-images.githubusercontent.com/38088886/111059045-8106ec80-848a-11eb-9ec1-dd4e3f9bffa4.png)

### Database level Auditing

![image](https://user-images.githubusercontent.com/38088886/111059061-9d0a8e00-848a-11eb-8d34-5b2d9a038435.png)

* log analytics output will be consumed by Azure Monitor/ PowerBI report

configure audit in Storage account

![image](https://user-images.githubusercontent.com/38088886/111059118-e955ce00-848a-11eb-8a7f-55a50ab014d0.png)

Configure audit in Log Analytics

![image](https://user-images.githubusercontent.com/38088886/111059132-fbd00780-848a-11eb-8d47-762f07fd0fbd.png)

# Data Masking

How to mask data dynamically

![image](https://user-images.githubusercontent.com/38088886/111059155-2cb03c80-848b-11eb-8258-6543590e55f6.png)

![image](https://user-images.githubusercontent.com/38088886/111059250-f58e5b00-848b-11eb-9823-508049b9fbff.png)


![image](https://user-images.githubusercontent.com/38088886/111059411-3175f000-848d-11eb-9d25-770ebd787106.png)

How to apply Dynamic Data Masking

* also include T-SQL

![image](https://user-images.githubusercontent.com/38088886/111059475-c678e900-848d-11eb-9ce7-0b2e4faa9c2c.png)








