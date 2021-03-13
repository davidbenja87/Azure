
![image](https://user-images.githubusercontent.com/38088886/111032031-5d985f00-8402-11eb-8394-5d1739c27d23.png)

Real time streaming tools
Ingestion tool
![image](https://user-images.githubusercontent.com/38088886/111032215-0941af00-8403-11eb-8204-e8c83a28ea99.png)

Processing tool

![image](https://user-images.githubusercontent.com/38088886/111032319-810fd980-8403-11eb-98e9-19c0cc8243f2.png)

Analytical data store

![image](https://user-images.githubusercontent.com/38088886/111032340-95ec6d00-8403-11eb-95c8-4837d0491632.png)

Stream analytics data flow

![image](https://user-images.githubusercontent.com/38088886/111032427-1743ff80-8404-11eb-9647-40822a9bbd64.png)


What is windows function?
Stream processing, we receive data as events with timestamp. To process it, we need to create bucket for doing some operations.

![image](https://user-images.githubusercontent.com/38088886/111032635-22e3f600-8405-11eb-8c8a-5a0c5dcf67ae.png)

**Tumbling window**

![image](https://user-images.githubusercontent.com/38088886/111032767-bfa69380-8405-11eb-9d0a-9a95b72948e6.png)

**Hopping window**

![image](https://user-images.githubusercontent.com/38088886/111032875-4ce9e800-8406-11eb-9f2a-40c744a4bf40.png)

**Slidding window**

* It creates bucket when an event happened and goes to the specified time. Next bucket will be created when the next event happens

![image](https://user-images.githubusercontent.com/38088886/111032997-f29d5700-8406-11eb-99bb-79cbccc0b6f0.png)


**Session window**
* bucket will not overlap
![image](https://user-images.githubusercontent.com/38088886/111033210-f2ea2200-8407-11eb-8d60-95002fa54a0b.png)


