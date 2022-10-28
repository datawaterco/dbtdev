{% snapshot bank_code_snapshot %}

    {{
        config(
          target_database='dev',
          target_schema='snapshot',
          strategy='check',
          unique_key='bank_code',
          check_cols=['bank_code'],
        )
    }}

    select * from {{ ref('bank_code') }}

{% endsnapshot %}