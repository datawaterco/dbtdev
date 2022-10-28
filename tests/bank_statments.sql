select 
statement_number,
count(*) as count
from {{ ref('stage_bank_statements')}}
group by statement_number
having count(*)>1