{{
  config(
    materialized='view'
  )
}}


with stg_bank_statement_lines as (

    select statement_number, transaction_code, amount, original_amount from bank_statement_lines
)

select * from stg_bank_statement_lines