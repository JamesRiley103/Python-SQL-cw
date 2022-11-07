SELECT movie.id,movie.title,movie.vote_average FROM movie -- The Query will Select only the id, title and the vote average columns from the movie table
INNER JOIN hasgenre ON movie.id = hasgenre.id -- links the movie records to the hasgenre records where the movie ids match
INNER JOIN genre ON hasgenre.genre_id = genre.genre_id /* links the hasgenre records to the genre records where the genre ids match
this also allows for the movie table to effectively be linked to the genre table through hasgenre*/
WHERE genre.genre = "action" -- this will ensure that only movie records which link to the action genre will be selected
order by vote_average desc; -- Orders by the vote average column in a descending order 

