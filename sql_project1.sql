SELECT* from album
Q1 : Who is the senior most employee based on job title?

 SELECT * FROM  employee
 ORDER BY levels desc
 limit 1
 
 Q2 : Which country have the most invoice?
 
 SELECT COUNT(*)as c,billing_country from invoice
 group by billing_country
 ORDER BY c desc
 
 Q3 : What are the top 3 values of invoice?
 
 SELECT total from invoice
 order by total desc
 limit 3
 
 Q4 : Which city has the best coustomers? we would like to throw a promotional music festival in the city
 we made the most money. write a query that returns one city that has the highest sum of invoice total 
 return both the city name & sum of all invoice totals.
 
 SELECT SUM (total) as invoice_total , billing_city from invoice
 group by billing_city 
 ORDER BY invoice_total desc
 
 Q5: Who is the best customer? The customer who has spent the most money will be declared the best 
 customer. write a query that returns the persons who has spent the most money?
 
 SELECT customer.customer_id,customer.first_name,customer.last_name,SUM(invoice.total)as total from customer
 JOIN invoice on  customer.customer_id = invoice.customer_id
 group by customer.customer_id 
 ORDER BY total desc
 limit 1
 
 
 
 
 