use wildfly;

CREATE TABLE employee
(
id INTEGER AUTO_INCREMENT,
first_name TEXT,
last_name TEXT,
salary INTEGER,
PRIMARY KEY (id)
);

INSERT INTO employee(first_name, last_name, salary) VALUES ('Bob', 'Sideshow', 15000);
INSERT INTO employee(first_name, last_name, salary) VALUES ('Bart', 'Simpson', 465000);
