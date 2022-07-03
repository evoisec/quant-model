# R Interfaces to C# shared libs and REST services

## The Overall R Interfaces and Package Management Architecture

click on the images to enlarge

![Data Model](https://github.com/evoisec/quant-model/blob/master/doc/rinterfaces2.jpg)

Also note, that wrapping and exposing legacy/existing C# Libs as microservices, can be automated (wholesale) through Code Generation of the “boiler plate” REST/MicroService API Interface Code and through the use of Interface Specification standards like Google Protocol Buffers (I have used ProtoBufs with various programming languages and essentially it is the successor of CORBA – a platform independent interface standard from the recent past). It is “boiler plate”, because whats unique is the business logic inside the C# lib, the exposure of the method signatures of the C# lib as microservice API is straightforward and always the same in terms of the approach to its implementation in code

https://developers.google.com/protocol-buffers 

here is an automated code generation framework based on the approach described above   - such approaches would allow the rapid and wholesale enablement of legacy C# libs as platform independent microservices – platform independent in terms of interface and platform independent in terms of the underlying OS (Windows, Linux, MacOS) and .NET CLR version if packaged as docker containers   

however the maintanence of the code generation farnework is not from a reliable vendor like Microsoft or Google and therefore can be discontinued at any time

https://www.codeproject.com/Articles/5280533/Driving-Development-of-Microservices-and-REST-APIs 

then, finally, the code generation of client stubs (ie the client side of the rest microservice interface code) can be automated as well (however not for the R language at present) by using this MS framework / tool 

https://github.com/Azure/autorest

And gRPC interfaces (platform and language independent) can be used directly from R without restrting to REST interface flavour 

Google gRPC and Google Protocol Buffers are available and supported for C#

https://www.grpc.io/docs/what-is-grpc/introduction/

https://www.grpc.io/about/#the-story-behind-grpc

https://developers.google.com/protocol-buffers/docs/csharptutorial

Google Protocol Buffers for R:

https://cran.r-project.org/web/packages/RProtoBuf/index.html

Google gRPC for R:

https://github.com/nfultz/grpc

see here example code of gRPC session/call staright from R to remote platform independent gRPC Server which can be e.g. C# lib exposed as gRPC Server

https://github.com/nfultz/grpc/blob/master/demo/helloserver.R


Recap of all Options for Platform Independent Interfaces:

| Interface - Commuinication Protocol | Message Payload Data  Encoding | Synchronous - Asynchronous |
| ------- | --- |  --- |
| Microservice HTTP REST | JSON | Sync, but can also be used to implement Async Callbacks |
| Microservice HTTP REST | Binary - e.g. Google Protocol Buffers | Sync, but can also be used to implement Async Callbacks |
| Microservice AMQP Message Bus | JSON | Sync and Async |
| Microservice AMQP Message Bus | Binary - e.g. Google Protocol Buffers | Sync and Async |
| Microservice gRPC | Binary - Google Protocol Buffers | Sync and Async |

click on the images to enlarge

![Data Model](https://github.com/evoisec/quant-model/blob/master/doc/rdiagram3.jpg)

## Interfaces to C# assembly libs

https://github.com/evoisec/quant-model/blob/master/quant-model.R

https://github.com/evoisec/quant-model/blob/master/quant-modles2/QuantLib.cs

click on the images to enlarge

![Data Model](https://github.com/evoisec/quant-model/blob/master/doc/rclr.jpg)

## REST Interface

Note, as part of the project, the code below can be encapsulated in a DSL interface/facade like the design of e.g.:

https://github.com/rest-client/rest-client

also beside httr, there is httr2 package for R

https://httr.r-lib.org/

https://httr2.r-lib.org/

the R code for interfacing with REST services and producing R objects (e.g. dataframe) from the returned data:

https://github.com/evoisec/quant-model/blob/master/rest-interface.R 

![Data Model](https://github.com/evoisec/quant-model/blob/master/doc/rest.jpg)


