-- USE adventureworksdb;  
-- DROP MASTER KEY;  
-- GO

-- DROP DATABASE SCOPED CREDENTIAL cred_adventureworkseede;

-- Step 1: Create a master key for the database
-- CREATE MASTER KEY ENCRYPTION BY PASSWORD ='AdventureWorks@123';

-- Step 2: Create credentials
-- DROP CREDENTIAL IF EXISTS cred_adventureworkseede;
-- CREATE DATABASE SCOPED CREDENTIAL cred_adventureworksbdeede
-- WITH
--     IDENTITY = 'Managed Identity'

-- Step 3: Create external location
CREATE EXTERNAL DATA SOURCE adventureworkseede_silver
WITH
(
    LOCATION = 'https://adventureworkseedesa.blob.core.windows.net/silver',
    CREDENTIAL = cred_adventureworksbdeede
)

CREATE EXTERNAL DATA SOURCE adventureworkseede_gold
WITH
(
    LOCATION = 'https://adventureworkseedesa.blob.core.windows.net/gold',
    CREDENTIAL = cred_adventureworksbdeede
)

-- Step 4: Create External File Format
CREATE EXTERNAL FILE FORMAT adventureworkseede_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

-- Step 5: Create EXternal Table to get data in gold layer from silver layer
CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = adventureworkseede_gold,
    FILE_FORMAT = adventureworkseede_parquet
)
AS
SELECT * FROM gold.sales;

-- SELECT * FROM gold.extsales;