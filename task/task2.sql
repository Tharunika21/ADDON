mysql> use students;
Database changed
mysql> create table student(
    -> sname,
    -> smark
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',
smark
)' at line 2
mysql> create table student(
    -> sname varchar(90),
    -> smark int
    -> );
ERROR 1050 (42S01): Table 'student' already exists
mysql> create table stu(
    -> sname varchar(90),
    -> smark int
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into student values('tharu',60);
Query OK, 1 row affected (0.03 sec)

mysql> insert into student values('harini',80);
Query OK, 1 row affected (0.01 sec)

mysql> select *from student;
+--------+------+
| name   | mark |
+--------+------+
| tharu  |   60 |
| harini |   80 |
+--------+------+
2 rows in set (0.00 sec)

mysql> select *from student
    -> where mark>=80;
+--------+------+
| name   | mark |
+--------+------+
| harini |   80 |
+--------+------+
1 row in set (0.00 sec)

mysql> create table course(
    -> scoursefees int
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> insert into course values
    -> (20000,300000,50000,60000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into course(5000,3000,7000,9000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '5000,3000,7000,9000)' at line 1
mysql> create table course(
    -> scourse fees int
    -> sname varchar(90);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'fees int
sname varchar(90)' at line 2
mysql> create table course(
    -> scourse name varchar(90),
    -> scourse fees int
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name varchar(90),
scourse fees int
)' at line 2
mysql> create table student(
    -> scoursename varcahr(90),
    -> scoursefees int
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varcahr(90),
scoursefees int
)' at line 2
mysql> create table student(
    -> sname varchar(90),
    -> scoursefees int
    -> );
ERROR 1050 (42S01): Table 'student' already exists
mysql> create table stu(
    -> sname varchar(90),
    -> scoursefees int
    -> );
ERROR 1050 (42S01): Table 'stu' already exists
mysql> create table stude(
    -> scoursefees int
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> insert into stude values(9000,8000,5000,1000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into stude values
    -> ('9000');
Query OK, 1 row affected (0.04 sec)

mysql> insert into stude values
    -> ('100000);
    '> ;
    '> ;'
    -> ;';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 4
    '> '
    -> insert into stude values
    -> ('100000');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '';
'
insert into stude values
('100000')' at line 1
mysql> insert into stude values
    -> ('10000');
Query OK, 1 row affected (0.05 sec)

mysql> insert into stude values
    -> ('5000');
Query OK, 1 row affected (0.03 sec)

mysql> insert into stude values
    -> ('50000');
Query OK, 1 row affected (0.03 sec)

mysql> select *from stude;
+-------------+
| scoursefees |
+-------------+
|        9000 |
|       10000 |
|        5000 |
|       50000 |
+-------------+
4 rows in set (0.00 sec)

mysql> select stude order by salary desc;
ERROR 1054 (42S22): Unknown column 'stude' in 'field list'
mysql> select * from stude order by salary desc;
ERROR 1054 (42S22): Unknown column 'salary' in 'order clause'
mysql> select * from stude order by scoursefees desc;
+-------------+
| scoursefees |
+-------------+
|       50000 |
|       10000 |
|        9000 |
|        5000 |
+-------------+
4 rows in set (0.00 sec)

mysql> create table book(
    -> sname varchar(90),
    -> sauthor varchar(90)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> create table  book(
    -> sname varchar(90),
    -> sauthor varchar(90)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> insert into book values
    -> ('rajavinselvan','raja');
Query OK, 1 row affected (0.04 sec)

mysql> insert into book values
    -> ('castlebycastle','king');
Query OK, 1 row affected (0.03 sec)

mysql> insert into book values
    -> ('riverofshade','nadhi');
Query OK, 1 row affected (0.03 sec)

mysql> select ename
    -> from students
    -> where ename like '%r';
ERROR 1146 (42S02): Table 'students.students' doesn't exist
mysql> select ename
    -> from book
    -> where ename like'%r';
ERROR 1054 (42S22): Unknown column 'ename' in 'field list'
mysql> select sname
    -> from book
    -> where sname like'%r';
Empty set (0.00 sec)

mysql> select *from book;
+----------------+---------+
| sname          | sauthor |
+----------------+---------+
| rajavinselvan  | raja    |
| castlebycastle | king    |
| riverofshade   | nadhi   |
+----------------+---------+
3 rows in set (0.00 sec)

mysql> select sauthor
    -> from book
    -> where sauthor like'%r';
Empty set (0.00 sec)

mysql> select sname
    -> from book
    -> where sname like'r%n';
+---------------+
| sname         |
+---------------+
| rajavinselvan |
+---------------+
1 row in set (0.00 sec)
