-- Create Calendar View
DROP VIEW IF EXISTS gold.calendar;

CREATE VIEW gold.calendar
AS SELECT * 
FROM
    OPENROWSET(
        BULK 'https://adventureworkseedesa.blob.core.windows.net/silver/Calender/',
        FORMAT = 'PARQUET'
    ) as calendar_query;

-- Create Customers View
DROP VIEW IF EXISTS gold.customers;

CREATE VIEW gold.customers
AS SELECT *
FROM
    OPENROWSET(
        BULK 'https://adventureworkseedesa.blob.core.windows.net/silver/Customers/',
        FORMAT = 'PARQUET'
    ) as customers_query;

-- Create Product Categories View
DROP VIEW IF EXISTS gold.product_categories;

CREATE VIEW gold.product_categories
AS SELECT *
FROM
    OPENROWSET(
        BULK 'https://adventureworkseedesa.blob.core.windows.net/silver/Product_Categories/',
        FORMAT = 'PARQUET'
    ) as product_categories_query;

-- Create Product Subcategories View
DROP VIEW IF EXISTS gold.product_subcategories;

CREATE VIEW gold.product_subcategories
AS SELECT *
FROM
    OPENROWSET(
        BULK 'https://adventureworkseedesa.blob.core.windows.net/silver/Product_Subcategories/',
        FORMAT = 'PARQUET'
    ) as product_subcategories_query;

-- Create Products View
DROP VIEW IF EXISTS gold.products;

CREATE VIEW gold.products
AS SELECT *
FROM
    OPENROWSET(
        BULK 'https://adventureworkseedesa.blob.core.windows.net/silver/Products/',
        FORMAT = 'PARQUET'
    ) as products_query;

-- Create Returns View
DROP VIEW IF EXISTS gold.returns;

CREATE VIEW gold.returns
AS SELECT *
FROM
    OPENROWSET(
        BULK 'https://adventureworkseedesa.blob.core.windows.net/silver/Returns/',
        FORMAT = 'PARQUET'
    ) as returns_query;

-- Create Sales View
DROP VIEW IF EXISTS gold.sales;

CREATE VIEW gold.sales
AS SELECT *
FROM
    OPENROWSET(
        BULK 'https://adventureworkseedesa.blob.core.windows.net/silver/Sales/',
        FORMAT = 'PARQUET'
    ) as sales_query;

-- Create Territories View
DROP VIEW IF EXISTS gold.territories;

CREATE VIEW gold.territories
AS SELECT *
FROM
    OPENROWSET(
        BULK 'https://adventureworkseedesa.blob.core.windows.net/silver/Territories/',
        FORMAT = 'PARQUET'
    ) as territories_query;