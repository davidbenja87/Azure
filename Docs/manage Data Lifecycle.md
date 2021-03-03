Life cycle managment of files in Blob stroage

![image](https://user-images.githubusercontent.com/38088886/109761513-1632f700-7be8-11eb-9ccf-4c2fe1059943.png)

File moved to Archive tier, will not be directly accessible. It needs to move back to either hot/cool tier in order to access it.
For moving the file back to hot/cool will take several hours

Feature under blob service

![image](https://user-images.githubusercontent.com/38088886/109763042-68284c80-7be9-11eb-94aa-27bc441420c7.png)

Add rule to handle life cycle of stroage account

![image](https://user-images.githubusercontent.com/38088886/109763145-94dc6400-7be9-11eb-8484-1e20eab9154d.png)

Filter set - apply lifecycle specfic folder in the container if it requires

![image](https://user-images.githubusercontent.com/38088886/109763276-c5240280-7be9-11eb-8b64-dcdb0f62af48.png)


We can implement life cycle managment via portal,powershll, arm template. Life cycle managment will not reflect immediately, it need to wait for next cycle
