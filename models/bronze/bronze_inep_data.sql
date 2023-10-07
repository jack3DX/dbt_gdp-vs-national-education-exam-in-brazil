{{ config(materialized='table', schema='bronze_data') }}

select 
    id,
    school_code,
    ch_score,
    year,
    etinicity_code as ethnicity_code,
    mt_score,
    municipality_code,
    essay_score,
    concluion_year as conclusion_year,
    uf_code,
    uf_name,
    lc_score,
    sex_code,
    nationality_code,
    is_training,
    municipality_name,
    conclusion_code,
    teaching_code,
    age_code,
    cn_score,
    civil_code
from {{ source("redshift_raw_data", "raw_inep_data") }}
