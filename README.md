# wpm1
First Docker project with Wildfly PostgreSQL and MySQL Containers

1. Install the MySQL container

$ > cd mysql

$\mysql > docker build -t <your-mysql-image-name> .

The wildfly.sql script will populate the server with a simple
employee database table.

MySQL will expose port 3306

$\mysql > docker run -d -p 3306:3306 --name=<your-mysql-container-name> <your-mysql-image-name>


2. Install the PostgreSQL container

$ > cd postgres

$\postgres > docker build -t <your-postgres-image-name> .

The init.sql script will populate the server with a simple
employee database table.

PostgreSQL will expose port 5432

$\postgres > docker run -d -p 5432:5432 --name=<your-postgres-container-name> <your-mysql-image-name>


3. Install the Wildfly container

Note the host IP address
- if using Windows, docker-machine env <your-docker-machine-name>

Edit the deploy.properties file and update the IP address. Replace the default value 192.168.99.100 with your host IP address.

$ > cd wildfly

$\wildfly > docker build -t <your-wildfly-image-name> .

$\wildfly > docker run -d -p 8080:8080 -p 9990:9990 --name=<your-wildfly-container-name> <your-wildfly-image-name>

You should be able to hit the Wildfly splash screen at: <host-IP-address>:8080 (eg. http://192.168.99.100:8080)
And the Wildfly admin console at: <host-IP-address>:9990 (eg. http://192.168.99.100:9990)

$\wildfly > cli-config.sh (or cli-config.bat for windows)

This will use the Jboss CLI to run the commands in the commands.cli file (using the properties in the deploy.porperties file).
These automated steps are:
1. Connect to the Wildfly console
2. Deploy the MySQL and PostgreSQL JDBC drivers
3. Add the MySQL and PostgreSQL Datasources
4. Deploy the three applications: EmployeeApp.war, EmployeeApp_2.war and NumberQuiz.war


Access MySQL container and watch the employee table. Will have rows inserted from the EmployeeApp.

$ > docker exec -it <your-mysql-container-name> /bin/bash
# > mysql --user=wildfly --password=wildfly
mysql > use wildfly;
mysql > select * from employee;

Access PostgreSQL container and watch the employee table. Will have rows inserted from the EmployeeApp2.

$ > docker exec -it <your-postgresql-container-name> /bin/bash
# > mysql -U wildfly -d wildfly
wildfly=# > select * from employee;

Access applications at (replace 192.168.99.100 with your host IP adddress): 
192.168.99.100:8080/EmployeeApp
192.168.99.100:8080/EmployeeApp_2
192.168.99.100:8080/NumberQuiz





