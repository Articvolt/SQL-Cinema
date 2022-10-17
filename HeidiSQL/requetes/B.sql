SELECT titre, SEC_TO_TIME(duree*60) AS duree
FROM film 
WHERE duree > 135 
ORDER BY duree DESC 