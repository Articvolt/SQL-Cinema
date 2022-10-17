SELECT CONCAT(prenom, ' ', nom) AS personne
FROM personne p
INNER JOIN realisateur r ON p.id_personne = r.id_personne
INNER JOIN acteur a ON p.id_personne = a.id_personne
