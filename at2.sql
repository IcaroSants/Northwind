select last_name+' '+first_name as nome, 
count(od.order_id) as QuaNtidade_vendas,
sum(unit_price * quantity - discount) as Arrecadacao
from employees as e  
left join orders as od on e.employee_id = od.employee_id 
left join order_details as odd on od.order_id = odd.order_id 
WHERE DATE_PART(YEAR, od.order_date) = 2022 
GROUP BY nome
ORDER BY arrecadacao DESC;