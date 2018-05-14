MariaDB [csd2204s18]> use csd2204s18;
Database changed
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

MariaDB [csd2204s18]> select * from customer order by name,city asc;
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

MariaDB [csd2204s18]> select * from customer order by name desc,city asc;
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

MariaDB [csd2204s18]> slect * from customer limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'slect * from customer limit 3' at line 1
MariaDB [csd2204s18]> select * from customer limit 3;
+-------+-----------------+----------+----------+------------+------+
| cusId | name            | nickname | city     | postalCode | age  |
+-------+-----------------+----------+----------+------------+------+
| C01   | Ashley          | ash      | WDC      | 321200     |   34 |
| C02   | Bob marley      | BM       | Toronto  | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York | 120134     |   20 |
+-------+-----------------+----------+----------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by cusId desc;
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C01   | Ashley          | ash      | WDC        | 321200     |   34 |
+-------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by cusId desc(select * from customer limit 3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(select * from customer limit 3)' at line 1
MariaDB [csd2204s18]> select * from customer order by cusId desc limit 3;
+-------+---------------+----------+------------+------------+------+
| cusId | name          | nickname | city       | postalCode | age  |
+-------+---------------+----------+------------+------------+------+
| C10   | Jack Sp       | Sparrow  | New Jersey | 102301     |   35 |
| C09   | Tony Specie   | Specie   | GTA        | 418921     |   62 |
| C08   | Ashko Charles | AK       | USA        | 421044     |   72 |
+-------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer (select * from customer order by cusId) order by cusId desc limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(select * from customer order by cusId) order by cusId desc limit 3' at line 1
MariaDB [csd2204s18]> select * from customer (select * from  order by cusId desc limit 3) order by cusId ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(select * from  order by cusId desc limit 3) order by cusId' at line 1
MariaDB [csd2204s18]> select * from customer order by cusId desc limit 3;
+-------+---------------+----------+------------+------------+------+
| cusId | name          | nickname | city       | postalCode | age  |
+-------+---------------+----------+------------+------------+------+
| C10   | Jack Sp       | Sparrow  | New Jersey | 102301     |   35 |
| C09   | Tony Specie   | Specie   | GTA        | 418921     |   62 |
| C08   | Ashko Charles | AK       | USA        | 421044     |   72 |
+-------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer (select * from  order by cusId desc limit 3) order by cusId desc ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(select * from  order by cusId desc limit 3) order by cusId desc' at line 1
MariaDB [csd2204s18]> select * from customer (select * from  customer order by cusId desc limit 3) order by cusId;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(select * from  customer order by cusId desc limit 3) order by cusId' at line 1
MariaDB [csd2204s18]> select * from customer (select * from  customer order by cusId desc limit 3) order by cusId asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(select * from  customer order by cusId desc limit 3) order by cusId asc' at line 1
MariaDB [csd2204s18]> select * from customer (select * from  customer order by cusId asc limit 3) order by cusId desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(select * from  customer order by cusId asc limit 3) order by cusId desc' at line 1
MariaDB [csd2204s18]> select * from customer (select * from  customer order by cusId asc limit 2 ) order by cusId desc limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(select * from  customer order by cusId asc limit 2 ) order by cusId desc limit ' at line 1
MariaDB [csd2204s18]> select * from customer (select * from  customer order by cusId asc ) order by cusId desc limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(select * from  customer order by cusId asc ) order by cusId desc limit 3' at line 1
MariaDB [csd2204s18]> select * from (select * from  customer order by cusId desc limit 3 ) order by cusId asc;
ERROR 1248 (42000): Every derived table must have its own alias
MariaDB [csd2204s18]> select * from customer group by name;;
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

ERROR: No query specified

MariaDB [csd2204s18]> select * from customer group by city;
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01   | Ashley          | ash      | WDC        | 321200     |   34 |
+-------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select city from customer group by city;
+------------+
| city       |
+------------+
| Brazil     |
| GTA        |
| New Jersey |
| New York   |
| Toronto    |
| USA        |
| WDC        |
+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(city) "unique cities" from customer group by city;
+---------------+
| unique cities |
+---------------+
|             1 |
|             1 |
|             1 |
|             2 |
|             3 |
|             1 |
|             1 |
+---------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(city) "unique cities",city from customer group by city;
+---------------+------------+
| unique cities | city       |
+---------------+------------+
|             1 | Brazil     |
|             1 | GTA        |
|             1 | New Jersey |
|             2 | New York   |
|             3 | Toronto    |
|             1 | USA        |
|             1 | WDC        |
+---------------+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(city) "no of customers",city from customer group by city;
+-----------------+------------+
| no of customers | city       |
+-----------------+------------+
|               1 | Brazil     |
|               1 | GTA        |
|               1 | New Jersey |
|               2 | New York   |
|               3 | Toronto    |
|               1 | USA        |
|               1 | WDC        |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> MariaDB [csd2204s18]> select count(city) "no of customers",city from customer group by city;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'MariaDB [csd2204s18]> select count(city) "no of customers",city from customer gr' at line 1
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

MariaDB [csd2204s18]>  select count(city) "no of customers",city from customer group by city where city like "new%";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where city like "new%"' at line 1
MariaDB [csd2204s18]>  select count(city) "no of customers",city from customer group by city having city like "new%";
+-----------------+------------+
| no of customers | city       |
+-----------------+------------+
|               1 | New Jersey |
|               2 | New York   |
+-----------------+------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]>  select count(city) "no of customers",city from customer group by city having city like "new%" or "toronto";
+-----------------+------------+
| no of customers | city       |
+-----------------+------------+
|               1 | New Jersey |
|               2 | New York   |
+-----------------+------------+
2 rows in set, 2 warnings (0.00 sec)

MariaDB [csd2204s18]>  select count(city) "no of customers",city from customer group by city having city like "new%" or city="toronto";
+-----------------+------------+
| no of customers | city       |
+-----------------+------------+
|               1 | New Jersey |
|               2 | New York   |
|               3 | Toronto    |
+-----------------+------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]>  select count(city) "no of customers",city from customer group by city having count(city)>2;
+-----------------+---------+
| no of customers | city    |
+-----------------+---------+
|               3 | Toronto |
+-----------------+---------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from  customer order by cusId desc limit 3 ) order by cusId asc;
ERROR 1248 (42000): Every derived table must have its own alias
MariaDB [csd2204s18]> select * from (select * from  customer order by cusId desc limit 3 ) t order by cusId asc;
+-------+---------------+----------+------------+------------+------+
| cusId | name          | nickname | city       | postalCode | age  |
+-------+---------------+----------+------------+------------+------+
| C08   | Ashko Charles | AK       | USA        | 421044     |   72 |
| C09   | Tony Specie   | Specie   | GTA        | 418921     |   62 |
| C10   | Jack Sp       | Sparrow  | New Jersey | 102301     |   35 |
+-------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name REGXP '^D';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'REGXP '^D'' at line 1
MariaDB [csd2204s18]> select * from customer where name REGXP 'n$';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'REGXP 'n$'' at line 1
MariaDB [csd2204s18]> select * from customer where name REGEXP 'n$';
+-------+-----------------+----------+----------+------------+------+
| cusId | name            | nickname | city     | postalCode | age  |
+-------+-----------------+----------+----------+------------+------+
| C03   | Charlies Theron | cher     | New York | 120134     |   20 |
| C05   | Donna Newman    | new      | Toronto  | 130120     |   50 |
+-------+-----------------+----------+----------+------------+------+
2 rows in set (0.03 sec)

MariaDB [csd2204s18]> select * from customer where name REGEXP '^D';
+-------+--------------+----------+---------+------------+------+
| cusId | name         | nickname | city    | postalCode | age  |
+-------+--------------+----------+---------+------------+------+
| C04   | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05   | Donna Newman | new      | Toronto | 130120     |   50 |
+-------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name REGEXP '^..a';
+-------+-----------------+----------+----------+------------+------+
| cusId | name            | nickname | city     | postalCode | age  |
+-------+-----------------+----------+----------+------------+------+
| C03   | Charlies Theron | cher     | New York | 120134     |   20 |
+-------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name REGEXP '^........t';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name REGEXP '^....l';
+-------+-----------------+----------+----------+------------+------+
| cusId | name            | nickname | city     | postalCode | age  |
+-------+-----------------+----------+----------+------------+------+
| C03   | Charlies Theron | cher     | New York | 120134     |   20 |
+-------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where postalCode REGEXP '^0[0-9]';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where postalCode REGEXP '^[0-9]';
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

MariaDB [csd2204s18]> select * from customer where postalCode REGEXP '^[a-z]';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where nickname REGEXP '^a*';
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

MariaDB [csd2204s18]> select * from customer where nickname REGEXP '^a+';
+-------+---------------+----------+------+------------+------+
| cusId | name          | nickname | city | postalCode | age  |
+-------+---------------+----------+------+------------+------+
| C01   | Ashley        | ash      | WDC  | 321200     |   34 |
| C08   | Ashko Charles | AK       | USA  | 421044     |   72 |
+-------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where nickname REGEXP '^a?';
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

MariaDB [csd2204s18]> select * from customer where city REGEXP '^.{4}';
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+-------+-----------------+----------+------------+------------+------+
7 rows in set (0.01 sec)

MariaDB [csd2204s18]> select * from customer where city REGEXP '^.{9}';
+-------+---------+----------+------------+------------+------+
| cusId | name    | nickname | city       | postalCode | age  |
+-------+---------+----------+------------+------------+------+
| C10   | Jack Sp | Sparrow  | New Jersey | 102301     |   35 |
+-------+---------+----------+------------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city REGEXP '^.{10}';
+-------+---------+----------+------------+------------+------+
| cusId | name    | nickname | city       | postalCode | age  |
+-------+---------+----------+------------+------------+------+
| C10   | Jack Sp | Sparrow  | New Jersey | 102301     |   35 |
+-------+---------+----------+------------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city REGEXP '^.{12}';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city like '^.{4}';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city rlike '^.{4}';
+-------+-----------------+----------+------------+------------+------+
| cusId | name            | nickname | city       | postalCode | age  |
+-------+-----------------+----------+------------+------------+------+
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+-------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> slect update;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'slect update' at line 1
MariaDB [csd2204s18]> slect update();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'slect update()' at line 1
MariaDB [csd2204s18]> select update();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'update()' at line 1
MariaDB [csd2204s18]> select now();
+---------------------+
| now()               |
+---------------------+
| 2018-05-14 09:15:21 |
+---------------------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> select curdate();
+------------+
| curdate()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.01 sec)

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> select update();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'update()' at line 1
MariaDB [csd2204s18]> select curupdate();
ERROR 1305 (42000): FUNCTION csd2204s18.curupdate does not exist
MariaDB [csd2204s18]> alter table customer add column dob date:
    -> :
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ':
:' at line 1
MariaDB [csd2204s18]> alter table customer add column dob date;
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> select * from customer ;
+-------+-----------------+----------+------------+------------+------+------+
| cusId | name            | nickname | city       | postalCode | age  | dob  |
+-------+-----------------+----------+------------+------------+------+------+
| C01   | Ashley          | ash      | WDC        | 321200     |   34 | NULL |
| C02   | Bob marley      | BM       | Toronto    | 100100     |   23 | NULL |
| C03   | Charlies Theron | cher     | New York   | 120134     |   20 | NULL |
| C04   | Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL |
| C05   | Donna Newman    | new      | Toronto    | 130120     |   50 | NULL |
| C06   | Eston M.        | M.       | Toronto    | 201023     |   65 | NULL |
| C07   | Bobby Chacko    | chac     | New York   | 320300     |   70 | NULL |
| C08   | Ashko Charles   | AK       | USA        | 421044     |   72 | NULL |
| C09   | Tony Specie     | Specie   | GTA        | 418921     |   62 | NULL |
| C10   | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | NULL |
+-------+-----------------+----------+------------+------------+------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update customer set dob='1991-01-10' where cusId='C01';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob='1996-05-09' where cusId='C02';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob='1994-05-09' where cusId='C03';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob='1995-11-03' where cusId='C04';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob='1995-01-16' where cusId='C05';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob='1995-10-22' where cusId='C06';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob='1992-11-07' where cusId='C07';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob='1996-05-07' where cusId='C08';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob='1985-08-28' where cusId='C09';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set dob='1995-06-17' where cusId='C10';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select 8 from customer;
+---+
| 8 |
+---+
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
+---+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,dob, timestampdiff(year,dob,curdate()) from customer;
+-----------------+------------+-----------------------------------+
| name            | dob        | timestampdiff(year,dob,curdate()) |
+-----------------+------------+-----------------------------------+
| Ashley          | 1991-01-10 |                                27 |
| Bob marley      | 1996-05-09 |                                22 |
| Charlies Theron | 1994-05-09 |                                24 |
| Denial Jack     | 1995-11-03 |                                22 |
| Donna Newman    | 1995-01-16 |                                23 |
| Eston M.        | 1995-10-22 |                                22 |
| Bobby Chacko    | 1992-11-07 |                                25 |
| Ashko Charles   | 1996-05-07 |                                22 |
| Tony Specie     | 1985-08-28 |                                32 |
| Jack Sp         | 1995-06-17 |                                22 |
+-----------------+------------+-----------------------------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,dob, timestampdiff(year,dob,curdate()) "age" from customer;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-10 |   27 |
| Bob marley      | 1996-05-09 |   22 |
| Charlies Theron | 1994-05-09 |   24 |
| Denial Jack     | 1995-11-03 |   22 |
| Donna Newman    | 1995-01-16 |   23 |
| Eston M.        | 1995-10-22 |   22 |
| Bobby Chacko    | 1992-11-07 |   25 |
| Ashko Charles   | 1996-05-07 |   22 |
| Tony Specie     | 1985-08-28 |   32 |
| Jack Sp         | 1995-06-17 |   22 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,dob, timestampdiff(day,dob,curdate()) "age" from customer;
+-----------------+------------+-------+
| name            | dob        | age   |
+-----------------+------------+-------+
| Ashley          | 1991-01-10 |  9986 |
| Bob marley      | 1996-05-09 |  8040 |
| Charlies Theron | 1994-05-09 |  8771 |
| Denial Jack     | 1995-11-03 |  8228 |
| Donna Newman    | 1995-01-16 |  8519 |
| Eston M.        | 1995-10-22 |  8240 |
| Bobby Chacko    | 1992-11-07 |  9319 |
| Ashko Charles   | 1996-05-07 |  8042 |
| Tony Specie     | 1985-08-28 | 11947 |
| Jack Sp         | 1995-06-17 |  8367 |
+-----------------+------------+-------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update customer set dob='1992-01-29' where cusId='C01';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select name,dob, timestampdiff(day,dob,curdate()) "age" from customer;
+-----------------+------------+-------+
| name            | dob        | age   |
+-----------------+------------+-------+
| Ashley          | 1992-01-29 |  9602 |
| Bob marley      | 1996-05-09 |  8040 |
| Charlies Theron | 1994-05-09 |  8771 |
| Denial Jack     | 1995-11-03 |  8228 |
| Donna Newman    | 1995-01-16 |  8519 |
| Eston M.        | 1995-10-22 |  8240 |
| Bobby Chacko    | 1992-11-07 |  9319 |
| Ashko Charles   | 1996-05-07 |  8042 |
| Tony Specie     | 1985-08-28 | 11947 |
| Jack Sp         | 1995-06-17 |  8367 |
+-----------------+------------+-------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update customer set dob='1991-01-10' where cusId='C01';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select name,dob, timestampdiff(day,dob,curdate()) "age" from customer having age="22";
Empty set (0.00 sec)

MariaDB [csd2204s18]> select name,dob, timestampdiff(day,dob,curdate()) "age" from customer having timestampdiff(year,dob,curdate())="22";
+---------------+------------+------+
| name          | dob        | age  |
+---------------+------------+------+
| Bob marley    | 1996-05-09 | 8040 |
| Denial Jack   | 1995-11-03 | 8228 |
| Eston M.      | 1995-10-22 | 8240 |
| Ashko Charles | 1996-05-07 | 8042 |
| Jack Sp       | 1995-06-17 | 8367 |
+---------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,dob, timestampdiff(day,dob,curdate()) "age" from customer having age=22;
Empty set (0.00 sec)

MariaDB [csd2204s18]> select name,dob, timestampdiff(year,dob,curdate()) "age" from customer having age=22;
+---------------+------------+------+
| name          | dob        | age  |
+---------------+------------+------+
| Bob marley    | 1996-05-09 |   22 |
| Denial Jack   | 1995-11-03 |   22 |
| Eston M.      | 1995-10-22 |   22 |
| Ashko Charles | 1996-05-07 |   22 |
| Jack Sp       | 1995-06-17 |   22 |
+---------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> tee c:/users/736211/downloads/practicelograman
