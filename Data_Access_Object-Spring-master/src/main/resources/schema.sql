create table if not exists netology.CUSTOMERS
(
  id serial primary key,
  name varchar not null,
  surname varchar not null,
  age int     not null,
  phone_number varchar not null
);


create table if not exists netology.ORDERS
(
  id serial primary key,
  date timestamp not null,
  customer_id int,
  product_name varchar not null,
  amount int not null,
  foreign key (customer_id) references netology.CUSTOMERS(id)
);


insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Rodion', 'Kaduymov', 36, +79000248128);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Alina', 'Fausova', 21, +79824561895);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Natalya', 'Fetisova', 35, +79000547625);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Alia', 'Naimbanbaeva', 38, +794554278654);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Anisa', 'Musina', 36, +79078954367);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'laptop', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'android', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'laptop', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'android', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'android', 2);