-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
SELECT name , revenue , category FROM (select category , name , revenue ,
rank() over(partition BY category order by revenue DESC) AS rn from 
(SELECT pizza_types.category ,pizza_types.name , sum(pizzas.price * order_details.quantity)  AS revenue 
FROM pizza_types JOIN pizzas ON
pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details ON 
order_details.pizza_id = pizzas.pizza_id 
group by pizza_types.category , pizza_types.name) as a )as b
WHERE rn <=3;

