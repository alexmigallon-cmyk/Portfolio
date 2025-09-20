--Pedidios por cliente
SELECT c.customer_id, COUNT(o.order_id) AS total_orders
FROM customers AS c
JOIN orders AS o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id
ORDER BY total_orders DESC;
------------------------------------------------------
--Ingresos por pedido.
SELECT oi.order_id, SUM(oi.price) AS revenue
FROM order_items AS oi
GROUP BY oi.order_id
ORDER BY revenue DESC;
------------------------------------------------------
--Ingresos por categoría.
SELECT pct.product_category_name_english AS category, SUM(oi.price) AS revenue,
COUNT(oi.order_id) AS total_orders
FROM order_items AS oi
JOIN products AS p 
ON oi.product_id = p.product_id
JOIN product_category_name_translation AS pct 
ON p.product_category_name = pct.product_category_name
GROUP BY category
ORDER BY revenue DESC;
SELECT pct.product_category_name_english AS category, SUM(oi.price) AS revenue,
COUNT(oi.order_id) AS total_orders
FROM order_items AS oi
JOIN products AS p 
ON oi.product_id = p.product_id
JOIN product_category_name_translation AS pct 
ON p.product_category_name = pct.product_category_name
GROUP BY category
ORDER BY total_orders DESC;
-------------------------------------------------------------------
--Evolución temporal de pedidios.
SELECT strftime('%Y-%m', o.order_purchase_timestamp) AS month,
COUNT(o.order_id) AS total_orders
FROM orders AS o
GROUP BY month
ORDER BY month;
-------------------------------------------------------------------
--Clientes con mayor gasto total.
SELECT c.customer_id, ROUND(SUM(oi.price), 2) AS total_spent, COUNT(o.order_id) AS total_orders
FROM customers AS c
JOIN orders AS o 
ON c.customer_id = o.customer_id
JOIN order_items AS oi 
ON o.order_id = oi.order_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 10;
------------------------------------------------------
--Ticket medio
SELECT ROUND(AVG(order_total), 2) AS avg_ticket
FROM (
    SELECT oi.order_id, SUM(oi.price) AS order_total
    FROM order_items AS oi
    GROUP BY oi.order_id
);
--------------------------------------------------
--Tiempos medios entrega.
SELECT ROUND(AVG(JULIANDAY(o.order_delivered_customer_date) - 
				 JULIANDAY(o.order_purchase_timestamp)), 2) AS avg_delivery_days
FROM orders AS o
WHERE o.order_delivered_customer_date IS NOT NULL;
-----------------------------------------------------------
--Métodos de pago más usados.
SELECT payment_type, COUNT(*) AS num_transactions, ROUND(SUM(payment_value), 2) AS total_value
FROM order_payments
GROUP BY payment_type
ORDER BY total_value DESC;
-------------------------------------------------------------
--Reseñas por categoría.
SELECT pct.product_category_name_english AS category,
       ROUND(AVG(r.review_score), 2) AS avg_score,
       COUNT(r.review_id) AS total_reviews
FROM order_reviews AS r
JOIN orders AS o 
ON r.order_id = o.order_id
JOIN order_items AS oi 
ON o.order_id = oi.order_id
JOIN products AS p 
ON oi.product_id = p.product_id
JOIN product_category_name_translation AS pct 
ON p.product_category_name = pct.product_category_name
GROUP BY category
ORDER BY avg_score DESC;

SELECT pct.product_category_name_english AS category,
       ROUND(AVG(r.review_score), 2) AS avg_score,
       COUNT(r.review_id) AS total_reviews
FROM order_reviews AS r
JOIN orders AS o 
ON r.order_id = o.order_id
JOIN order_items AS oi 
ON o.order_id = oi.order_id
JOIN products AS p 
ON oi.product_id = p.product_id
JOIN product_category_name_translation AS pct 
ON p.product_category_name = pct.product_category_name
GROUP BY category
ORDER BY total_reviews DESC;
----------------------------------------------------------
--Número de pedidos por estado de cliente.
SELECT c.customer_state, COUNT(o.order_id) AS total_orders
FROM customers AS c
JOIN orders AS o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;
--------------------------------------------------------
--Pedidos por mes.
SELECT strftime('%Y-%m', o.order_purchase_timestamp) AS month,
COUNT(o.order_id) AS total_orders,
ROUND(SUM(oi.price), 2) AS revenue
FROM orders AS o
JOIN order_items AS oi 
ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;
----------------------------------------------------
--División de casos según rapidez de envío.
SELECT 
  CASE 
    WHEN (JULIANDAY(o.order_delivered_customer_date) - JULIANDAY(o.order_purchase_timestamp)) < 3 THEN 'Express (<3d)'
    WHEN (JULIANDAY(o.order_delivered_customer_date) - JULIANDAY(o.order_purchase_timestamp)) BETWEEN 3 AND 7 THEN 'Rápido (3-7d)'
    WHEN (JULIANDAY(o.order_delivered_customer_date) - JULIANDAY(o.order_purchase_timestamp)) BETWEEN 8 AND 14 THEN 'Medio (8-14d)'
    WHEN (JULIANDAY(o.order_delivered_customer_date) - JULIANDAY(o.order_purchase_timestamp)) > 14 THEN 'Lento (>14d)'
    ELSE 'En tránsito / sin fecha'
  END AS delivery_bucket,
  COUNT(*) AS num_orders,
  ROUND(AVG(JULIANDAY(o.order_delivered_customer_date) - JULIANDAY(o.order_purchase_timestamp)), 2) AS avg_days
FROM orders AS o
GROUP BY delivery_bucket
ORDER BY num_orders DESC;
----------------------------------------------------------------
--Top categorías por % de ingreso.
SELECT 
  pct.product_category_name_english AS category,
  ROUND(SUM(oi.price), 2) AS revenue,
  ROUND(100.0 * SUM(oi.price) / (
        SELECT SUM(price) FROM order_items
  ), 2) AS pct_total_revenue
FROM order_items AS oi
JOIN products AS p  
ON oi.product_id = p.product_id
JOIN product_category_name_translation AS pct 
ON p.product_category_name = pct.product_category_name
GROUP BY category
HAVING revenue > 0
ORDER BY pct_total_revenue DESC
LIMIT 15;
----------------------------------------------------------------
--Tasa de cancelación por mes.
WITH monthly AS (
  SELECT 
    strftime('%Y-%m', order_purchase_timestamp) AS month,
    COUNT(*) FILTER (WHERE order_status = 'canceled') AS canceled_orders,
    COUNT(*) AS total_orders
  FROM orders
  GROUP BY month
)
SELECT
  month, canceled_orders, total_orders,
  ROUND(100.0 * canceled_orders / NULLIF(total_orders, 0), 2) AS cancel_rate_pct
FROM monthly
ORDER BY month;







