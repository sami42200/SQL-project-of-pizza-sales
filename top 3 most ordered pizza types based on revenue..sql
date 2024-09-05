-- Determine the top 3 most ordered pizza types based on revenue.
-- order details , pizza_types and orders
SELECT 
    pizza_types.name,
    SUM(order_details.quantity * pizzas.price) AS revinue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY (revinue) DESC
LIMIT 3; 
