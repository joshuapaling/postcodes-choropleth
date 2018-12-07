-- on reporting database
SELECT postcode, count(*) as value
FROM auth.customer
left join auth.account on auth.customer.fk_account = account.id_account
where tenant = 'scoopon'
group by postcode