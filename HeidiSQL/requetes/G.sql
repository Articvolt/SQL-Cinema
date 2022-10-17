SELECT f.titre, r.nomRole, f.anneeSortieFrance, CONCAT(p.prenom,' ',p.nom) AS nomActeur
FROM film f
INNER JOIN jouer j ON j.id_film = f.id_film
INNER JOIN acteur a ON j.id_acteur = a.id_acteur
INNER JOIN role r ON j.id_role = r.id_role
INNER JOIN personne p ON a.id_personne = p.id_personne
WHERE a.id_acteur = 1
ORDER BY f.anneeSortieFrance DESC 
