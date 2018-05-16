MariaDB [csd2204s18]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c1                   |
| c3                   |
| cust_mast            |
| customer             |
| dept                 |
| emp                  |
| manu                 |
| movies               |
| new                  |
| orders               |
| persons              |
| products             |
| trans                |
+----------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc manu;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| Code  | int(3)      | NO   | PRI | NULL    | auto_increment |
| Name  | varchar(50) | NO   |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc products;
+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| Code         | int(3)        | NO   | PRI | NULL    | auto_increment |
| Name         | varchar(255)  | NO   |     | NULL    |                |
| Price        | decimal(10,0) | NO   |     | NULL    |                |
| Manufacturer | int(3)        | YES  | MUL | NULL    |                |
+--------------+---------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code,products.name,manu.name 
    -> from manu
    -> innner join 
    -> products
    -> on products.code=manu.code;
ERROR 1054 (42S22): Unknown column 'manu.name' in 'field list'
MariaDB [csd2204s18]> select products.Code,products.Name,manu.Name 
    -> from manu
    -> innner join 
    -> products
    -> on products.Code=manu.Code;
ERROR 1054 (42S22): Unknown column 'manu.Name' in 'field list'
MariaDB [csd2204s18]> select products.Code,products.Name,manu.Name 
    -> from manu
    -> inner join 
    -> products
    -> on products.Code=manu.Code;
+------+-----------------+-------------------+
| Code | Name            | Name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
+------+-----------------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(*), manufacturer from products as p
    -> inner join manu m
    -> on m.code=p.manufacturer
    -> group by manufacturer;
+----------+--------------+
| count(*) | manufacturer |
+----------+--------------+
|        1 |            1 |
|        3 |            2 |
|        2 |            3 |
|        1 |            4 |
|        1 |            5 |
|        2 |            6 |
|        3 |            7 |
+----------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manufacturer, m.name,count(*) "number of items manufacturer have", manufacturer from products
    -> as p inne
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'inne' at line 2
MariaDB [csd2204s18]> select manufacturer, m.name,count(*) "number of items manufacturer have", manufacturer from products;
ERROR 1054 (42S22): Unknown column 'm.name' in 'field list'
MariaDB [csd2204s18]> select manufacturer, m.name,count(*) "number of items manufacturer have", manufacturer from products
    -> as p
    -> inner join manu m
    -> on m.code=p.manufacturer
    -> group by manufacturer;
+--------------+-------------------+-----------------------------------+--------------+
| manufacturer | name              | number of items manufacturer have | manufacturer |
+--------------+-------------------+-----------------------------------+--------------+
|            1 | Sony              |                                 1 |            1 |
|            2 | Creative Labs     |                                 3 |            2 |
|            3 | Hewlett-Packard   |                                 2 |            3 |
|            4 | Iomega            |                                 1 |            4 |
|            5 | Fujitsu           |                                 1 |            5 |
|            6 | Winchester        |                                 2 |            6 |
|            7 | moxDroid Labs Inc |                                 3 |            7 |
+--------------+-------------------+-----------------------------------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manufacturer, m.name,count(*) "number of items manufacturer have", manufacturer from products
    -> as p inne
    -> r;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'inne
r' at line 2
MariaDB [csd2204s18]> select manufacturer, m.name,count(*) "number of items manufacturer have", manufacturer from products
    -> as p
    -> inner join manu m
    -> on m.code=p.manufacturer
    -> group by manufacturer where products.code<4;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where products.code<4' at line 5
MariaDB [csd2204s18]> select manufacturer, m.name,count(*) "number of items manufacturer have", manufacturer from products
    -> as p
    -> inner join manu m
    -> on m.code=p.manufacturer
    -> where m.code<4
    -> group by manufacturer ;
+--------------+-----------------+-----------------------------------+--------------+
| manufacturer | name            | number of items manufacturer have | manufacturer |
+--------------+-----------------+-----------------------------------+--------------+
|            1 | Sony            |                                 1 |            1 |
|            2 | Creative Labs   |                                 3 |            2 |
|            3 | Hewlett-Packard |                                 2 |            3 |
+--------------+-----------------+-----------------------------------+--------------+
3 rows in set (0.02 sec)

MariaDB [csd2204s18]> select manufacturer, m.name,count(*) "number of items manufacturer have", manufacturer from products
    -> as p
    -> inner join manu m
    -> on m.code=p.manufacturer
    -> where count=2
    -> group by manufacturer ;
ERROR 1054 (42S22): Unknown column 'count' in 'where clause'
MariaDB [csd2204s18]> select manufacturer, m.name,count(*) "number of items manufacturer have", manufacturer from products
    -> as p
    -> inner join manu m
    -> on m.code=p.manufacturer
    -> group by manufacturer 
    -> having count(*)>2;
+--------------+-------------------+-----------------------------------+--------------+
| manufacturer | name              | number of items manufacturer have | manufacturer |
+--------------+-------------------+-----------------------------------+--------------+
|            2 | Creative Labs     |                                 3 |            2 |
|            7 | moxDroid Labs Inc |                                 3 |            7 |
+--------------+-------------------+-----------------------------------+--------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manufacturer, m.name,count(*) "number of items manufacturer have", manufacturer from products
    -> as p
    -> inner join manu m
    -> on m.code=p.manufacturer
    -> where m.code=3 or m.code=2
    -> group by manufacturer ;
+--------------+-----------------+-----------------------------------+--------------+
| manufacturer | name            | number of items manufacturer have | manufacturer |
+--------------+-----------------+-----------------------------------+--------------+
|            2 | Creative Labs   |                                 3 |            2 |
|            3 | Hewlett-Packard |                                 2 |            3 |
+--------------+-----------------+-----------------------------------+--------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> tee c:/users/736211/downloads/practicelograman.sql;
