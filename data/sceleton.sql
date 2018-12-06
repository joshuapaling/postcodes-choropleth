SELECT
	cst.postcode,
	count(*) AS "value"
FROM
	ee_orders.items itm
INNER JOIN ee_orders.orders ord ON ord.id_orders = itm.fk_order_id
INNER JOIN auth.customer cst ON ord.fk_customer_id = cst.fk_account
WHERE
	itm.fk_offer = '0060I00000ZmcOjQAJ'
AND cst.postcode IS NOT NULL
GROUP BY cst.postcode