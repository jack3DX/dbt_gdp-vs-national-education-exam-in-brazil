{{ config(materialized='table', schema='silver_data') }}

select 
    inep.id,
    inep.ch_score,
    inep.mt_score,
    inep.essay_score,
    inep.lc_score,
    inep.cn_score,
    inep.year,
    inep.municipality_code,
    ibge.uf_code,
    ibge.region_code,
    ibge.gdp,
    ibge.gdp_capita
    inep.ethnicity_code,
    inep.sex_code,
    inep.nationality_code,
    inep.is_training,
    inep.conclusion_code,
    inep.teaching_code,
    inep.age_code,
    inep.civil_code
from {{ ref("bronze_inep_data") }} inep
left join {{ ref("bronze_ibge_data")}} ibge
on inep.municipality_code = ibge.municipality_code and inep.year = ibge.year 