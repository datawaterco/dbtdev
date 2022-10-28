with bank_statements as (
    select * from {{ ref('stage_bank_statements')}}
),
bank_statement_lines as (
    select * from {{ ref('stage_bank_statement_lines')}}
),
final as (
    select * from bank_statements join bank_statement_lines
    using (statement_number)
)

select * from final

