--primary key and unique key
create table people(
id int auto_Increment,
name varchar(19),
email varchar (20),
address varchar(100),
primary key (id),
unique (email)
);

insert into people(name,email,address) values ('kajal','kajal@gmail.com','delhi')
insert into people(name,email,address) values ('tanisha','tanisha@gmail.com','mumbai')
insert into people(name,email,address) values ('aarti','aarti@gmail.com','kolkata')
insert into people(name,email,address) values ('aditi','aditi@gmail.com','rajasthan')

create table product(
product_id int auto_Increment primary key,
name varchar(30) not null,
description text,
price decimal(10,2),
stock int not null,
created_at timestamp default current_timestamp
);

insert into product (name,description,price,stock,) values ('smartphone','latest model with good storage' ,699.99,50)
insert into product (name,description,price,stock,) values ('stationary','good quality stationary',299.99,30)
insert into product (name,description,price,stock,) values ('novel','best-selling fiction novel',599,40)
insert into product (name,description,price,stock,) values ('cloths','available in all size',999.99,50)


--check constraint
create table voters1(
  id int not null auto_Increment primary key,
  name varchar (20),
  age int,
  check (age>17)
);
  
  constraint voters_age_check check (age>17)


--table with  primary key
--if we use auto increment than it will increment the value automatically
--id has been increamented automaticall
--if we dont give id  than it will also be successfully executed;

create table people1(
    id int auto_Increment,
    name varchar(15),
    address varchar(18),
    primary key(id),
    unique (name)
);
    
--if we want create a database;
create database name;

--if we want to delete that database we use
drop database name;

--if we want to work in that database
--database changed
use name;

--show tables will show you the table name or the database name
show tables;

--describe table will describe you the entire table
describe tablename

--if we have unique key or primary key than we dont have duplicate in tables;

-- if we dont give any name to the tables than it will give null value because table does not have any  constraints to set to the particular column as not null;
--if i want to do so we have two option
--we can alter the table to make  a columns as no
--we can recreate the table
--we have to add the constraint that name is not null
insert into customer(id,address)values(2,'mumbai')

--FIRSTLY WE HAVE TO DELETE THE PARTICULAR ROW THAT CONTAIN NULL VALUE THEN WE CAN ALTER THE TABLE
--FIRST STEP
DELETE FROM user where id=4
--second step
alter from user modify name varchar(15) not null;
--after altering if we manually push the value as null it will not accept it;
--if we dont give name than it will not give va;lue AS null because we have provided a constarint to it 
--it will show feild name doest show default value;

--if we deleted the certain row than it will the next execution after those deleted line;
--for ex if we delete the row 5 then it will insert into 6 line, line 5 is missing;because row 5  record will be in mysq
--we can explicitly insert the value to row 5

--if i want a uniqueness for email as well as name than we use constraint;
alter table user modify name varchar (15) not null;
--or we can also use
alter table user add constraint unique (name)
--firsty we have to up date the duplicate;
update tablename set name='neha' where id=1
--then we have to alter the table

--###### unique key can be multiple but we can have multiple coloumn as unique
--primary key can not be multiple it will through an error multiple primary key defined;s

-- if we use unique than it will give null only for one time but  for others stuffs it will not give but this sql version is giving more null value bcz this sql does not have restrictions but in other databases it will not allow;
-- while creating the table  if we add  not null along with unique key than it is a good schema design;

--alter the table to drop the uniqueness;
alter table tablename drop index name;
--name==unique key;
--we are using index because 
--if we have thousand of rows it is difficult to find a particular row so  i that case we need to have a uniqueness of  the table so while crating the table  we add constraint to it i.e..primary key or unique key
--whenever we make any column as unique in database it will add indexing to  that column;
 --whenever we add  an index it will ease  the searching capability
--when we use int column it will automatically add this index to that particular unique coloum
--if you add this index your database searching will be fast
 --purpose of index indexing will help to retrieve the data more quickly it will give preference to that particular coloumn
 --instead of searching in the complete table it will search unique value in the particular table so that  i can fetch  a row easily using query
 --this will make the searching  capability fast thats why we use index
--it will be easy for mysql to retrive the inforfation more quickly thats why we use indexing
 
  -- if we add index to all the column  it is useless; so it is  difficult to find a unique data
  -- if we create a primary and unique key than it will automatically  insert a index constraint to a particular table;
  --if we create a primary and unique key than it will automatically create indexing
  --if we remove the index uniqueneass will also remove
  --when we say unique it should have index

--add some default value to the table
create table people1(
    id int auto_Increment,
    name varchar(15) not null default "hhhh",
    address varchar(18),
    primary key(id),
    unique (name)
);
--if we dont give any value to name by default it will take hhhhh it will not give again hhhh value because it is unique
--it will also not take duplicate value;

constraint
not null
unique
primary key
default
auto increment 
check 
foreign key
index

--index
--if it is not primary key and unique key than we will create index  manually
-- it will give mul(multiply key)
--if we use indexing than we will retrieve than information in seconds
--that means we are creating a index for it
create index peopleemail on tablename (coloum)
--we have created it with some additional name that is peopleemail
--if we want to drop it
alter table tablename drop index additionalname

--if we want to add the coloumn;
alter table tablename add coloumn product_id int;
 
 --if we to drop the coloumn
 alter table tablename drop coloumn total;