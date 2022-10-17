SELECT titre, anneeSortieFrance
FROM film 
WHERE anneeSortieFrance >= (CURRENT_DATE() - interval 5 year) 
ORDER BY anneeSortieFrance DESC  