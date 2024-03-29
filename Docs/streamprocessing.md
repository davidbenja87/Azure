
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


# Window function
What is windows function?
Stream processing, we receive data as events with timestamp. To process it, we need to create bucket for doing some operations.

![image](https://user-images.githubusercontent.com/38088886/111032635-22e3f600-8405-11eb-8c8a-5a0c5dcf67ae.png)

## Tumbling window

![image](https://user-images.githubusercontent.com/38088886/111256094-37480e80-8610-11eb-8fd3-d1717bf1f0bc.png)


![image](https://user-images.githubusercontent.com/38088886/111032767-bfa69380-8405-11eb-9d0a-9a95b72948e6.png)

## Hopping window

![image](https://user-images.githubusercontent.com/38088886/111256264-9a39a580-8610-11eb-800a-1330aca62308.png)


![image](https://user-images.githubusercontent.com/38088886/111032875-4ce9e800-8406-11eb-9f2a-40c744a4bf40.png)

## Slidding window

* It creates bucket when an event happened and goes to the specified time. Next bucket will be created when the next event happens

![image](https://user-images.githubusercontent.com/38088886/111256420-f3093e00-8610-11eb-8eaa-5ccd7e3f0f8f.png)


![image](https://user-images.githubusercontent.com/38088886/111032997-f29d5700-8406-11eb-99bb-79cbccc0b6f0.png)


## Session window
* bucket will not overlap
![image](https://user-images.githubusercontent.com/38088886/111033210-f2ea2200-8407-11eb-8d60-95002fa54a0b.png)


# Real time Architechture
simple Archtiecture

![image](https://user-images.githubusercontent.com/38088886/111033280-5411f580-8408-11eb-8651-46fc834baf31.png)

Database as serving layer

![image](https://user-images.githubusercontent.com/38088886/111033315-8cb1cf00-8408-11eb-8867-fb33906f7a97.png)

Sending Alert

![image](https://user-images.githubusercontent.com/38088886/111033357-c71b6c00-8408-11eb-8393-0da067482e73.png)

Realtime for applications

![image](https://user-images.githubusercontent.com/38088886/111033415-00ec7280-8409-11eb-9934-db07f92cc05c.png)

Reference data

![image](https://user-images.githubusercontent.com/38088886/111033474-4a3cc200-8409-11eb-9554-c24539ea6c28.png)


Lambda Architechture

* Combining Both Batch and Stream data

![image](https://user-images.githubusercontent.com/38088886/111033622-08f8e200-840a-11eb-9b53-796e1c66635d.png)

tools for Lambda

![image](https://user-images.githubusercontent.com/38088886/111033688-612fe400-840a-11eb-98b9-b7940a4e0267.png)

![image](https://user-images.githubusercontent.com/38088886/111033714-86bced80-840a-11eb-9b09-1a6fe057f984.png)

![image](https://user-images.githubusercontent.com/38088886/111033784-ce437980-840a-11eb-9691-332f9a9772fa.png)


# Query parallelisation

[more info on query parallelisation](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-parallelization)

# Azure pair region

![image](https://user-images.githubusercontent.com/38088886/111622988-be001580-87e1-11eb-9de3-8e38a88c4abe.png)

[Paired Region](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-job-reliability)


