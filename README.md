# dbproperty
It is always horrifying to go through the properties file every single time, scan through the required properties, modify them and then wait for the deployment to be successful after restarting it every time. This Microservice will eliminate the mundane need to reboot the instance.

Benefits: 1) It will display all the properties category-wise at a glance 2) Customer can dynamically modify all the properties without the need to restart every single time 3) Customers can also import or export different property files be it xml, yaml or property text file.

Code walkthrough link : https://github.com/Jaspreet79/dbproperty

Future Enhancements: 1) This Microservice can be integrated with other products with any product Instead of the Liquibase Scripts which we are using as of now for seeding data, we will build some capability to load these directly from the properties file during installation 3) The display of properties will also include recently modified ones and the properties which are more frequently modified for Customers
