-- 5. Customers Who Never Order
select v.customer_id , Count(*) AS count_no_trans
from visits  v
left join transactions  t
on v.visit_id = t.visit_id 
where transaction_id is null
group by v.customer_id ; 