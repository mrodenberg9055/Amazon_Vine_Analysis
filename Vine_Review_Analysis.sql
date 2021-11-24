SELECT review_id
	, star_rating
	, helpful_votes
	, total_votes
	, vine
	, verified_purchase
INTO vine_table_total_votes
FROM vine_table
WHERE total_votes >= 20

SELECT review_id
	, star_rating
	, helpful_votes
	, total_votes
	, vine
	, verified_purchase
INTO helpful_votes
FROM vine_table_total_votes
WHERE CAST(helpful_votes AS FLOAT) / CAST(total_votes AS FLOAT) >=0.5

SELECT review_id
	, star_rating
	, helpful_votes
	, total_votes
	, vine
	, verified_purchase
INTO vine_votes
FROM helpful_votes
WHERE vine = 'Y'

SELECT review_id
	, star_rating
	, helpful_votes
	, total_votes
	, vine
	, verified_purchase
INTO non_vine_votes
FROM helpful_votes
WHERE vine = 'N'


WITH reviews
AS 
(SELECT review_id
	, CASE
		WHEN star_rating = 5
			THEN 1
		ELSE 0 
		END AS five_star_rating
	, CASE 
		WHEN vine = 'Y'
			THEN 1
 		ELSE 0
 	END AS paid
 	, CASE 
		WHEN vine = 'Y'
 		AND star_rating = 5
			THEN 1
 		ELSE 0
 	END AS paid_five_star
	, CASE
 		WHEN vine = 'N'
			THEN 1
		ELSE 0
	END AS unpaid
 	, CASE
 		WHEN vine = 'N'
 		AND star_rating = 5
			THEN 1
		ELSE 0
	END AS unpaid_five_star
FROM vine_table
)


SELECT COUNT(review_id) AS total_reviews
	, SUM(five_star_rating) AS total_five_star_rating
	, SUM(COALESCE(paid, 0)) AS total_paid
	, SUM(COALESCE(paid_five_star, 0)) paid_five_star
	, SUM(COALESCE(paid_five_star, 0)) / SUM(COALESCE(paid, 0))::FLOAT AS paid_percent
	, SUM(COALESCE(unpaid_five_star, 0)) AS unpaid_five_star
	, SUM(COALESCE(unpaid, 0)) AS total_unpaid
	, SUM(COALESCE(unpaid_five_star, 0)) / SUM(COALESCE(unpaid, 0))::FLOAT  AS unpaid_percent
FROM reviews

