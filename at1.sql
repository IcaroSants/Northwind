SELECT product_name, quantity,p.unit_price as price_table, od.unit_price as price_sales, (p.unit_price-od.unit_price) as  diference_price 
FROM products AS p left join order_details as od ON p.product_id = od.product_id WHERE price_table != price_sales order by diference_price DESC 