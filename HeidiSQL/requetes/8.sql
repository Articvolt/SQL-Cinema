SELECT COUNT(DISTINCT f.id_film) AS nombreFilm, CONCAT(p.prenom,' ',p.nom) AS realisateur
FROM film f
INNER JOIN realisateur r ON f.id_realisateur = r.id_realisateur
INNER JOIN personne p ON r.id_personne = p.id_personne
GROUP BY f.id_realisateur
ORDER BY nombreFilm DESC
