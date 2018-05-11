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
7 rows in set (0.01 sec)

MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.05 sec)

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
6 rows in set (0.11 sec)

MariaDB [csd2204s18]> create table persons(
    -> ID integer(3),
    -> LastName varchar(225) NOT NULL.
    -> LastName varchar(225) NOT NULL.;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '.
LastName varchar(225) NOT NULL.' at line 3
MariaDB [csd2204s18]> create table persons(
    -> ID integer(3),
    -> LastName varchar(225) NOT NULL,
    -> FirstName varchar(255)OT NULL,
    -> Age integer(3),
    -> CONSTRAINT PK_Persons PRIMARY KEY(ID,LastName);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'NULL,
Age integer(3),
CONSTRAINT PK_Persons PRIMARY KEY(ID,LastName)' at line 4
MariaDB [csd2204s18]> create table Persons(
    -> ID integer(3),
    -> LastName varchar(255) NOT NULL,
    -> FirstName varchar(255)NOT NULL,
    -> Age integer(3),
    -> CONSTRAINT PK_Person PRIMARY KEY(ID,LastName);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 6
MariaDB [csd2204s18]> create table Persons(
    -> ID integer(3),
    -> FirstName varchar(255)OT NULL,
    -> create table Persons(
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'NULL,
create table Persons(' at line 3
MariaDB [csd2204s18]> create table Persons(
    -> ID integer(3),
    -> FirstName varchar(255) NOT NULL,
    -> LastName varchar(255) NOT NULL,
    -> Age integer(3),
    -> CONSTRAINT PK_Persons PRIMARY KEY(ID,LastName);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 6
MariaDB [csd2204s18]> create table persons(
    -> ID integer(3),
    -> LastName varchar(225) NOT NULL,
    -> FirstName varchar(255) NOT NULL,;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 4
MariaDB [csd2204s18]> create table persons(
    -> Age integer(3),
    -> LastName varchar(255) NOT NULL,
    -> FirstName varchar(255) NOT NULL,
    -> ID integer(3),
    -> CONSTRAINT PK_Person PRIMARY KEY(ID,LastName)
    -> );
Query OK, 0 rows affected (0.36 sec)

MariaDB [csd2204s18]> show index from Persons;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LastName    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table Orders(
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> ID integer(3),
    -> PRIMARY KEY(OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY(ID) REFERENCES Persons(ID)
    -> );
Query OK, 0 rows affected (0.30 sec)

MariaDB [csd2204s18]> show create table Orders;
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                    |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Orders | CREATE TABLE `orders` (
  `OrderID` int(3) NOT NULL,
  `OrderNumber` int(3) NOT NULL,
  `ID` int(3) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FK_PersonOrder` (`ID`),
  CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`ID`) REFERENCES `persons` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> show index from orders;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | OrderID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PersonOrder |            1 | ID          | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

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

MariaDB [csd2204s18]> create table c1 as select * from customer;
Query OK, 10 rows affected (0.22 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| cusId      | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table c2 as select name,postalCode from customer where city="Toronto";
Query OK, 3 rows affected (0.20 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from c1;
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

MariaDB [csd2204s18]> select * from c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Bob marley   | 100100     |
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> show index from c2;
Empty set (0.00 sec)

MariaDB [csd2204s18]> show index from c1;
Empty set (0.00 sec)

MariaDB [csd2204s18]> show create table c2;
+-------+---------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                          |
+-------+---------------------------------------------------------------------------------------------------------------------------------------+
| c2    | CREATE TABLE `c2` (
  `name` varchar(50) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+-------+---------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> create table c3 like customer;
Query OK, 0 rows affected (0.16 sec)

MariaDB [csd2204s18]> show index from c3;
+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| c3    |          0 | PRIMARY  |            1 | cusId       | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from c3;
Empty set (0.00 sec)

MariaDB [csd2204s18]> show create table c3 ;
+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                         |
+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| c3    | CREATE TABLE `c3` (
  `cusId` varchar(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nickname` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`cusId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> insert into c3 select * from customer;
Query OK, 10 rows affected (0.06 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> selct * from c3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selct * from c3' at line 1
MariaDB [csd2204s18]> select * from c3;
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

MariaDB [csd2204s18]> alter table c3 add column country varchar(100);
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table c3 modify column country varchar(40);
Query OK, 10 rows affected (0.39 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| cusId      | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 chnge column cusId customerID varchar(5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'column cusId customerID varchar(5)' at line 1
MariaDB [csd2204s18]> alter table c3 change column cusId customerID varchar(5);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 drop column nickname;
Query OK, 0 rows affected (0.52 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 modify name varchar(50) NOT NULL;
Query OK, 10 rows affected (1.53 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [csd2204s18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc c1`;
    `> ;
    `> desc c1;
    `> );
    `> ';
    `> ''
    `> ',;'''''
    `> `;
Empty set (0.00 sec)

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| cusId      | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [csd2204s18]> alter table c1 add primary key(cusId);
Query OK, 0 rows affected (0.30 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c1;
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

MariaDB [csd2204s18]> alter table c1 drop index cusId;
ERROR 1091 (42000): Can't DROP 'cusId'; check that column/key exists
MariaDB [csd2204s18]> alter table c1 drop primary key(cusId);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(cusId)' at line 1
MariaDB [csd2204s18]> alter table c1 add column cusId varchar(5) primary key;
ERROR 1060 (42S21): Duplicate column name 'cusId'
MariaDB [csd2204s18]> desc c1;
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

MariaDB [csd2204s18]> alter table c1 drop column cusId;
Query OK, 10 rows affected (0.55 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

MariaDB [csd2204s18]> alter table c1 add column cusid varchar(5);
Query OK, 0 rows affected (0.34 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> alter table c1 add constraint cus_id primary key(cusId);
ERROR 1062 (23000): Duplicate entry '' for key 'PRIMARY'
MariaDB [csd2204s18]> alter table c1 add constraint 'cus_id' primary key(cusId);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''cus_id' primary key(cusId)' at line 1
MariaDB [csd2204s18]> alter table c1 add primary key(cusId);
ERROR 1062 (23000): Duplicate entry '' for key 'PRIMARY'
MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| cusid      | varchar(5)  | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c1 add primary key(cusid);
ERROR 1062 (23000): Duplicate entry '' for key 'PRIMARY'
MariaDB [csd2204s18]> alter table c1 add primary key('cusid');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''cusid')' at line 1
MariaDB [csd2204s18]> alter table c1 add PRIMARY KEY(cusid);
ERROR 1062 (23000): Duplicate entry '' for key 'PRIMARY'
MariaDB [csd2204s18]> drop c1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'c1' at line 1
MariaDB [csd2204s18]> drop table c1;
Query OK, 0 rows affected (0.18 sec)

MariaDB [csd2204s18]> create table c1(
    -> name varchar(50) ,
    -> nickname varchar(10),
    -> city varchar(20),
    -> postalCode varchar(10),
    -> age integer(3),
    -> cusId varchar(5) constraint pk_cusid primary key
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'constraint pk_cusid primary key
)' at line 7
MariaDB [csd2204s18]> create table c1(
    -> name varchar(50) ,
    -> nickname varchar(10),
    -> city varchar(20),
    -> postalCode varchar(10),
    -> age integer(3),
    -> cusId varchar(5),
    -> CONSTRAINT PK_cusid PRIMARY KEY (cusId)
    -> );
Query OK, 0 rows affected (0.20 sec)

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| cusId      | varchar(5)  | NO   | PRI | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c1 drop index PK_cusid;
ERROR 1091 (42000): Can't DROP 'PK_cusid'; check that column/key exists
MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> update c3 set country='USA';
Query OK, 10 rows affected (0.06 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [csd2204s18]> select * from c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA     |
| C02        | Bob marley      | Toronto    | 100100     |   23 | USA     |
| C03        | Charlies Theron | New York   | 120134     |   20 | USA     |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | USA     |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | USA     |
| C06        | Eston M.        | Toronto    | 201023     |   65 | USA     |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | USA     |
| C08        | Ashko Charles   | USA        | 421044     |   72 | USA     |
| C09        | Tony Specie     | GTA        | 418921     |   62 | USA     |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update c3 set country='canada' where city='Toronto';
Query OK, 3 rows affected (0.09 sec)
Rows matched: 3  Changed: 3  Warnings: 0

MariaDB [csd2204s18]> select * from c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA     |
| C02        | Bob marley      | Toronto    | 100100     |   23 | canada  |
| C03        | Charlies Theron | New York   | 120134     |   20 | USA     |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | USA     |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | canada  |
| C06        | Eston M.        | Toronto    | 201023     |   65 | canada  |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | USA     |
| C08        | Ashko Charles   | USA        | 421044     |   72 | USA     |
| C09        | Tony Specie     | GTA        | 418921     |   62 | USA     |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update c3 set country ='canada' where city in('Toronto','GTA');
Query OK, 1 row affected (0.06 sec)
Rows matched: 4  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select * from c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA     |
| C02        | Bob marley      | Toronto    | 100100     |   23 | canada  |
| C03        | Charlies Theron | New York   | 120134     |   20 | USA     |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | USA     |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | canada  |
| C06        | Eston M.        | Toronto    | 201023     |   65 | canada  |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | USA     |
| C08        | Ashko Charles   | USA        | 421044     |   72 | USA     |
| C09        | Tony Specie     | GTA        | 418921     |   62 | canada  |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Bob marley   | 100100     |
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> drop from c2 where name='bob';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from c2 where name='bob'' at line 1
MariaDB [csd2204s18]> delete from c2 where name like 'Bob%';
Query OK, 1 row affected (0.09 sec)

MariaDB [csd2204s18]> select * from c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> delete from c2;
Query OK, 2 rows affected (0.08 sec)

MariaDB [csd2204s18]> drop table c2;
Query OK, 0 rows affected (0.16 sec)

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| cusId      | varchar(5)  | NO   | PRI | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> show index from c1;
+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| c1    |          0 | PRIMARY  |            1 | cusId       | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> alter table c1 drop primary key(PK_cusid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(PK_cusid)' at line 1
MariaDB [csd2204s18]> show create table c1;
+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                         |
+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| c1    | CREATE TABLE `c1` (
  `name` varchar(50) DEFAULT NULL,
  `nickname` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `cusId` varchar(5) NOT NULL,
  PRIMARY KEY (`cusId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| cusId      | varchar(5)  | NO   | PRI | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> update c1 set cusId=1 where age>50;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| cusId      | varchar(5)  | NO   | PRI | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from c1;
Empty set (0.00 sec)

MariaDB [csd2204s18]> insert into customer values('CO1','Ashley','WDC','321200','34');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [csd2204s18]> Query OK, 1 row affected (0.16 sec)
    -> 
    -> MariaDB [csd2204s18]> insert into customer values('CO2','Bob marley','BM','100100','34');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Query OK, 1 row affected (0.16 sec)

MariaDB [csd2204s18]> insert into customer ' at line 1
MariaDB [csd2204s18]> Query OK, 1 row affected (0.03 sec)
    -> 
    -> MariaDB [csd2204s18]> insert into customer values('C03','Cherlies Theron','new york','120134','20');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into customer ' at line 1
MariaDB [csd2204s18]> Query OK, 1 row affected (0.02 sec)
    -> 
    -> MariaDB [csd2204s18]> insert into customer values('C04','DJ','Brazil','341020','25');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Query OK, 1 row affected (0.02 sec)

MariaDB [csd2204s18]> insert into customer ' at line 1
MariaDB [csd2204s18]> Query OK, 1 row affected (0.02 sec)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Query OK, 1 row affected (0.02 sec)' at line 1
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> insert into customer values('CO1','Ashley','WDC','321200','34');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [csd2204s18]> Query OK, 1 row affected (0.16 sec)
    -> 
    -> MariaDB [csd2204s18]> insert into customer values('CO2','Bob marley','BM','100100','34');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Query OK, 1 row affected (0.16 sec)

MariaDB [csd2204s18]> insert into customer ' at line 1
MariaDB [csd2204s18]> Query OK, 1 row affected (0.03 sec)
    -> 
    -> MariaDB [csd2204s18]> insert into customer values('C03','Cherlies Theron','new york','120134','20');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into customer ' at line 1
MariaDB [csd2204s18]> Query OK, 1 row affected (0.02 sec)
    -> 
    -> MariaDB [csd2204s18]> insert into customer values('C04','DJ','Brazil','341020','25');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Query OK, 1 row affected (0.02 sec)

MariaDB [csd2204s18]> insert into customer ' at line 1
MariaDB [csd2204s18]> Query OK, 1 row affected (0.02 sec)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Query OK, 1 row affected (0.02 sec)' at line 1
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
10 rows in set (0.05 sec)

MariaDB [csd2204s18]> insert into c select * from
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [csd2204s18]> insert into c1 select * from customer where cusId<5;
Query OK, 10 rows affected, 16 warnings (0.08 sec)
Records: 10  Duplicates: 0  Warnings: 16

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| cusId      | varchar(5)  | NO   | PRI | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> tee c:/users/736211/downloads/practicelograman.sql;
