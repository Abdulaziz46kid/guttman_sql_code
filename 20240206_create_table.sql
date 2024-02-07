-- Drop Database

SELECT '' AS 'INSTALLATION STARTING'  \G

DROP DATABASE IF EXISTS guttman_202db_assign5;
-- Create datbase
CREATE DATABASE IF NOT EXISTS guttman_202db_assign5
CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

SHOW CREATE DATABASE \G

-- Use database
USE guttman_202db_assign5;

-- Create tables
DROP TABLE
IF EXISTS
'vendor';

CREATE TABLE
IF NOT EXISTS vendor ( vendorid     CHAR(2) NOT NULL,
                     vendorname     VARCHAR(25) NOT NULL,
                                    PRIMARY KEY (vendorid)
 );
 SHOW CREATE TABLE vendor \G

 DROP TABLE
  IF EXISTS
'category';

CREATE TABLE
IF NOT EXISTS product   (        productid    CHAR(3) NOT NULL,
                                productname   VARCHAR(25) NOT NULL,
                                productprice  NUMERIC (7,2) NOT NULL,
                                vendorid       CHAR(2) NOT NULL,
                                categoryid     CHAR (2) NOT NULL,
                                              PRIMARY KEY (productid)
                                              FOREIGN KEY (vendorid)
                                              REFERENCES vendor(vendorid)
                                              FOREIGN KEY (categoryid)
                                              REFERENCES category(categoryid);
SHOW CREATE TABLE product \G


DROP TABLE
IF EXISTS `region`;

CREATE TABLE IF NOT EXISTS
region (region      CHAR NOT NULL,
                  regioname   VARCHAR(25)
                              PRIMARY KEY (regionid)
);

SHOW CREATE TABLE region\G

-- DROP TABLE
-- IF EXISTS `region`;
--
-- CREATE TABLE IF NOT EXISTS
-- region (region      CHAR NOT NULL,
--                   regioname   VARCHAR(25)
--                               PRIMARY KEY (regionid)
-- );
--
-- SHOW CREATE TABLE region\G
