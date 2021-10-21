with orders as (
SELECT customer_id, MIN(created_at) AS first_order_at, COUNT(id) AS order_count
FROM analytics-engineers-club.coffee_shop.orders
GROUP BY 1) 



SELECT id as customer_id, name, email, o.first_order, o.order_count
FROM analytics-engineers-club.coffee_shop.customers c 
join orders o on o.customer_id = c.id 
