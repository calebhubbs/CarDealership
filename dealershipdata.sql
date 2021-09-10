select * 
from salesperson; 

insert into salesperson (sales_id, first_name, last_name)
values 
(1, 'Joe', 'Buck'),
(2, 'John', 'Deere'),
(3, 'Caleb', 'Hubbs')
returning *;

select * 
from inventory;

insert into inventory (dealer_id, make, model, year, msrp, color)
values 
(1, 'Honda', 'Accord', 2018, 25000, 'Maroon'),
(2, 'Ford', 'Mustang', 2004, 30000, 'Black'),
(3, 'Cadillac', 'Escalade', 2020, 40000, 'White')
returning *;

select * 
from parts;

insert into parts (parts_id, part_type, part_cost)
values
(1, 'Tires', '400'),
(2, 'Brakes', '500'),
(3, 'Engine', '2000')
returning *;

select * 
from mechanic;

insert into mechanic (mechanic_id, first_name, last_name)
values 
(1, 'Derrick', 'Hawkins'),
(2, 'Lucas', 'Lang')
returning *;

select * 
from customer;

insert into customer (customer_id, first_name, last_name, number)
values
(1, 'Vitto', 'NoShow', 4210987),
(2, 'Tammie', 'Hall', 42144598),
(3, 'Kevin', 'Ny', 50319487)
returning *;

select * 
from customer_car;

insert into customer_car (car_id, make, model, color, year, customer_id)
values 
(1, 'Ferrari', 'Spyder', 'Red', 2020, 1),
(2, 'Lexus', 'RX', 'Blue', 2018, 2),
(3, 'Toyota', 'Rav4', 'Black', 2017, 3)
returning *;

select * 
from service

insert into service (service_id, service_type, service_cost, car_id, mechanic_id, parts_id)
values 
(1, 'Tires', '400', 1, 2, 1),
(2, 'Engine', '2000', 2, 1, 3),
(3, 'Breakes', '500', 3, 1, 2)
returning *;


select * 
from invoice;

insert into invoice (invoice_id, sales_id, dealer_id, customer_id)
values 
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3)
returning *;