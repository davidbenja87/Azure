
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

Active: They can perform operation since it is assigined.

Eligible: They can't perform any operation until users takes up to privildeged identity managment

![image](https://user-images.githubusercontent.com/38088886/135563784-d41b6a91-b66a-47bf-ab92-a1cd88851070.png)


Privilidged identity managment is for shorter period.. maximum 1 hour.

![image](https://user-images.githubusercontent.com/38088886/135563911-2a4a2103-0cd0-4fd1-ab61-c5ba289590dc.png)


Password reset

![image](https://user-images.githubusercontent.com/38088886/135564285-d94c75ca-54ed-47fa-8ea7-68c272fe37fc.png)

Azure AD Group owner

adding owner to the specific groups, gives the ability to add members to that group instead of Azure AD roles which gives full access to other groups as well.

![image](https://user-images.githubusercontent.com/38088886/135564679-690245ba-df76-4603-9cf5-cf0aa8025db8.png)


Invite guest users

![image](https://user-images.githubusercontent.com/38088886/135566011-01c79144-b945-4be4-963c-53a4e198597a.png)


![image](https://user-images.githubusercontent.com/38088886/135566136-6ecf7fd9-309b-44f5-8bb7-6e318a95cccd.png)

Only with below role can send invitation if anyone in the org is not selected

![image](https://user-images.githubusercontent.com/38088886/135566578-6d319d67-e576-421d-9911-4227ffe72337.png)


Restore deleted users/group

![image](https://user-images.githubusercontent.com/38088886/135566768-37909d70-ffda-418a-b494-2019bf489608.png)


![image](https://user-images.githubusercontent.com/38088886/135566935-ccfa6635-07ad-42ae-9800-6e460291b689.png)

ONLY office 365 groups can be restored

![image](https://user-images.githubusercontent.com/38088886/135567348-49669419-d01a-41b1-b6c6-56699cb37766.png)


Application Registration

After registering api, client id and client secret.

Need to do api permission.


![image](https://user-images.githubusercontent.com/38088886/135569053-601c31a1-ef02-4198-b361-ef9718b17985.png)


![image](https://user-images.githubusercontent.com/38088886/135569128-376eb24d-ef82-4ea3-a2dc-1bdf92f423e6.png)


![image](https://user-images.githubusercontent.com/38088886/135569190-d8865707-18b9-4bea-9733-b04dbacbeb4f.png)

Delegated permission works for user sign in kind of application

Application permission works for application to sign in

![image](https://user-images.githubusercontent.com/38088886/135569393-3a970bc3-4f56-4022-be51-436c049f5344.png)

Grant admin permission will not require extra steps to authenticate


![image](https://user-images.githubusercontent.com/38088886/135569865-c175aec2-9ec9-4c56-97e5-20e344935e5c.png)










