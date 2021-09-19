with stg_public_mktplc_views__logistics_ppe as (
    select 
        county,
        product_family,
        quantity_filled,
        shipping_zip_postal_code,
        as_of_date
    from {{ source('public_mktplc_views', 'logistics_ppe')}}
)
select * from stg_public_mktplc_views__logistics_ppe