SELECT CONCAT(p.prenom,' ',p.nom) AS nomActeur, 
YEAR (CURRENT_DATE()) - YEAR(p.dateNaissance) AS age, 
YEAR (CURRENT_DATE()) - YEAR(p.dateNaissance) - (YEAR (CURRENT_DATE()) -  YEAR(p.dateMort)) AS ageRevolu
FROM personne p
INNER JOIN acteur a ON a.id_personne = p.id_personne 
WHERE YEAR (CURRENT_DATE()) - YEAR(p.dateNaissance) > 50 OR  YEAR (CURRENT_DATE()) - YEAR(p.dateNaissance) - (YEAR (CURRENT_DATE()) -  YEAR(p.dateMort)) > 50
