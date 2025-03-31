

--if we want to rename  we use below command than will get  an extra coloum with person
select name as person from user
select * , name as person from user

--subquery:query inside  a query
example of subquery
select * from country where population >(select avg(population) from country);
select * from city where countrycode='ind' and population > (select avg(population) from city);
--we are using the subquery to extract the data from one query