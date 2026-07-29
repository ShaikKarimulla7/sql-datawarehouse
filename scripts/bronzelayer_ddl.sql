-- =====================================
-- Bronze Layer DDL Script
-- =====================================

CREATE DATABASE IF NOT EXISTS bronzelayer;

USE bronzelayer;

-- CRM Customer Table
CREATE TABLE IF NOT EXISTS crm_cust_info (
    cst_id INT,
    cst_key VARCHAR(50),
    cst_firstname VARCHAR(100),
    cst_lastname VARCHAR(100),
    cst_marital_status VARCHAR(20),
    cst_gndr CHAR(1),
    cst_create_date DATE
);

-- CRM Product Table
CREATE TABLE IF NOT EXISTS crm_prd_info (
    prd_id INT,
    prd_key VARCHAR(50),
    prd_nm VARCHAR(150),
    prd_cost DECIMAL(10,2),
    prd_line VARCHAR(50),
    prd_start_dt DATE,
    prd_end_dt DATE
);

-- CRM Sales Table
CREATE TABLE IF NOT EXISTS crm_sales_details (
    sls_ord_num VARCHAR(50),
    sls_prd_key VARCHAR(50),
    sls_cust_id INT,
    sls_order_dt DATE,
    sls_ship_dt DATE,
    sls_due_dt DATE,
    sls_sales DECIMAL(12,2),
    sls_quantity INT,
    sls_price DECIMAL(12,2)
);
-- ERP Location Table
CREATE TABLE IF NOT EXISTS erp_loc_a101 (
    cid VARCHAR(50),
    cntry VARCHAR(50)
);

-- ERP Customer Table
CREATE TABLE IF NOT EXISTS erp_cust_az12 (
    cid VARCHAR(50),
    bdate DATE,
    gen VARCHAR(50)
);

-- ERP Product Category Table
CREATE TABLE IF NOT EXISTS erp_px_cat_g1v2 (
    id VARCHAR(50),
    cat VARCHAR(50),
    subcat VARCHAR(50),
    maintenance VARCHAR(50)
);

alter table crm_prod_infocrm_prd_info
rename to crm_prd_info;