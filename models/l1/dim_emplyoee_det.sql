{{
    config(materialized='table',alias='Tbl_employee_det')
}}

with emp as
(
    select * from {{ ref('empdeta') }}
),

final as
(
select EMPLOYEE_ID,
FIRST_NAME,
LAST_NAME,
EMAIL,
SALARY,
DEPARTMENT_ID,
ORDER_ID
from emp

)
select * from final