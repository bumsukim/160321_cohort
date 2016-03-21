Drop temporary table if exists First_Rental_Table;
create temporary table First_Rental_Table

SELECT
	r.customer_id ID,
	Left(Min(r.rental_date),7) First_Rental
FROM
	rental r
Group By 1

;