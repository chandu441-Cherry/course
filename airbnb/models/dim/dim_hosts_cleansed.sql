{{
  config(
    materialized = 'view'
  )
}}
with src_hosts AS (
Select * From {{ ref('src_hosts') }}
--Where host_id='45740535'
)
Select
    host_id,
    NVL(host_name,'Anonymous') as host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    src_hosts