-- Question 1: How many actors are there with the last name ‘Wahlberg’?
-- Answer: 2 (It's mark(the famous one) and Donnie(his brother) who was on Blue Bloods)
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';


-- Question 2: How many payments were made between $3.99 and $5.99?
-- Answer: 5607
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Question 3: What film does the store have the most of? (search in inventory)
-- Answer: 72 have the same ammount of inventory at the top (not sure if that's correct) ?
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;


-- Question 4: How many customers have the last name ‘William’?
-- Answer: 0
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William'

-- Question 5: What store employee (get the id) sold the most rentals?
-- Answer: id 2
SELECT staff_id, COUNT(amount)
FROM rental
GROUP BY staff_id
ORDER BY COUNT  DESC;

-- Question 6: How many different district names are there?
-- Answer: 378
SELECT COUNT(district)
FROM address

-- Question 7: What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: id 508
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

-- Question 8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer: 13
SELECT store_id, COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es' AND store_id = '1'


-- Question 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
-- Answer: 3 (0.99, 2.99, 4.99)
SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250

-- Question 10: Within the film table, how many rating categories are there? And what rating has the most movies total?
-- Answer: 5 ratings/ PG-13 has most films
SELECT rating, COUNT(title)
FROM film
GROUP BY rating;