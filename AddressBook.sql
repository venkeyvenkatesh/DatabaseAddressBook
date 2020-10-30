--UC1 Create a database
create database AddressBookSystem;

--UC2 Create AddressBook Table
create table AddressBook(
First_Name varchar(255) not null,
Last_Name varchar(255),
Address varchar(255),
City varchar(20),
State varchar(20),
Zip int,
Phone_Number varchar(20) not null,
email varchar(255)
); 

--UC3 Insert some data into AddressBook table
insert into AddressBook values('kiran','maricherla','Mirthipadu',
'RJY','AP',533293,'+91 9876543210','kiran@gmail.com');

insert into AddressBook values('chaitanya','gali','tuni',
'VSKP','TS',542593,'+91 9866256666','chaitu@gmail.com');

insert into AddressBook values('vijay','chandra','manter',
'HYD','TS',502581,'+91 9492227597','vijay@gmail.com');

insert into AddressBook values('prakash','paidi','guntur',
'BLR','AP',542593,'+91 7085237649','prakash@gmail.com');

insert into AddressBook values('Aravind','Kumar','mandapeta',
'HYD','TS',572310,'+91 8332827528','aravind@gmail.com'); 

insert into AddressBook values('rohith','rajali','katheru',
'MUM','MH',509421,'+91 9492157218','rohtih@gmail.com');

--UC4 Edit the existing contact using FirstName

update AddressBook set Last_Name='padipati' where First_Name='prakash';

--UC5 Delete a contact using FirstName

delete from AddressBook where First_Name='rohith';

--UC6 Retrive the person belonging to a state 

select * from AddressBook where State='AP';

select * from AddressBook where State='TS';

--UC7 Get the state wise count 

select State,count(*) as NoOfContacts from AddressBook group by State;

--UC8 get the State wise sorted contacts

select * from AddressBook  where State='TS' order by First_Name ;

select * from AddressBook;


--UC9 Name the address Book and add type to each contact
alter table AddressBook add 
Name varchar(255),
Type varchar(255);

update AddressBook set Name='Venkey' ;

update AddressBook set Type='Friends' where First_Name='kiran'; 

update AddressBook set Type='Friends' where First_Name='vijay'; 

update AddressBook set Type='Family' where First_Name='chaitanya'; 

update AddressBook set Type='Family' where First_Name='prakash'; 

update AddressBook set Type='Office' where First_Name='Aravind'; 


--UC10 get the count of contacts based on type
select * from AddressBook where Type='Friends';
select * from AddressBook where Type='Family';
select Type,count(*) as NoOfContacts from AddressBook group by Type;


--UC11 Add a person to both friends and family
insert into AddressBook values('kiran','maricherla','Mirthipadu',
'RJY','AP',533293,'+91 9876543210','kiran@gmail.com','Venkey','Family');

