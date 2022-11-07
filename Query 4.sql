SELECT movie.id,movie.title,movie.vote_average FROM movie -- The Query will Select only the id, title and the vote average columns from the movie table
INNER JOIN hasgenre ON movie.id = hasgenre.id -- links the movie records to the hasgenre records where the movie ids match
INNER JOIN genre ON hasgenre.genre_id = genre.genre_id /* links the hasgenre records to the genre records where the genre ids match
this also allows for the movie table to effectively be linked to the genre table through hasgenre*/
INNER JOIN hasspokenlanguage ON movie.id = hasspokenlanguage.id -- links the movie records to the hasspokenlanguage records where the movie ids match
INNER JOIN spokenlanguage ON hasspokenlanguage.spoken_language_iso_code = spokenlanguage.spoken_language_iso_code /* links the hasspokenlanguage records to the spokenlanguage records where the spokenlanguage iso codes match
this also allows for the movie table to effectively be linked to the spokenlanguage table through hasspokenlanguage*/
WHERE genre.genre = "action" AND spokenlanguage.spoken_language_iso_code = "Ja" -- this requires that the movie record is linked to both the action genre and has the spoken language of Japanese which has an ISO code of ja
order by vote_average desc; -- Orders by the vote average column in a descending order 
