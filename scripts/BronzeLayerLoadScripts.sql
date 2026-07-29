-- =====================================================
-- Bronze Layer Load Script
-- =====================================================
USE bronzelayer;

-- Ensure local file loading is enabled for this session
SET GLOBAL local_infile = 1;

-- =====================================================
-- Load CRM Customer Info
-- =====================================================
TRUNCATE TABLE crm_cust_info;

LOAD DATA LOCAL INFILE 'C:/csv/BronzeLayer/cust_info.csv'
INTO TABLE crm_cust_info
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- =====================================================
-- Load CRM Product Info
-- =====================================================
TRUNCATE TABLE crm_prd_info;

LOAD DATA LOCAL INFILE 'C:/csv/BronzeLayer/prd_info.csv'
INTO TABLE crm_prd_info
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- =====================================================
-- Load CRM Sales Details
-- =====================================================
TRUNCATE TABLE crm_sales_details;

LOAD DATA LOCAL INFILE 'C:/csv/BronzeLayer/sales_details.csv'
INTO TABLE crm_sales_details
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- =====================================================
-- Load ERP Customer AZ12
-- =====================================================
TRUNCATE TABLE erp_cust_az12;

LOAD DATA LOCAL INFILE 'C:/csv/BronzeLayer/CUST_AZ12.csv'
INTO TABLE erp_cust_az12
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- =====================================================
-- Load ERP Location A101
-- =====================================================
TRUNCATE TABLE erp_loc_a101;

LOAD DATA LOCAL INFILE 'C:/csv/BronzeLayer/LOC_A101.csv'
INTO TABLE erp_loc_a101
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- =====================================================
-- Load ERP Product Category G1V2
-- =====================================================
TRUNCATE TABLE erp_px_cat_g1v2;

LOAD DATA LOCAL INFILE 'C:/csv/BronzeLayer/PX_CAT_G1V2.csv'
INTO TABLE erp_px_cat_g1v2
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- =====================================================
-- Verify Loads
-- =====================================================
SELECT COUNT(*) AS cust_info_count     FROM crm_cust_info;
SELECT COUNT(*) AS prd_info_count      FROM crm_prd_info;
SELECT COUNT(*) AS sales_details_cnt   FROM crm_sales_details;
SELECT COUNT(*) AS erp_cust_az12_cnt   FROM erp_cust_az12;
SELECT COUNT(*) AS erp_loc_a101_cnt    FROM erp_loc_a101;
SELECT COUNT(*) AS erp_px_cat_g1v2_cnt FROM erp_px_cat_g1v2;

SHOW TABLES FROM bronzelayer;