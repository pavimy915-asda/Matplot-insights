create database sales;

use sales;

create table sales_analytics (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    state_name VARCHAR(50),
    region VARCHAR(20),
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    discount_percent DECIMAL(5,2),
    sales_amount DECIMAL(10,2),
    profit DECIMAL(10,2),
    shipping_cost DECIMAL(10,2),
    payment_mode VARCHAR(20),
    delivery_status VARCHAR(20),
    customer_rating INT);
    
    
    
insert into sales_analytics values

(1001,'2025-01-05','Arun',28,'Male','Chennai','Tamil Nadu','South',
'Laptop','Electronics',1,65000,5,61750,12000,500,'UPI','Delivered',5),

(1002,'2025-01-06','Meena',32,'Female','Bangalore','Karnataka','South',
'Phone','Electronics',2,30000,10,54000,9000,300,'Card','Delivered',4),

(1003,'2025-01-08','Rahul',25,'Male','Mumbai','Maharashtra','West',
'Shoes','Fashion',3,2500,5,7125,2200,150,'Cash','Delivered',4),

(1004,'2025-01-10','Divya',29,'Female','Hyderabad','Telangana','South',
'Watch','Accessories',2,4500,0,9000,2500,120,'UPI','Delivered',5),

(1005,'2025-01-12','Karthik',35,'Male','Delhi','Delhi','North',
'T-shirt','Fashion',5,1200,15,5100,1700,90,'Card','Returned',3),

(1006,'2025-01-14','Priya',27,'Female','Kolkata','West Bengal','East',
'Tablet','Electronics',1,28000,8,25760,6000,250,'UPI','Delivered',4),

(1007,'2025-01-15','Sanjay',41,'Male','Pune','Maharashtra','West',
'Headphones','Electronics',2,3500,5,6650,1800,100,'Net Banking','Delivered',5),

(1008,'2025-01-18','Anitha',30,'Female','Coimbatore','Tamil Nadu','South',
'Handbag','Fashion',1,5000,10,4500,1200,80,'Card','Delivered',4),

(1009,'2025-01-20','Vikram',26,'Male','Ahmedabad','Gujarat','West',
'Smart Watch','Electronics',1,8000,12,7040,2100,110,'UPI','Cancelled',2),

(1010,'2025-01-22','Sneha',31,'Female','Jaipur','Rajasthan','North',
'Jewellery','Accessories',2,7000,5,13300,4000,140,'Cash','Delivered',5),

(1011,'2025-02-01','Manoj',37,'Male','Lucknow','Uttar Pradesh','North',
'Laptop','Electronics',1,72000,7,66960,14000,550,'Card','Delivered',5),

(1012,'2025-02-03','Keerthi',24,'Female','Chennai','Tamil Nadu','South',
'Saree','Fashion',4,2200,10,7920,2400,100,'UPI','Delivered',4),

(1013,'2025-02-05','Ramesh',45,'Male','Bhopal','Madhya Pradesh','Central',
'TV','Electronics',1,55000,6,51700,11000,450,'Net Banking','Delivered',5),

(1014,'2025-02-08','Pooja',29,'Female','Bangalore','Karnataka','South',
'Phone','Electronics',1,42000,5,39900,8500,280,'UPI','Delivered',4),

(1015,'2025-02-11','Ajay',33,'Male','Patna','Bihar','East',
'Shoes','Fashion',2,3200,8,5888,1600,130,'Cash','Returned',3),

(1016,'2025-02-13','Nisha',26,'Female','Mumbai','Maharashtra','West',
'Perfume','Accessories',3,1800,5,5130,1500,70,'Card','Delivered',4),

(1017,'2025-02-15','Hari',39,'Male','Hyderabad','Telangana','South',
'Refrigerator','Electronics',1,48000,10,43200,9500,600,'UPI','Delivered',5),

(1018,'2025-02-18','Lakshmi',34,'Female','Kochi','Kerala','South',
'Mixer Grinder','Home Appliances',1,6500,5,6175,1800,150,'Card','Delivered',4),

(1019,'2025-02-20','Yash',23,'Male','Surat','Gujarat','West',
'T-shirt','Fashion',6,900,15,4590,1400,90,'Cash','Cancelled',2),

(1020,'2025-02-24','Revathi',36,'Female','Madurai','Tamil Nadu','South',
'Washing Machine','Electronics',1,39000,8,35880,8200,500,'Net Banking','Delivered',5);

select * from sales_analytics;