-- Join the necessary tables to find the total quantity of each pizza category ordered.
-- THE COMMON BETWEEN ORDERS AND ORDERS_ DETAILS IS 'ORDER_ID"
-- THE COMMON BETWEEN PIZZA_TYPES AND ORDERS ARE NOTHING 
-- THE COMMON BETWEEN PIZZA_TYPES AND ORDER_DETAILS ARE NOTHING 
-- COMMON BETWEEN PIZZA TYPES AND PIZZAS ARE "PIZZA TYPE ID"

SELECT 
    sum(order_details.quantity), pizza_types.category
FROM
    orders
        JOIN
    order_details ON orders.order_id = order_details.order_id
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY (pizza_types.category);



