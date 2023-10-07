{{ config(materialized='table', schema='bronze_data') }}

select 
    municipality_code,
    municipality_name,
    year,
    gdp,
    gdp_capita,
    region_name,
    uf_code,
    uf_name,
    uf_acronym,
    region_code
from {{ source("redshift_raw_data", "raw_ibge_data") }}
