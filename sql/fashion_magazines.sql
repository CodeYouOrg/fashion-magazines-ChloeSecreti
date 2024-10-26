SELECT customer_name AS Customer, PRINTF("$%.2f", sum(price_per_month * subscription_length)) AS "Amount Due"
FROM customers
JOIN orders, subscriptions
    ON orders.customer_id = customers.customer_id AND orders.subscription_id = subscriptions.subscription_id
    WHERE order_status = 'unpaid' AND subscriptions.description = 'Fashion Magazine'   
     GROUP BY customers.customer_name


