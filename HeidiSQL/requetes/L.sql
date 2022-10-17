SELECT CONCAT(p.prenom,' ',p.nom) AS nomActeur
FROM personne p 
INNER JOIN acteur a ON p.id_personne = a.id_personne
INNER JOIN jouer j ON j.id_acteur = a.id_acteur
GROUP BY nomActeur
HAVING COUNT(j.id_acteur)>= 3

