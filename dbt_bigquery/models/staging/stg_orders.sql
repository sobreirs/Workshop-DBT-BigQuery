with source_2023 as (

    select *
    from {{ source('ecom', 'raw_orders_2023') }}

),

source_2024 as (

    select *
    from {{ source('ecom', 'raw_orders_2024') }}

),

combined_sources as (

    select * from source_2023

    union all

    select * from source_2024

),

renamed as (

    select

        ---------- ids
        id as order_id,
        store_id as location_id,
        customer as customer_id,

        ---------- numerics
        subtotal as subtotal_cents,
        tax_paid as tax_paid_cents,
        order_total as order_total_cents,

        ---------- conversão de centavos para dólares
        {{ cents_to_dollars('subtotal') }} as subtotal,
        {{ cents_to_dollars('tax_paid') }} as tax_paid,
        {{ cents_to_dollars('order_total') }} as order_total,

        ---------- timestamps
        DATE_TRUNC(DATE(ordered_at), DAY) as ordered_at

    from combined_sources

)

select * from renamed