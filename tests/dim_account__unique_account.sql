select
    sk_account_id,
    count(sk_account_id) as cnt
from {{ ref('dim_account') }}
group by sk_account_id
having cnt > 1