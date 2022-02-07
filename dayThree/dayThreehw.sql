-- Question 1: List all customers who live in Texas (use JOINs)
SELECT customer.first_name, customer.last_name, address.district
FROM address 
FULL JOIN customer
ON address.address_id = customer.address_id
WHERE address.district = 'Texas'
-- "Jennifer Davis", "Kim Cruz", "Richard Mccrary", "Bryan Hardison", "Ian Still"	"Texas"
-- Answer: 5 ppl



-- Question 2: Get all payments above $6.99 with the Customer's Full Name
SELECT customer.first_name, customer.last_name, payment.amount
FROM customer
FULL JOIN payment
ON payment.customer_id = customer.customer_id
WHERE payment.amount > 6.99
ORDER BY payment.amount;
-- Answer: 1406 payments > 6.99



-- Question 3: Show all customers names who have made payments over $175(use subqueries)
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
)
-- Answer: 6 customers



-- Question 4: List all customers that live in Nepal (use the city table)
SELECT first_name, last_name, country
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
FULL JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';
-- Answer: Just a guy named Kevin (1 person :D)



-- Question 5: Which staff member had the most transactions?
SELECT first_name, last_name, COUNT(payment.staff_id)
FROM staff, payment
WHERE staff.staff_id = payment.staff_id
GROUP BY first_name, last_name
ORDER BY COUNT (payment.staff_id) DESC;
-- Answer: Jon had 7304 transactions. Go Jon!



-- Question 6: How many movies of each rating are there?
SELECT rating, COUNT(film_id)
FROM film
GROUP BY rating
ORDER BY rating;
-- Answer: "G" 178, "PG" 194, "PG-13" 223, "NC-17" 210, "R"	195



-- Question 8: How many free rentals did our stores give away?
SELECT COUNT(payment_id)
FROM payment
WHERE amount = 0;
-- Anser: 24 free rentals