MariaDB [(none)]> use database csd2204s18;
ERROR 1049 (42000): Unknown database 'database'
MariaDB [(none)]> showdatabases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'showdatabases' at line 1
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| grade              |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.00 sec)

MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show table customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer' at line 1
MariaDB [csd2204s18]> show  customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer' at line 1
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.01 sec)

MariaDB [csd2204s18]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custid     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.11 sec)

MariaDB [csd2204s18]> insert into customer values('CO1','Ashley','WDC','321200','34');
Query OK, 1 row affected (0.16 sec)

MariaDB [csd2204s18]> insert into customer values('CO2','Bob marley','BM','100100','34');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into customer values('C03','Cherlies Theron','new york','120134','20');
Query OK, 1 row affected (0.02 sec)

MariaDB [csd2204s18]> insert into customer values('C04','DJ','Brazil','341020','25');
Query OK, 1 row affected (0.02 sec)

MariaDB [csd2204s18]> drop customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer' at line 1
MariaDB [csd2204s18]> drop table customer;
Query OK, 0 rows affected (0.16 sec)

MariaDB [csd2204s18]> create table customer(
    -> cusId varchar(5) primary key,
    -> name varchar(50),
    -> nickname varchar(10),
    -> city varchar(20),
    -> postalCode varchar(10),
    -> age integer(3));
Query OK, 0 rows affected (0.27 sec)

MariaDB [csd2204s18]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| cusId      | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into customer values('CO1','Ashley','ash','WDC','321200','34');
Query OK, 1 row affected (0.01 sec)

MariaDB [csd2204s18]> insert into customer values('C02','Bob marley','BM','Toronto','100100','23');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into customer values('C03','Charlies Theron','cher','New York','120134','20');
Query OK, 1 row affected (0.01 sec)

MariaDB [csd2204s18]> insert into customer values('C04','Denial Jack','DJ','Brazil','341020','25');
Query OK, 1 row affected (0.02 sec)

MariaDB [csd2204s18]> insert into customer values('C05','Donna Newman','new','Toronto','130120','50');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into customer values('C06','Eston M.','M.','Toronto','201023','65');
Query OK, 1 row affected (0.01 sec)

MariaDB [csd2204s18]> insert into customer values('C07','Bobby Chacko','chac','New York','320300','70');
Query OK, 1 row affected (0.02 sec)

MariaDB [csd2204s18]> insert into customer values('C08','Ashko Charles','AK','USA','421044','72');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into customer values('C09','Tony Specie','Specie','GTA','418921','62');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into customer values('C10','Jack Sp','Sparrow','New Jersey','102301','35');
Query OK, 1 row affected (0.02 sec)

MariaDB [csd2204s18]> select * table customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'table customer' at line 1
MariaDB [csd2204s18]> select * from table customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'table customer' at line 1
MariaDB [csd2204s18]> select * from customer;
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO1   | Ashley          | ash      | WDC        | 321200     |   34 |
+-------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update customer set cusId='C01' where name='Ashley';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select * from customer;
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C01   | Ashley          | ash      | WDC        | 321200     |   34 |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+-------+-----------------+----------+------------+------------+------+
10 rows in set (0.02 sec)

MariaDB [csd2204s18]> select name,nickname from customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| Ashley          | ash      |
| Bob marley      | BM       |
| Charlies Theron | cher     |
| Denial Jack     | DJ       |
| Donna Newman    | new      |
| Eston M.        | M.       |
| Bobby Chacko    | chac     |
| Ashko Charles   | AK       |
| Tony Specie     | Specie   |
| Jack Sp         | Sparrow  |
+-----------------+----------+
10 rows in set (0.01 sec)

MariaDB [csd2204s18]> select city,postalCode form customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer' at line 1
MariaDB [csd2204s18]> select city,postalCode from customer;
+------------+------------+
| city       | postalCode |
+------------+------------+
| WDC        | 321200     |
| Toronto    | 100100     |
| New York   | 120134     |
| Brazil     | 341020     |
| Toronto    | 130120     |
| Toronto    | 201023     |
| New York   | 320300     |
| USA        | 421044     |
| GTA        | 418921     |
| New Jersey | 102301     |
+------------+------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name='Ashley';
+-------+--------+----------+------+------------+------+
| cusId | name   | nickname | city | postalCode | age  |
+-------+--------+----------+------+------------+------+
| C01   | Ashley | ash      | WDC  | 321200     |   34 |
+-------+--------+----------+------+------------+------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> select * from customer where nickname='AK';
+-------+---------------+----------+------+------------+------+
| cusId | name          | nickname | city | postalCode | age  |
+-------+---------------+----------+------+------------+------+
| C08   | Ashko Charles | AK       | USA  | 421044     |   72 |
+-------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where nickname='AK';
+---------------+------+
| name          | city |
+---------------+------+
| Ashko Charles | USA  |
+---------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where name='Eston M.';
+----------+---------+
| name     | city    |
+----------+---------+
| Eston M. | Toronto |
+----------+---------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> Select name,city from customer where city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Bob marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> Select name,city from customer where city!='Toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Charlies Theron | New York   |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New York   |
| Ashko Charles   | USA        |
| Tony Specie     | GTA        |
| Jack Sp         | New Jersey |
+-----------------+------------+
7 rows in set (0.01 sec)

MariaDB [csd2204s18]> Select name,city from customer where city<>'Toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Charlies Theron | New York   |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New York   |
| Ashko Charles   | USA        |
| Tony Specie     | GTA        |
| Jack Sp         | New Jersey |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> Select * from customer where age='50';
+-------+--------------+----------+---------+------------+------+
| cusId | name         | nickname | city    | postalCode | age  |
+-------+--------------+----------+---------+------------+------+
| C05   | Donna Newman | new      | Toronto | 130120     |   50 |
+-------+--------------+----------+---------+------------+------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> Select * from customer where age>'50';
+-------+---------------+----------+----------+------------+------+
| cusId | name          | nickname | city     | postalCode | age  |
+-------+---------------+----------+----------+------------+------+
| C06   | Eston M.      | M.       | Toronto  | 201023     |   65 |
| C07   | Bobby Chacko  | chac     | New York | 320300     |   70 |
| C08   | Ashko Charles | AK       | USA      | 421044     |   72 |
| C09   | Tony Specie   | Specie   | GTA      | 418921     |   62 |
+-------+---------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> Select * from customer where age<'50';
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C01   | Ashley          | ash      | WDC        | 321200     |   34 |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+-------+-----------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> Select * from customer where name>'Ashley';
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+-------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [csd2204s18]> Select * from customer where name<'Donna Newman';
+-------+-----------------+----------+----------+------------+------+
| cusId | name            | nickname | city     | postalCode | age  |
+-------+-----------------+----------+----------+------------+------+
| C01   | Ashley          | ash      | WDC      | 321200     |   34 |
| C02   | Bob marley      | BM       | Toronto  | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C07   | Bobby Chacko    | chac     | New York | 320300     |   70 |
| C08   | Ashko Charles   | AK       | USA      | 421044     |   72 |
+-------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where name='ashley' or city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | WDC     |
| Bob marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where name='ashley' || city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | WDC     |
| Bob marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where city='Toronto' or 'New York';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Bob marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
3 rows in set, 4 warnings (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where city='Toronto' and age>'50';
+----------+---------+
| name     | city    |
+----------+---------+
| Eston M. | Toronto |
+----------+---------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select name,city,age from customer where city='Toronto' and age>'50';
+----------+---------+------+
| name     | city    | age  |
+----------+---------+------+
| Eston M. | Toronto |   65 |
+----------+---------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select name,city,age from customer where city='Toronto' && age>'50';
+----------+---------+------+
| name     | city    | age  |
+----------+---------+------+
| Eston M. | Toronto |   65 |
+----------+---------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city='Toronto';
+-------+--------------+----------+---------+------------+------+
| cusId | name         | nickname | city    | postalCode | age  |
+-------+--------------+----------+---------+------------+------+
| C02   | Bob marley   | BM       | Toronto | 100100     |   23 |
| C05   | Donna Newman | new      | Toronto | 130120     |   50 |
| C06   | Eston M.     | M.       | Toronto | 201023     |   65 |
+-------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) from customer where city='Toronto';
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.05 sec)

MariaDB [csd2204s18]> select count(*) "number of customers in Toronto" from customer where city='Toronto';
+--------------------------------+
| number of customers in Toronto |
+--------------------------------+
|                              3 |
+--------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) "number of customers with age more than 50" from customer where age>50;
+-------------------------------------------+
| number of customers with age more than 50 |
+-------------------------------------------+
|                                         4 |
+-------------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) "number of customers with age more than 50" from customer where age<50;
+-------------------------------------------+
| number of customers with age more than 50 |
+-------------------------------------------+
|                                         5 |
+-------------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) "number of customers having age between 30 to 70" from customer where age>30 and <70;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '<70' at line 1
MariaDB [csd2204s18]> select count(*) "number of customers having age between 30 to 70" from customer where age>30 and age <70;
+-------------------------------------------------+
| number of customers having age between 30 to 70 |
+-------------------------------------------------+
|                                               5 |
+-------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * "number of customers having age between 30 to 70" from customer where age>30 and age <70;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '"number of customers having age between 30 to 70" from customer where age>30 and' at line 1
MariaDB [csd2204s18]> select * from customer where age>30 and age <70;
+-------+--------------+----------+------------+------------+------+
| cusId | name         | nickname | city       | postalCode | age  |
+-------+--------------+----------+------------+------------+------+
| C01   | Ashley       | ash      | WDC        | 321200     |   34 |
| C05   | Donna Newman | new      | Toronto    | 130120     |   50 |
| C06   | Eston M.     | M.       | Toronto    | 201023     |   65 |
| C09   | Tony Specie  | Specie   | GTA        | 418921     |   62 |
| C10   | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+-------+--------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age between 30 and 70;
+-------+--------------+----------+------------+------------+------+
| cusId | name         | nickname | city       | postalCode | age  |
+-------+--------------+----------+------------+------------+------+
| C01   | Ashley       | ash      | WDC        | 321200     |   34 |
| C05   | Donna Newman | new      | Toronto    | 130120     |   50 |
| C06   | Eston M.     | M.       | Toronto    | 201023     |   65 |
| C07   | Bobby Chacko | chac     | New York   | 320300     |   70 |
| C09   | Tony Specie  | Specie   | GTA        | 418921     |   62 |
| C10   | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+-------+--------------+----------+------------+------------+------+
6 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from customer where age not between 30 and 70;
+-------+-----------------+----------+----------+------------+------+
| cusId | name            | nickname | city     | postalCode | age  |
+-------+-----------------+----------+----------+------------+------+
| C02   | Bob marley      | BM       | Toronto  | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C08   | Ashko Charles   | AK       | USA      | 421044     |   72 |
+-------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,max(age) from customer ;
+--------+----------+
| name   | max(age) |
+--------+----------+
| Ashley |       72 |
+--------+----------+
1 row in set (0.05 sec)

MariaDB [csd2204s18]> select max(age) from customer ;
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age=72;
+-------+---------------+----------+------+------------+------+
| cusId | name          | nickname | city | postalCode | age  |
+-------+---------------+----------+------+------------+------+
| C08   | Ashko Charles | AK       | USA  | 421044     |   72 |
+-------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age=max(age);
ERROR 1111 (HY000): Invalid use of group function
MariaDB [csd2204s18]> select min(age) from customer ;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select avg(age) from customer ;
+----------+
| avg(age) |
+----------+
|  45.6000 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> slect * from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'slect * from customer' at line 1
MariaDB [csd2204s18]> select * from customer;
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C01   | Ashley          | ash      | WDC        | 321200     |   34 |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+-------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name="B";
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name =B*;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [csd2204s18]> select * from customer where name like 'B*';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name ='B%';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name like 'B%';
+-------+--------------+----------+----------+------------+------+
| cusId | name         | nickname | city     | postalCode | age  |
+-------+--------------+----------+----------+------------+------+
| C02   | Bob marley   | BM       | Toronto  | 100100     |   23 |
| C07   | Bobby Chacko | chac     | New York | 320300     |   70 |
+-------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name like '%n';
+-------+-----------------+----------+----------+------------+------+
| cusId | name            | nickname | city     | postalCode | age  |
+-------+-----------------+----------+----------+------------+------+
| C03   | Charlies Theron | cher     | New York | 120134     |   20 |
| C05   | Donna Newman    | new      | Toronto  | 130120     |   50 |
+-------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city like 'New York' and 'New Jersey';
Empty set, 4 warnings (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city like 'New %';
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+-------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city like 'New York' || 'New Jersey';
+-------+-----------------+----------+----------+------------+------+
| cusId | name            | nickname | city     | postalCode | age  |
+-------+-----------------+----------+----------+------------+------+
| C03   | Charlies Theron | cher     | New York | 120134     |   20 |
| C07   | Bobby Chacko    | chac     | New York | 320300     |   70 |
+-------+-----------------+----------+----------+------------+------+
2 rows in set, 4 warnings (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name like '--n%';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name like '__n%';
+-------+--------------+----------+---------+------------+------+
| cusId | name         | nickname | city    | postalCode | age  |
+-------+--------------+----------+---------+------------+------+
| C04   | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05   | Donna Newman | new      | Toronto | 130120     |   50 |
| C09   | Tony Specie  | Specie   | GTA     | 418921     |   62 |
+-------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name like '__n_a%';
+-------+--------------+----------+---------+------------+------+
| cusId | name         | nickname | city    | postalCode | age  |
+-------+--------------+----------+---------+------------+------+
| C04   | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05   | Donna Newman | new      | Toronto | 130120     |   50 |
+-------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer limit 4;
+-------+-----------------+----------+----------+------------+------+
| cusId | name            | nickname | city     | postalCode | age  |
+-------+-----------------+----------+----------+------------+------+
| C01   | Ashley          | ash      | WDC      | 321200     |   34 |
| C02   | Bob marley      | BM       | Toronto  | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
+-------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer limit 2;
+-------+------------+----------+---------+------------+------+
| cusId | name       | nickname | city    | postalCode | age  |
+-------+------------+----------+---------+------------+------+
| C01   | Ashley     | ash      | WDC     | 321200     |   34 |
| C02   | Bob marley | BM       | Toronto | 100100     |   23 |
+-------+------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer  with age 20,25,65,72;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'age 20,25,65,72' at line 1
MariaDB [csd2204s18]> select * from customer  where age= 20 or 25 or 65 or 72;
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C01   | Ashley          | ash      | WDC        | 321200     |   34 |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+-------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer  where age IN (20,25,65,72);
+-------+-----------------+----------+----------+------------+------+
| cusId | name            | nickname | city     | postalCode | age  |
+-------+-----------------+----------+----------+------------+------+
| C03   | Charlies Theron | cher     | New York | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C06   | Eston M.        | M.       | Toronto  | 201023     |   65 |
| C08   | Ashko Charles   | AK       | USA      | 421044     |   72 |
+-------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer  where age not IN (20,25,65,72);
+-------+--------------+----------+------------+------------+------+
| cusId | name         | nickname | city       | postalCode | age  |
+-------+--------------+----------+------------+------------+------+
| C01   | Ashley       | ash      | WDC        | 321200     |   34 |
| C02   | Bob marley   | BM       | Toronto    | 100100     |   23 |
| C05   | Donna Newman | new      | Toronto    | 130120     |   50 |
| C07   | Bobby Chacko | chac     | New York   | 320300     |   70 |
| C09   | Tony Specie  | Specie   | GTA        | 418921     |   62 |
| C10   | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+-------+--------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer  where city IN ('Toronto', 'GTA', 'USA', 'WDC');
+-------+---------------+----------+---------+------------+------+
| cusId | name          | nickname | city    | postalCode | age  |
+-------+---------------+----------+---------+------------+------+
| C01   | Ashley        | ash      | WDC     | 321200     |   34 |
| C02   | Bob marley    | BM       | Toronto | 100100     |   23 |
| C05   | Donna Newman  | new      | Toronto | 130120     |   50 |
| C06   | Eston M.      | M.       | Toronto | 201023     |   65 |
| C08   | Ashko Charles | AK       | USA     | 421044     |   72 |
| C09   | Tony Specie   | Specie   | GTA     | 418921     |   62 |
+-------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer  where city IN ('N%', 'G%', 'G%', 'N%');
Empty set (0.00 sec)

MariaDB [csd2204s18]> select distinct(city) 'unique cities' from customer;
+---------------+
| unique cities |
+---------------+
| WDC           |
| Toronto       |
| New York      |
| Brazil        |
| USA           |
| GTA           |
| New Jersey    |
+---------------+
7 rows in set (0.02 sec)

MariaDB [csd2204s18]> select distinct(city) from customer;
+------------+
| city       |
+------------+
| WDC        |
| Toronto    |
| New York   |
| Brazil     |
| USA        |
| GTA        |
| New Jersey |
+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(distinct(city)) from customer;
+-----------------------+
| count(distinct(city)) |
+-----------------------+
|                     7 |
+-----------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by name;
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01   | Ashley          | ash      | WDC        | 321200     |   34 |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
+-------+-----------------+----------+------------+------------+------+
10 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from customer order by name desc;
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C01   | Ashley          | ash      | WDC        | 321200     |   34 |
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 |
+-------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by name asce;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'asce' at line 1
MariaDB [csd2204s18]> select * from customer order by name asc;
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01   | Ashley          | ash      | WDC        | 321200     |   34 |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
+-------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age asc;
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C01   | Ashley          | ash      | WDC        | 321200     |   34 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 |
+-------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age desc;
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C01   | Ashley          | ash      | WDC        | 321200     |   34 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
+-------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age desc limit 1;
+-------+---------------+----------+------+------------+------+
| cusId | name          | nickname | city | postalCode | age  |
+-------+---------------+----------+------+------------+------+
| C08   | Ashko Charles | AK       | USA  | 421044     |   72 |
+-------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age desc limit 2;
+-------+---------------+----------+----------+------------+------+
| cusId | name          | nickname | city     | postalCode | age  |
+-------+---------------+----------+----------+------------+------+
| C08   | Ashko Charles | AK       | USA      | 421044     |   72 |
| C07   | Bobby Chacko  | chac     | New York | 320300     |   70 |
+-------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age desc limit 2 , age asc;
ERROR 1327 (42000): Undeclared variable: age
MariaDB [csd2204s18]> select * from customer order by age desc limit 2 ,  asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'asc' at line 1
MariaDB [csd2204s18]> select * from (select * from customer order by age desc limit 2) order by age asc limit 1;
ERROR 1248 (42000): Every derived table must have its own alias
MariaDB [csd2204s18]> select * from (select * from customer order by age desc limit 2)as t order by age asc limit 1;
+-------+--------------+----------+----------+------------+------+
| cusId | name         | nickname | city     | postalCode | age  |
+-------+--------------+----------+----------+------------+------+
| C07   | Bobby Chacko | chac     | New York | 320300     |   70 |
+-------+--------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by age desc limit 5)as t order by age asc limit 1;
+-------+--------------+----------+---------+------------+------+
| cusId | name         | nickname | city    | postalCode | age  |
+-------+--------------+----------+---------+------------+------+
| C05   | Donna Newman | new      | Toronto | 130120     |   50 |
+-------+--------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by age asc limit 2)as t order by age desc limit 1;
+-------+------------+----------+---------+------------+------+
| cusId | name       | nickname | city    | postalCode | age  |
+-------+------------+----------+---------+------------+------+
| C02   | Bob marley | BM       | Toronto | 100100     |   23 |
+-------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select max(*100) from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '*100) from customer' at line 1
MariaDB [csd2204s18]> select max(age)*100 from customer;
+--------------+
| max(age)*100 |
+--------------+
|         7200 |
+--------------+
1 row in set (0.01 sec)

MariaDB [csd2204s18]> select max(age)+10*20/2from customer;
ERROR 1054 (42S22): Unknown column 'age' in 'field list'
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> select max(age)+10*20/2 from customer;
+------------------+
| max(age)+10*20/2 |
+------------------+
|         172.0000 |
+------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> exit
