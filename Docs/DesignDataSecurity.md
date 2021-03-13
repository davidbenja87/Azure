
**Secure Endpoint**

**Service endpoint**

* suppose if you have mportant asset in storage and you want to give secure access only to the specified resource, then use service endpoint.
* This will use Azure backbone network. Usually all azure services use internet.

![image](https://user-images.githubusercontent.com/38088886/111034242-8de4fb00-840c-11eb-9fe5-033fc26bf016.png)


![image](https://user-images.githubusercontent.com/38088886/111034381-3c893b80-840d-11eb-973a-b0d0b238a94d.png)

* Service endpoint needs to open in the virtual network level. meaning we are opening resources in the vnet to connect to certain Azure services.
* for instance Microsoft.storage, which means **we are opening all azure storage access**.

![image](https://user-images.githubusercontent.com/38088886/111034433-912cb680-840d-11eb-860a-cb2537d2077c.png)


**Private link (Private endpoint)**

* Unlike service endpoint, where we open for entire service, in private endpoint, we open for specific resource.
* It also create private ip address, so that it transfers data within network.

![image](https://user-images.githubusercontent.com/38088886/111034544-1e700b00-840e-11eb-988d-61a23bf4d0ec.png)

![image](https://user-images.githubusercontent.com/38088886/111034585-4f504000-840e-11eb-952b-a3b176df2fc2.png)

