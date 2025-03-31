--inner join
create table user (
    id int auto_increment primary key,
    name varchar (20) not null,
    email varchar (20) not null unique,
    password varchar (20) not null,
    created_at timestamp default current_timestamp

);

insert into user(name,email,password) values ('kajal','kajal@gamail.com','qwe123'),('kanika','kanika@gmail.com','qwe')
insert into user(name,email,password) values ('tanisha','tanu@gamil.com','234s'),('kalpi','kalpi@gmail.com','234er');
   

create table product(
product_id int auto_increment primary key,
product_name varchar (100) not null,
 description text,
 price decimal (10,2) not null,
 stock int not null,
 created_at timestamp default current_timestamp
   );
insert into product (product_name,description,price,stock) values ('smartphone','a good quality smartphone',1000.00,20),('washing macine','a good machine',999.99,15),('headphone','noise  cancelling headphone',698.98,23);

create table order2(
    order_id int auto_increment primary key,
    id int not null,
    order_date timestamp default current_timestamp,
    product_id int,
    foreign key (id) references user(id)

);
insert into order2 (id,product_id) values (1,1),(3,3),(2,2)



--insert sample 
*******************************************
select order2.order_id,user.name,user.email,product_id;
from order2
inner join user on user.id=order2.id;
************************************************

*********************************************
select order2.order_id,user.id,user.email,product.product_name,product.stock
from order2
inner join user on user.id=order2.id
inner join product on product.product_id=order2.product_id
***********************************************

************************************************
select user.id,user.name
from order2
inner join user on user.id=order2.id;
**********************************************

******************************************
select order2.order_id
from order2
inner join user on user.id=order2.id
*****************************************

*********************************************
select user.email,user.password,user.name,product.product_name,product.price,product.stock
from order2
inner join user on user.id=order2.id
inner join product on product.product_id=order2.id
****************************************************

--if we want to insert id which we are using as foreign key as in order2 table than we are unable to insert values into into if we want to insert id into than firsly we have to remove the foreign key and then we can insert it
--if the foreign key constraint is not there than we are able to insert the values
alter  table tablename drop constraint order2_ibfk(name from when we try to insert the value) 
alter table add constraint