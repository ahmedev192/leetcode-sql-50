-- 10. Rising Temperature
/* Write your T-SQL query statement below */
select w1.id 
from weather w1 
left join weather w2 
on w2.recordDate = DATEADD(day, -1, w1.recordDate)
where w1.temperature  > w2.temperature ;