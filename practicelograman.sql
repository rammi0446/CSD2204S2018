MariaDB [csd2204s18]> show databases;
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

MariaDB [csd2204s18]> create table DEPT(
    -> dno integer(3) primary key
    -> name varchar(15),
    -> loc varchar(20)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'name varchar(15),
loc varchar(20)
)' at line 3
MariaDB [csd2204s18]> create table DEPT(
    -> dno integer(3) primary key,
    -> name varchar(15),
    -> loc varchar(20)
    -> );
Query OK, 0 rows affected (0.22 sec)

MariaDB [csd2204s18]> create table EMP(
    -> empno integer(5) primary key,
    -> name varchar(50),
    -> jdate date,
    -> dept integer(3),
    -> desig varchar(20),
    -> basic integer(10,2),
    -> da integer(10,2),
    -> hra integer(10,2),
    -> pf integer(10,2),
    -> it integer(10,2)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '2),
da integer(10,2),
hra integer(10,2),
pf integer(10,2),
it integer(10,2)
)' at line 7
MariaDB [csd2204s18]> create table CUST_MAST(
    -> cust_no integer(5) primary key
    -> name varchar(50),
    -> addr1 varchar(50),
    -> addr2 varchar(50),
    -> addr3 varchar(50),
    -> city varchar(30),
    -> state varchar(20)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'name varchar(50),
addr1 varchar(50),
addr2 varchar(50),
addr3 varchar(50),
city ' at line 3
MariaDB [csd2204s18]> create table CUST_MAST(
    -> cust_no integer(5) primary key,
    -> name varchar(50),
    -> addr1 varchar(50),
    -> addr2 varchar(50),
    -> addr3 varchar(50),
    -> city varchar(30),
    -> state varchar(20)
    -> ,
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 10
MariaDB [csd2204s18]> create table CUST_MAST(
    -> cust_no integer(5) primary key,
    -> name varchar(50),
    -> addr1 varchar(50),
    -> addr2 varchar(50),
    -> addr3 varchar(50),
    -> city varchar(30),
    -> state varchar(20),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 9
MariaDB [csd2204s18]> create table CUST_MAST(
    -> cust_no integer(5) primary key,
    -> name varchar(50),
    -> addr1 varchar(50),
    -> addr2 varchar(50),
    -> addr3 varchar(50),
    -> city varchar(30),
    -> state varchar(20)
    -> );
Query OK, 0 rows affected (0.22 sec)

MariaDB [csd2204s18]> create table EMP(
    -> empno integer(5) primary key,
    -> name varchar(50),
    -> jdate date,
    -> dept integer(3),
    -> desig varchar(20),
    -> basic float(10,2),
    -> da float(10,2),
    -> hra float(10,2),
    -> pf float(10,2),
    -> it float(10,2)
    -> );
Query OK, 0 rows affected (0.23 sec)

MariaDB [csd2204s18]> create table AC_MAST(
    -> ac_type varchar(3),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 2
MariaDB [csd2204s18]> create table AC_MAST(
    -> ac_type varchar(3) primary key,
    -> ac_no integer(4) primary key,
    -> cust_no integer(5),
    -> bal float(10,2),
    -> od_limit float(10,2)
    -> );
ERROR 1068 (42000): Multiple primary key defined
MariaDB [csd2204s18]> create table AC_MAST(
    -> ac_type varchar(3) primary key(1),
    -> ac_no integer(4) primary key(2),
    -> cust_no integer(5)
    -> bal float(10,2),
    -> od_limit float(10,2)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(1),
ac_no integer(4) primary key(2),
cust_no integer(5)
bal float(10,2),
od_lim' at line 2
MariaDB [csd2204s18]> create table AC_MAST(
    -> ac_type varchar(3) ,
    -> ac_no integer(4) ,
    -> cust_no integer(5),
    -> bal float(10,2),
    -> od_limit float(10,2)
    -> );
Query OK, 0 rows affected (0.30 sec)

MariaDB [csd2204s18]> alter table AC_MAST add primary key(ac_type,ac_no);
Query OK, 0 rows affected (0.66 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> show index from AC_MAST;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| ac_mast |          0 | PRIMARY  |            1 | ac_type     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| ac_mast |          0 | PRIMARY  |            2 | ac_no       | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table  TRANS(
    -> ac_type varchar(3),
    -> ac_no integer(4),
    -> tdate date,
    -> counter integer(2),
    -> amount float(10,2),
    -> desc varchar(30),
    -> primary key(ac_type,ac_no,tdate)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc varchar(30),
primary key(ac_type,ac_no,tdate)
)' at line 7
MariaDB [csd2204s18]> create table  TRANS(
    -> ac_type varchar(3) primary key,
    -> ac_npo integer(4) primary key,
    -> tdate date primary key,
    -> counter integer(2),
    -> amount float(10,2),
    -> descr varchar(30)
    -> );
ERROR 1068 (42000): Multiple primary key defined
MariaDB [csd2204s18]> create table  TRANS(
    -> ac_type varchar(3) primary key,
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 2
MariaDB [csd2204s18]> create table  TRANS(
    -> ac_type varchar(3) ,
    -> ac_no integer(4) ,
    -> tdate date,
    -> counter integer(2),
    -> amount float(10,2),
    -> desc varchar(30),
    -> primary key(ac_type,ac_no,tdate)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc varchar(30),
primary key(ac_type,ac_no,tdate)
)' at line 7
MariaDB [csd2204s18]> exit
