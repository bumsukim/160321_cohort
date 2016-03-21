/*SELECT
	title,
	rating,
	release_year
FROM
	film
Where
	release_year = 2006
	AND
	rating IN ("PG", "G")
ORDER BY
	rating DESC
;
*/

/*SELECT
	Rating,
	COUNT(rating) "갯수", 
	Round(AVG(rental_rate),2) "평균 렌탈료"
FROM
	film
Group By
	Rating
;*/

/*SELECT
	last_name,
	first_name,
	address
FROM
	address,
	customer
Where
	address.address_id = customer.address_id
;*/

/*SELECT
	last_name,
	first_name,
	SUM(payment.amount),
	COUNT(*)
FROM
	customer
		JOIN payment
		ON payment.customer_id = customer.customer_id
		
Group by payment.customer_id
;*/


/*SELECT
	LEFT(payment_date, 7)"월별", 
	SUM(amount)"총합",
	AVG(amount)"평균",
	COUNT(*) "개수"
FROM
	payment
Group by
	1
;*/
/*
SELECT
	LEFT(payment_date, 7)"월별", 
	COUNT(*) "총 렌탈 수",
	COUNT(Distinct customer_id) "렌탈한 유저 수",
	ROUND(COUNT(*)/COUNT(Distinct customer_id),3) "유저별 쳥균 렌탈 수"
FROM
	payment
Group by
	1
;
*/
/*
SELECT
	CONCAT(customer.first_name," ", customer.last_name),
	SUM(payment.amount)
FROM
	customer, payment
WHERE
	customer.customer_id=payment.customer_id
Group By
	customer.customer_id
Order by 2 DESC
LIMIT 10

*/

SELECT *
FROM(
SELECT
	CONCAT(customer.first_name," ", customer.last_name) "이름",
	Count(*) C,
	SUM(payment.amount) "매출"
FROM
	customer, payment
WHERE
	customer.customer_id=payment.customer_id
Group By
	customer.customer_id
Order by 3 DESC
) AS Payment_Per_Customer

WHERE Payment_Per_Customer.C>30

;