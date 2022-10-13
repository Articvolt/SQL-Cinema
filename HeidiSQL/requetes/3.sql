SELECT f.titre , DATE_FORMAT(f.anneeSortieFrance, '%Y') AS anneeSortie
FROM film f
INNER JOIN realisateur r ON f.id_realisateur = r.id_realisateur
INNER JOIN personne p ON r.id_personne = p.id_personne
WHERE  f.id_realisateur = 3;