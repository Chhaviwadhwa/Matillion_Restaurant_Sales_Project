--PROJECT METADATA

CREATE DATABASE RESTAURANTSALES;

DROP SCHEMA IF EXISTS RESTAURANT_METADATA;
CREATE SCHEMA RESTAURANT_METADATA;
USE RESTAURANT_METADATA;
USE WAREHOUSE COMPUTE_WH;

create table TABLE_LOAD (
    TABLE_ID  SMALLINT ,
    TABLE_NAME VARCHAR(50),  --- change to src _table names 
    LOAD_TYPE CHAR,
    LAST_LOAD_DATETIME DATETIME, 
    IS_ACTIVE BOOLEAN
    );

    
INSERT INTO TABLE_LOAD_METADATA
VALUES
(1,'MENU_ITEMS','R','2000-11-20 01:08:01.440 -0800',1),
(2,'ORDER_DETAILS','I','2000-11-20 01:08:01.440 -0800',1)  ; 


DROP SCHEMA IF EXISTS restaurant_db;

--project src tables
DROP SCHEMA IF EXISTS restaurant_db;
CREATE SCHEMA restaurant_db;
USE restaurant_db;

----------------------------------------------------------------------------------------
-- Table structure for table `order_details`
---
USE RESTAURANTSALES.RESTAURANT_DB;
CREATE TABLE RESTAURANTSALES.RESTAURANT_DB.ORDER_DETAILS (
  order_details_id SMALLINT NOT NULL,
  order_id SMALLINT NOT NULL,
  order_date DATE,
  order_time TIME,
  item_id VARCHAR(10),
  PRIMARY KEY (order_details_id)
);

--
-- Table structure for table `menu_items`
--

CREATE TABLE RESTAURANTSALES.RESTAURANT_DB.MENU_ITEMS (
  menu_item_id SMALLINT NOT NULL,
  item_name VARCHAR(45),
  category VARCHAR(45),
  price DECIMAL(5,2),
  PRIMARY KEY (menu_item_id)
);

----------------------------------------------------------------------
-- Project_destination_ tables
DROP SCHEMA IF EXISTS restaurant_db_DES;
CREATE SCHEMA restaurant_db_DES;
USE restaurant_db_DES;


--
-- Table structure for table `order_details`
--

CREATE TABLE RESTAURANTSALES.RESTAURANT_DB_DES.ORDER_DETAILS_DES (
  order_details_id SMALLINT NOT NULL,
  order_id SMALLINT NOT NULL,
  order_date DATE,
  order_time TIME,
  item_id VARCHAR(10),
  PRIMARY KEY (order_details_id)
);

--
-- Table structure for table `menu_items`
--
CREATE TABLE RESTAURANTSALES.RESTAURANT_DB_DES.MENU_ITEMS_DES (
  menu_item_id SMALLINT NOT NULL,
  item_name VARCHAR(45),
  category VARCHAR(45),
  price DECIMAL(5,2),
  PRIMARY KEY (menu_item_id)
);

--Project_srcdata
DB scripts provided
