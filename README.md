# R Interfaces to C# shared libs and REST services

## The Overall R Interfaces and Package Management Architecture

click on the images to enlarge

![Data Model](https://github.com/evoisec/quant-model/blob/master/doc/rinterfaces.jpg)

Also note, that wrapping and exposing legacy/existing C# Libs as microservices, can be automated (wholesale) through Code Generation of the “boiler plate” REST/MicroService API Interface Code and through the use of Interface Specification standards like Google Protocol Buffers (I have used ProtoBufs with various programming languages and essentially it is the successor of CORBA – a platform independent interface standard from the recent past). It is “boiler plate”, because whats unique is the business logic inside the C# lib, the exposure of the method signatures of the C# lib as microservice API is straightforward and always the same in terms of the approach to its implementation in code

https://developers.google.com/protocol-buffers 

here is an automated code generation framework based on the approach described above   - such approaches would allow the rapid and wholesale enablement of legacy C# libs as platform independent microservices – platform independent in terms of interface and platform independent in terms of the underlying OS (Windows, Linux, MacOS) and .NET CLR version if packaged as docker containers   

https://www.codeproject.com/Articles/5280533/Driving-Development-of-Microservices-and-REST-APIs 

then, finally, the code generation of client stubs (ie the client side of the rest microservice interface code) can be automated as well (however probably not for the R langues) by using this MS framework / tool 

https://github.com/Azure/autorest


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

the R code for interfacing with REST services:

https://github.com/evoisec/quant-model/blob/master/rest-interface.R 

![Data Model](https://github.com/evoisec/quant-model/blob/master/doc/rest.jpg)


