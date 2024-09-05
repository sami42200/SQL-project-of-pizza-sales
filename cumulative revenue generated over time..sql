-- Analyze the cumulative revenue generated over time.

SELECT order_date , sum(revenue) Over (ORDER BY order_date ) as cum_rev
 from(SELECT orders.order_date , sum(pizzas.price * order_details.quantity) as revenue
FROM orders JOIN order_details
ON orders.order_id = order_details.order_id
JOIN pizzas ON pizzas.pizza_id = order_details.pizza_id
group by orders.order_date )as sales ;