# A JDBC client Program / Project

**This is a jdbc client project from my early days as a Computer Science student**

_This programm was created for the fifth semester class Database Management Systems 
and is the one of the final projects for the class_

> #### Description of project
>
>>A jdbc application that runs queries in pgAdmin to simulate the functionality of the UK Ministry of Transport's database using Apache Spark RDD for query implementation.

> #### Impementation and Instructions of project
>
> 1. Tip 1: I record the second runtime in order for the buffers to initialize 
> 2. Tip 2: I use the EXPLAIN command for the execution plan 
> 3. Tip 3: I run the queries in sequence so that the changes to buffers, parallelism, etc. continue to be active for the next query
> 4. Insert the data from the given dataset using proper queries and the command VACUUM FULL 
> 5. Implement some functionality using proper queries:
>> a. Find out how many accidents happened per road category (road class)<br/>
>> b. What are the number of accidents per road category and per vehicle category (accident severity)<br/>
>> c. Find out how many accidents happened in an urban area before 1/1/2010 and the driver's age category is 26-35<br/>
>> d. Find out how many accidents occurred in a rural area in 2012 and the driver age range is 36-45<br/>
>> e. Find the manufacturer of the vehicle that has the most accidents between 2010 and 2012, the age of the drivers is 26-35 and the road is A<br/>
> 6. Tip 4: Configure PostgreSQL to use more buffer than your computer's RAM with the command ALTER SYSTEM SET shared_buffers TO '256MB';
> 7. Run queries again
> 8. Tip 5: Configure PostgreSQL to use all the processing power of your computer with the command max_parallel_workers_per_gather
> 9. Create the appropriate indexes in the db to run the queries above faster
> 10. Break the dataset into shards / partitions using inheritance between tables using range method
> 11. Connect databse with JDBC client in Java using the proper library
> 12. Write a Java console application that will calculate some statistics, execute a query in Spark and will use the partitioning

> #### About this project
>
> - There is a predetermined dataset used for this project, from the UK Road Safety: Traffic Accidents and Vehicles
> - The comments to make the code understandable, are within the archives
> - This project was written in Eclipse Java IDE
> - This repository was created to show the variety of the work I did and experience I gained as a student
>

