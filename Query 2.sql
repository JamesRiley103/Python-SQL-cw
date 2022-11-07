SELECT * FROM movie -- The Query will Select all columns from the movie table
WHERE title like "%England%" -- This will allow the select to only select records with "England" in their titles
order by vote_average desc; -- Orders by the vote average column in a descending order

