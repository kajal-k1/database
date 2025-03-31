create table user (
    id int auto_increment primary key,
    name varchar (20) not null,
    email varchar (20),
    password varchar (20),
    phone_num varchar (10),
    age int,
    salary int,
created_at timestamp default current_timestamp
);

***********************************
create table users(
     id int auto_increment primary key,
    first_name varchar (20) not null,
    last_name  varchar (20) not null,
    phone_num varchar (10) not null,
    email varchar (20)not null,
    created_at timestamp default current_timestamp
);




insert into user(name,email,password,phone_num,age,salary) values ('tanisha','tanisha@gmail.com','12qw',91987654,23,20000);
insert into user(name,email,password,phone_num,age,salary) values ('aarti','aarti@gmail.com','9876',9198777654,22,30000);
insert into user(name,email,password,phone_num,age,salary) values ('kanika','kanika@gmail.com','4567',913498764,24,40000);
insert into user(name,email,password,phone_num,age,salary) values ('kalpi','kalpi@gmail.com','12jk',9188987654,21,32000);
insert into user(name,email,password,phone_num,age,salary) values ('kirti','kirti@gmail.com','fgqw',9977987654,25,42000);
insert into user(name,email,password,phone_num,age,salary) values ('aditi','aditi@gmail.com','45qw',9988987654,24,32000);
insert into user(name,email,password,phone_num,age,salary) values ('dipti','dipti@gmail.com','kiqw',23347654,27,76000);
insert into user(name,email,password,phone_num,age,salary) values ('shikha','shikha@gmail.com','wer4',34987654,23,65000);
insert into user(name,email,password,phone_num,age,salary) values ('shivani','shivani@gmail.com','5tgf',498777654,22,54000);
insert into user(name,email,password,phone_num,age,salary) values ('sakshi','sakshi@gmail.com','ty54',3498457654,24,23000);
insert into user(name,email,password,phone_num,age,salary) values ('jyoti','jyoti@gmail.com','234r',8987654,21,21000);
insert into user(name,email,password,phone_num,age,salary) values ('vanshika','vanshika@gmail.com','jkil',377987654,25,24000);
insert into user(name,email,password,phone_num,age,salary) values ('manu','manu@gmail.com','23we',1288987654,24,64000);
insert into user(name,email,password,phone_num,age,salary) values ('tanu','tanu@gmail.com','5tgy',34347654,27,43000);


insert into user(name,email,password,phone_num,age,salary) values ('disha','disha@gmail.com','kiqw',2334354,27,76000);
insert into user(name,email,password,phone_num,age,salary) values ('jhanak','jhanak@gmail.com','wer4',34987654,23,35000);
insert into user(name,email,password,phone_num,age,salary) values ('arpita','arpitai@gmail.com','5tgf',498777654,22,56000);
insert into user(name,email,password,phone_num,age,salary) values ('tapisha','tapisha@gmail.com','ty54',3498457654,24,7200);
insert into user(name,email,password,phone_num,age,salary) values ('kannu','kannu@gmail.com','234r',8987654,21,54000);
insert into user(name,email,password,phone_num,age,salary) values ('vanshika','vanshika@gmail.com','jkil',377987654,25,24000);
insert into user(name,email,password,phone_num,age,salary) values ('manu','manu@gmail.com','23we',1288987654,24,64000);
insert into user(name,email,password,phone_num,age,salary) values ('tanu','tanu@gmail.com','5tgy',34347654,27,43000);
