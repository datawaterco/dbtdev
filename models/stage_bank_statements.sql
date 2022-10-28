{{
  config(
    materialized='view'
  )
}}


with stg_bank_statements as (

    select bank_code, account_number, statement_number from bank_statements
)

select bank_code, account_number, statement_number from stg_bank_statements
