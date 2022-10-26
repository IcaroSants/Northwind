with sails_2020 as (
    select sup.supplier_id ,company_name,
    sum(odd.quantity) as qt_2020,
    sum(odd.quantity*odd.unit_price - odd.discount) as arrecadacao_2020
    from suppliers as sup 
    join products as p on sup.supplier_id = p.supplier_id
    join order_details as odd on odd.product_id = p.product_id
    join orders as od on odd.order_id = od.order_id  where DATE_PART(YEAR,od.order_date) = 2020 GROUP BY company_name,sup.supplier_id
),

 sails_2021 as (
    select sup.supplier_id , company_name,
    sum(odd.quantity) as qt_2021,
    sum(odd.quantity*odd.unit_price - odd.discount) as arrecadacao_2021
    from suppliers as sup 
    join products as p on sup.supplier_id = p.supplier_id
    join order_details as odd on odd.product_id = p.product_id
    join orders as od on odd.order_id = od.order_id  where DATE_PART(YEAR,od.order_date) = 2021 GROUP BY company_name,sup.supplier_id
)

select s20.company_name, 
       qt_2020, 
       qt_2021, 
       (qt_2021 - qt_2020) as qt_diferenca, 
       arrecadacao_2020, 
       arrecadacao_2021, 
       (arrecadacao_2021- arrecadacao_2020) as diferenca_arrecadacao  
from sails_2020 as s20 join sails_2021 as s21 on s20.supplier_id = s21.supplier_id 
order by diferenca_arrecadacao DESC;
