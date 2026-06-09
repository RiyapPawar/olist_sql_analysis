-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_olist_project
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `olist_customers_dataset`
--

DROP TABLE IF EXISTS `olist_customers_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `olist_customers_dataset` (
  `customer_id` text,
  `customer_unique_id` text,
  `customer_zip_code_prefix` int DEFAULT NULL,
  `customer_city` text,
  `customer_state` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `olist_geolocation_dataset`
--

DROP TABLE IF EXISTS `olist_geolocation_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `olist_geolocation_dataset` (
  `geolocation_zip_code_prefix` text,
  `geolocation_lat` double DEFAULT NULL,
  `geolocation_lng` double DEFAULT NULL,
  `geolocation_city` text,
  `geolocation_state` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `olist_order_items_dataset`
--

DROP TABLE IF EXISTS `olist_order_items_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `olist_order_items_dataset` (
  `order_id` text,
  `order_item_id` int DEFAULT NULL,
  `product_id` text,
  `seller_id` text,
  `shipping_limit_date` text,
  `price` double DEFAULT NULL,
  `freight_value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `olist_order_payments_dataset`
--

DROP TABLE IF EXISTS `olist_order_payments_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `olist_order_payments_dataset` (
  `order_id` text,
  `payment_sequential` int DEFAULT NULL,
  `payment_type` text,
  `payment_installments` int DEFAULT NULL,
  `payment_value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `olist_order_reviews_dataset`
--

DROP TABLE IF EXISTS `olist_order_reviews_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `olist_order_reviews_dataset` (
  `review_id` text,
  `order_id` text,
  `review_score` int DEFAULT NULL,
  `review_comment_title` text,
  `review_comment_message` text,
  `review_creation_date` text,
  `review_answer_timestamp` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `olist_orders_dataset`
--

DROP TABLE IF EXISTS `olist_orders_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `olist_orders_dataset` (
  `order_id` text,
  `customer_id` text,
  `order_status` text,
  `order_purchase_timestamp` text,
  `order_approved_at` text,
  `order_delivered_carrier_date` text,
  `order_delivered_customer_date` text,
  `order_estimated_delivery_date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `olist_products_dataset`
--

DROP TABLE IF EXISTS `olist_products_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `olist_products_dataset` (
  `product_id` text,
  `product_category_name` text,
  `product_name_lenght` int DEFAULT NULL,
  `product_description_lenght` int DEFAULT NULL,
  `product_photos_qty` int DEFAULT NULL,
  `product_weight_g` int DEFAULT NULL,
  `product_length_cm` int DEFAULT NULL,
  `product_height_cm` int DEFAULT NULL,
  `product_width_cm` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `olist_sellers_dataset`
--

DROP TABLE IF EXISTS `olist_sellers_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `olist_sellers_dataset` (
  `seller_id` text,
  `seller_zip_code_prefix` text,
  `seller_city` text,
  `seller_state` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `order_summary_by_city`
--

DROP TABLE IF EXISTS `order_summary_by_city`;
/*!50001 DROP VIEW IF EXISTS `order_summary_by_city`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_summary_by_city` AS SELECT 
 1 AS `city`,
 1 AS `total_orders`,
 1 AS `avg_payment`,
 1 AS `total_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product_category_name_translation`
--

DROP TABLE IF EXISTS `product_category_name_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_name_translation` (
  `ï»¿product_category_name` text,
  `product_category_name_english` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `product_performance`
--

DROP TABLE IF EXISTS `product_performance`;
/*!50001 DROP VIEW IF EXISTS `product_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_performance` AS SELECT 
 1 AS `category`,
 1 AS `orders`,
 1 AS `avg_price`,
 1 AS `avg_rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `order_summary_by_city`
--

/*!50001 DROP VIEW IF EXISTS `order_summary_by_city`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_summary_by_city` AS select `c`.`customer_city` AS `city`,count(distinct `o`.`order_id`) AS `total_orders`,round(avg(`p`.`payment_value`),2) AS `avg_payment`,round(sum(`p`.`payment_value`),2) AS `total_revenue` from ((`olist_orders_dataset` `o` join `olist_customers_dataset` `c` on((`o`.`customer_id` = `c`.`customer_id`))) join `olist_order_payments_dataset` `p` on((`o`.`order_id` = `p`.`order_id`))) group by `c`.`customer_city` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_performance`
--

/*!50001 DROP VIEW IF EXISTS `product_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_performance` AS select `p`.`product_category_name` AS `category`,count(distinct `oi`.`order_id`) AS `orders`,round(avg(`oi`.`price`),2) AS `avg_price`,round(avg(`r`.`review_score`),2) AS `avg_rating` from ((`olist_products_dataset` `p` join `olist_order_items_dataset` `oi` on((`p`.`product_id` = `oi`.`product_id`))) left join `olist_order_reviews_dataset` `r` on((`oi`.`order_id` = `r`.`order_id`))) group by `p`.`product_category_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-09 21:35:14
