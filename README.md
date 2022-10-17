# SQL-Cinema

Vous avez en charge de gérer une base de données de films, de genres cinématographiques et d’acteurs / actrices.

Les  films seront identifiés par un identifiant unique, leur titre, leur année de sortie en France, leur durée  (en  minutes)ainsi que leur réalisateur (unique).Un résumé  du  film  (synopsis)  pourra éventuellement être renseigné, une note (sur 5)ainsi qu’une affiche dufilm.

Chaque film pourra posséder un ou plusieurs genrescinématographiques  (science-fiction, aventure, action, ...) identifiés par un numéro unique et un libellé.

Votre base de données devra recenser également les acteurs de chacun desfilms. On désire connaître le nom, le prénom, le sexe et la date de naissance de l’acteur ainsi que le rôle (nom du personnage) joué par l’acteur dans le(s)film(s)concerné(s).

## Travail à réaliser:

1-Réalisez le MCD d’une telle gestion des données (le MLD et le script SQL seront également généré avec JMerise).


2-Créez un script d’insertion de données grâce aux échantillons de données fournis en annexe (il est évident que vous pouvez prévoir plus de données que dans l’exemple).


3-Réalisez les requêtes SQL suivantes avec PhpMyAdmin (rédigez les requêtes dans un document Word afin de garder un historique de celles-ci): entre parenthèse les champs servant de référence aux requêtes.
 
 * Informations d’un film(id_film): titre, année, durée (au format HH:MM) et réalisateur.
  * Liste des films dont la durée excède 2h15 classés par durée (du plus long au plus court.
  * Liste des films d’un réalisateur (en précisant l’année de sortie).
  * Nombre de films par genre (classés dans l’ordre décroissant).
  * Nombre de films par réalisateur (classés dans l’ordre décroissant).
  * Casting d’un film en particulier (id_film): nom, prénom des acteurs + sexe.
  * Films tournés par un acteur en particulier (id_acteur)avec leur rôle et l’année de sortie (du film le plus récent au plus ancien).
  * Listes des personnes qui sont à la fois acteurs et réalisateurs.
  * Liste des films qui ont moins de 5 ans (classés du plus récent au plus ancien).
  * Nombred’hommes et de femmes parmi les acteurs.
  * Liste des acteurs ayant plus de 50 ans (âge révolu et non révolu).
  * Acteurs ayant joué dans 3 films ou plus.


4-Grâce à un outil de maquettage (type draw.io), réalisez les écrans principaux de l’application permettant de gérer les différentes entités de la base de données:  affichage, insertion / modification / suppression (apportez un soin particulier à l’ergonomie de l’application pour garder une navigation cohérente).


5-En adoptant le design pattern MVC, développezl’ensemble des interfaces et des composants d’accès aux données.Vous rédigerez le dossier de synthèse du projet en y insérant l’ensemble des productions ci-dessus.
