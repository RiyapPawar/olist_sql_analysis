KPI 1 [Weekday vs Weekend Payment Statistics]
 SELECT
 CASE
 WHEN DAYOFWEEK(o.order_purchase_timestamp) IN (1,7) 
 THEN 'Weekend'
 ELSE 'Weekday' 
 END AS day_type, 
 COUNT(o.order_id) AS total_orders, 
 ROUND(SUM(p.payment_value), 2) AS total_payment, 
 ROUND(AVG(p.payment_value), 2) AS avg_payment
 FROM ecommerce_olist_project.olist_orders_dataset o 
 JOIN ecommerce_olist_project.olist_order_payments_dataset p
 ON o.order_id = p.order_id 
 GROUP BY day_type; 
 
 KPI 2 [5-Star Review + Credit Card Payments] 
 SELECT p.payment_type, 
 COUNT(DISTINCT o.order_id) AS total_5star_orders, 
 ROUND(SUM(p.payment_value), 2) AS total_revenue 
 FROM ecommerce_olist_project.olist_orders_dataset o 
 JOIN ecommerce_olist_project.olist_order_reviews_dataset r ON o.order_id = r.order_id
 JOIN ecommerce_olist_project.olist_order_payments_dataset p ON o.order_id = p.order_id 
 WHERE r.review_score = 5 AND p.payment_type = 'credit_card'
 GROUP BY p.payment_type;
 
 KPI 3 [Average Delivery Days by Product Category]
 SELECT pr.product_category_name, 
 COUNT(DISTINCT o.order_id) AS total_orders, 
 ROUND(AVG(DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp)), 2) AS                avg_delivery_days 
 FROM ecommerce_olist_project.olist_orders_dataset o 
 JOIN ecommerce_olist_project.olist_order_items_dataset oi ON o.order_id = oi.order_id 
 JOIN ecommerce_olist_project.olist_products_dataset pr ON oi.product_id = pr.product_id
 WHERE o.order_delivered_customer_date IS NOT NULL 
 GROUP BY pr.product_category_name 
 ORDER BY avg_delivery_days 
 DESC;
 
 KPI 4 [Average Price & Payment in Sao Paulo]
 SELECT c.customer_city, 
 COUNT(DISTINCT o.order_id) AS total_orders, 
 ROUND(AVG(oi.price), 2) AS avg_item_price, ROUND(AVG(p.payment_value), 2) AS avg_payment_value 
 FROM ecommerce_olist_project.olist_orders_dataset o 
 JOIN ecommerce_olist_project.olist_customers_dataset c ON o.customer_id = c.customer_id 
 JOIN ecommerce_olist_project.olist_order_items_dataset oi ON o.order_id = oi.order_id 
 JOIN ecommerce_olist_project.olist_order_payments_dataset p ON o.order_id = p.order_id
 WHERE c.customer_city = 'sao paulo' 
 GROUP BY c.customer_city;
 
 KPI 5 [Shipping Days vs Review Score (Correlation)]
 SELECT ROUND(AVG(DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp)), 0) AS avg_shipping_days, 
 ROUND(AVG(r.review_score), 2) AS avg_review_score, 
 COUNT(DISTINCT o.order_id) AS total_orders
 FROM ecommerce_olist_project.olist_orders_dataset o 
 JOIN ecommerce_olist_project.olist_order_reviews_dataset r ON o.order_id = r.order_id 
 WHERE o.order_delivered_customer_date IS NOT NULL AND r.review_score IS NOT NULL 
 GROUP BY ROUND(DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp) / 5, 0);
