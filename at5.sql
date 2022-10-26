WITH CATEGORIES_RESULT AS ( select  c.category_name, 
    DATE_PART(YEAR,od.order_date) as year,
    sum(odd.quantity * odd.unit_price - discount) as arrecadacao,
    row_number() over (partition by year order by year, arrecadacao) as res
    from products as p 
    join categories as c on p.category_id = c.category_id
    join order_details as odd on odd.product_id = p.product_id
    join orders as od on odd.order_id = od.order_id  group by c.category_name, year order by year ASC,  arrecadacao DESC
)

SELECT category_name, year, arrecadacao from categories_result where res > 3;