
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

![image](https://user-images.githubusercontent.com/38088886/135570008-2d16de14-96b1-4d98-94f9-cc92ef49d189.png)



Grant admin permission will not require extra steps to authenticate


![image](https://user-images.githubusercontent.com/38088886/135569865-c175aec2-9ec9-4c56-97e5-20e344935e5c.png)

Azure Active Directory sign in and audit logs:

![image](https://user-images.githubusercontent.com/38088886/135961738-334229fc-4d11-49fb-9c9d-d5d324bb302b.png)


**Application level permission**

![image](https://user-images.githubusercontent.com/38088886/135961986-acfe52a7-957a-49a8-9bfe-4e592b920755.png)


![image](https://user-images.githubusercontent.com/38088886/135962152-12bf0edb-f2f9-4022-bdc2-7f55d7573896.png)

![image](https://user-images.githubusercontent.com/38088886/135962225-e00257d8-88c0-4ff9-b8a5-896891cbf0e1.png)


Assign owner to the existing application so that they can manage all aspects of the application

![image](https://user-images.githubusercontent.com/38088886/135962334-ad2ed0cc-90fa-409d-83f4-51e9bad7c8e1.png)

![image](https://user-images.githubusercontent.com/38088886/135962437-d4b3a3b0-8c30-4b0d-8324-adc856564273.png)

![image](https://user-images.githubusercontent.com/38088886/135962621-8786db97-5bf3-40b0-b83b-9a61e2b08925.png)

![image](https://user-images.githubusercontent.com/38088886/135962685-0d176cf6-cc1d-4ef4-9038-9212f12a4f85.png)

![image](https://user-images.githubusercontent.com/38088886/135962795-b6bfab52-e9ed-4ae5-b521-dec32560bdad.png)

Multi Factor Authentication(MFA)
![image](https://user-images.githubusercontent.com/38088886/136321972-cb16b2d5-c0ea-4304-b586-0ed8330630d1.png)

Condition access policy

![image](https://user-images.githubusercontent.com/38088886/136495098-4a093f19-75e4-48ae-bca4-5ae68aa3c402.png)

![image](https://user-images.githubusercontent.com/38088886/136495745-fc2e61b7-8db4-4768-91b3-0d7e09be6b7b.png)

Condition access policy - Report only

![image](https://user-images.githubusercontent.com/38088886/136496473-65ab55b7-758c-4a4e-8ddd-9215835aedce.png)

![image](https://user-images.githubusercontent.com/38088886/136496818-2956af19-475d-4e72-abf5-b8287c00c982.png)


Condition access policy - Conditions
![image](https://user-images.githubusercontent.com/38088886/136497364-07a414e0-6f83-4037-98e8-4d186edff77d.png)

Condition access policy - Location

![image](https://user-images.githubusercontent.com/38088886/136497987-7fa3dabe-5e8f-4e06-9fb2-812f4682373b.png)

Condition access policy - multiple policy

Policy of block will take precedence than Grant access.

Azure AD Identity protection
* This tool captures user sign in from atypical location/anonymous ip address/malware included in the url...

Notes on Azure AD Identity Protection
Azure Active Directory Identity Protection


This tool can be used by organizations to accomplish the following

* Automate the detection of any identity-based risks. These risks can also be remediated.

* It can also be used to investigate any risks to using data in the portal

* It can be used to expose risk detection data to third-party utilities for further analysis

The three key reports available for risk investigation are

* Risky users

* Risky sign-ins

* Risk detections

You need to have Azure AD Premium P2 licences to harness all the capabilities of Azure AD Identity Protection.

The below snapshot from the Microsoft documentation details the features of the product for each licence type


When it comes to Role-based access control

* Global Administrator - Here the role allows for full access to Identity Protection

* Security Administrator - Here the role allows for full access to Identity Protection, but the user can't reset the password for a user

* Security Operator - Here the role allows to view the Identity protection reports. But the role does not allow to configure or change policies, reset the password , or configure alerts




The tool can detect

**Leaked credentials** - If a user's credentials have fallen into the wrong hands and leaked on untrustworthy sites , then this can be detected by the tool.

**Sign-ins from anonymous IP addresses** - These are user sign-ins that have occurred from an IP address that has been identified as an anonymous proxy IP address.

**Impossible travel from atypical locations** - This happens when a user sign-in occurs from geographically distant locations, where at least one of the locations may also be atypical for the user, given past behavior.

**Sign-in from unfamiliar locations** - This processes uses the prior sign-ins of the user to detect unusual locations for new sign-ins from the user.

**Sign-ins from infected devices** - This identifies any sign-ins that happens from devices infected with malware,

**Sign-ins from IP addresses with suspicious activity** - This identifies the IP addresses from which a high number of failed sign-in attempts happens across multiple user accounts over a short period of time.


Access Reivew
This will help how user has been utilised the assigned group/resource...

Go to Identity Governance and set up access reviews
![image](https://user-images.githubusercontent.com/38088886/136894586-cd75bb83-d39d-4e58-b1e4-5b06ad345832.png)

What to review Groups or Applicatoins?

![image](https://user-images.githubusercontent.com/38088886/136894679-60d41930-197c-4fea-9e2e-d1923491caca.png)

Select which team/ group

![image](https://user-images.githubusercontent.com/38088886/136894767-9d83c474-ccef-42e6-90ec-10de24278aca.png)

Select review scope

![image](https://user-images.githubusercontent.com/38088886/136894798-e4f91930-0715-4d6d-aeb8-0c59ecfa7b0f.png)

who is going to review

This reviewer needs to have Azure AD premium licence... Global and user admin can also perform the same without premium licence

![image](https://user-images.githubusercontent.com/38088886/136894925-1f353008-1edd-43e0-85c7-582234c3d6ae.png)

Select recurrence of the review
![image](https://user-images.githubusercontent.com/38088886/136895109-f89706d9-9408-472e-8723-fbd4513b23bf.png)

What needs to review

![image](https://user-images.githubusercontent.com/38088886/136895237-f9171292-4847-425d-bcd4-6a783abe6562.png)

Finally give the name for the review

![image](https://user-images.githubusercontent.com/38088886/136895339-061db6e4-10bd-46f8-97b4-d14ea0b5d5a3.png)

Finalising Review






















