SELECT CONCAT(p.prenom,' ', p.nom) AS listActeur, p.sexe, f.titre, r.nomRole
FROM film f
INNER JOIN jouer j ON j.id_film = f.id_film
INNER JOIN acteur a ON j.id_acteur = a.id_acteur
INNER JOIN personne p ON a.id_personne = p.id_personne
INNER JOIN role r ON j.id_role = r.id_role
WHERE f.id_film = 1;
