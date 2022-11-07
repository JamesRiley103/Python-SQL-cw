SELECT * FROM movie -- The Query will Select all columns from the movie table
INNER JOIN hasgenre ON movie.id = hasgenre.id -- links the movie records to the hasgenre records where the movie ids match
INNER JOIN genre ON hasgenre.genre_id = genre.genre_id  /* links the hasgenre records to the genre records where the genre ids match
this also allows for the movie table to effectively be linked to the genre table through hasgenre*/
WHERE genre.genre = "Science Fiction" -- Only selects movies with the genre of science fiction
order by popularity desc -- Orders by the vote average column in a descending order 
Limit 10; /* limits the selected records to only 10, due to the ordering
 this will mean only the top movies in terms of popularity will be shown.*/