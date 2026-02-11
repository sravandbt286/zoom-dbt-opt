{{ config(materialized='table',
        snowflake_warehouse='FINOPS_WH_SMALL') }}

-- dbt_model: stg_orders
SELECT
    o_orderkey AS order_id,
    o_totalprice AS order_amount,
    o_orderdate AS order_date
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS
