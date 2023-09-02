
create table employees(
	id number(5) NOT NULL,
	name varchar(50) NOT NULL,
	position varchar(50) NOT NULL,
	department varchar(50) NOT NULL,
	salary number(9,2) NOT NULL,
	primary key(id)
);

create table inventories(
	product_id number(5) NOT NULL,
	product_name varchar(50) NOT NULL,
	quantity number(4) NOT NULL,
	price number(5,2) NOT NULL,
	primary key(product_id)
);

create table customers(
	customer_id number(5) NOT NULL,
	customer_name varchar(50) NOT NULL,
	city varchar(50) NOT NULL,
	primary key(customer_id)
);

create table orders(
	order_id number(5) NOT NULL,
	order_date date NOT NULL,
	total_amount number(7,2) NOT NULL,
	customer_id number(5) NOT NULL,
	primary key(order_id),
	foreign key (customer_id) references customers(customer_id)
);

create table sales(
	order_id number(5) NOT NULL,
	product_id number(5) NOT NULL,
	customer_id number(5) NOT NULL,
	quantity number(5) NOT NULL,
	sale_date date NOT NULL,
	primary key(order_id,product_id),
	foreign key(order_id) references orders(order_id),
	foreign key(customer_id) references customers(customer_id),
	foreign key(product_id) references inventories(product_id)
);
	
	


