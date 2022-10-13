SELECT f.titre, DATE_FORMAT(f.anneeSortieFrance, '%Y') AS anneeSortie, SEC_TO_TIME(f.duree *60) AS duree , CONCAT(p.prenom,' ',p.nom) AS realisateur
FROM film f  
INNER JOIN realisateur r ON f.id_realisateur = r.id_realisateur
INNER JOIN personne p ON r.id_personne = p.id_personne
AND f.id_film = 4;





