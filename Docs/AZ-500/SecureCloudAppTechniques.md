
Defense-in-Depth
The aim is to protect data from unauthorised access. Here we follow zero trust model.
Nowdays, everyone is accessing either from home/anywhere/office, we need to verify always thier identity before grant them access to the services

CIA

Confidentiality
* provide only least privillege access

Integrity
* protect the data from unauthorised change either in rest or in motion. Technique used here is hash algorithm. using it creates fingerprint for the data which about to send by sender. Receiver generates the hash and verify it against sender's hash to see if the data is stolen/modified.

Availabilty
* should be always available either during natural disaster or Denial of service attack

![image](https://user-images.githubusercontent.com/38088886/133549956-1f742884-2655-4795-b43e-c30e1bf81fa9.png)


![image](https://user-images.githubusercontent.com/38088886/133741600-0f7d9ac9-5071-40ca-8340-f8dd961f80e4.png)


### Third party library vulnerablity test

https://cve.mitre.org/cve/search_cve_list.html


![image](https://user-images.githubusercontent.com/38088886/133916675-91954239-04fe-435a-aeb3-37bd8077c466.png)


Azure AD
![image](https://user-images.githubusercontent.com/38088886/135408855-68cce660-e240-436b-9250-701a910689c7.png)

Dynamic Group

![image](https://user-images.githubusercontent.com/38088886/135492120-2d95c6e5-efbd-4b7d-8374-08a910304728.png)

Adding users dynamically into Dynamic group

![image](https://user-images.githubusercontent.com/38088886/135492651-69802579-42fc-42bd-a34e-ff31bbec8b59.png)

Two types of role in Azure
Azure AD roles - for mananging Active directory
RBAC roles - for managing Azure resources

In Azure AD roles, there are two types : Active & Eligible

![image](https://user-images.githubusercontent.com/38088886/135563527-916fe958-02ab-4fad-8750-c7fec1e57a33.png)




