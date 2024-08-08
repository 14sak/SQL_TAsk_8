--TASK_8 (Part2):Having Subquery

select * from sales
select * from customer

--1.Subquery in Sales table using Having clause
--select ship_mode,order_date,count(product_id) from sales
	
select ship_mode ,order_date,count(product_id)as "Product_id_Count"  from sales as s where ship_mode in
	(select ship_mode from sales )group by ship_mode,order_date
	having ship_mode='Standard Class' 



--2.Subquery in Customer Table using Having clause
--select  segment,region,count(customer_id),country  from customer
	
select segment,region,count(customer_id) as "Customer_Count",country from customer as c where country in
(select country from customer )
group by segment,region,country
having country='United States'
 
 