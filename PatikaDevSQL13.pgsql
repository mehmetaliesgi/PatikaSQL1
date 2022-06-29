-- Film tablosunda içinde en az 4 adet 'e' karakteri bulunduran film sayısını bulunuz.
SELECT COUNT(*) FROM film
WHERE title ILIKE '%E%E%E%E%';

-- Kategori isimlerini ve kategori başına düşen film sayısını bulan sorguyu yazalım.
SELECT category.name, COUNT(*) FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film_category.film_id = film.film_id
GROUP BY category.name;

-- En çok film bulunan rating kategorisi hangisidir?
SELECT COUNT(*), rating FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Film tablosunda 'K' karakteri ile başlayan en uzun ve replacement_cost en az olan 3 filmi sıralayınız?
SELECT title, length, replacement_cost FROM film
WHERE title LIKE 'K%'
ORDER BY length DESC, replacement_cost ASC
LIMIT 3;

-- En çok alışveriş yapan müşterinin adını bulan sorguyu yazalım.
SELECT DISTINCT(first_name) FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
WHERE payment.customer_id = 
(
    SELECT customer_id FROM payment
	GROUP BY customer_id
	ORDER BY SUM(amount) DESC
	LIMIT 1
);
--ikinci bir yöntem:
SELECT SUM(amount), customer.first_name, customer.last_name FROM customer
JOIN payment ON customer.customer_id = payment.customer_id 
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY SUM(amount) DESC
LIMIT 1;