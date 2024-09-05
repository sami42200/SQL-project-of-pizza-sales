-- Join relevant tables to find the category-wise distribution of pizzas.
SELECT 
    category, count(name) from pizza_types

GROUP BY (pizza_types.category);
