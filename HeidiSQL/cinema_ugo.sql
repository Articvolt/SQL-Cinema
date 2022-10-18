-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour cinema
CREATE DATABASE IF NOT EXISTS `cinema` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cinema`;

-- Listage de la structure de la table cinema. acteur
CREATE TABLE IF NOT EXISTS `acteur` (
  `id_acteur` int(11) NOT NULL AUTO_INCREMENT,
  `id_personne` int(11) NOT NULL,
  PRIMARY KEY (`id_acteur`),
  KEY `id_personne` (`id_personne`),
  CONSTRAINT `FK_acteur_personne` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Listage des données de la table cinema.acteur : ~7 rows (environ)
/*!40000 ALTER TABLE `acteur` DISABLE KEYS */;
INSERT INTO `acteur` (`id_acteur`, `id_personne`) VALUES
	(1, 3),
	(2, 7),
	(3, 8),
	(4, 9),
	(5, 10),
	(6, 12),
	(7, 13);
/*!40000 ALTER TABLE `acteur` ENABLE KEYS */;

-- Listage de la structure de la table cinema. associer
CREATE TABLE IF NOT EXISTS `associer` (
  `id_film` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL,
  KEY `id_film` (`id_film`),
  KEY `id_genre` (`id_genre`),
  CONSTRAINT `FK_associer_film` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
  CONSTRAINT `FK_associer_genre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table cinema.associer : ~14 rows (environ)
/*!40000 ALTER TABLE `associer` DISABLE KEYS */;
INSERT INTO `associer` (`id_film`, `id_genre`) VALUES
	(1, 2),
	(2, 2),
	(3, 2),
	(4, 5),
	(5, 5),
	(6, 5),
	(7, 2),
	(8, 2),
	(9, 2),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 2),
	(12, 6);
/*!40000 ALTER TABLE `associer` ENABLE KEYS */;

-- Listage de la structure de la table cinema. film
CREATE TABLE IF NOT EXISTS `film` (
  `id_film` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `anneeSortieFrance` date NOT NULL,
  `synopsis` longtext NOT NULL,
  `duree` int(11) NOT NULL,
  `note` int(11) DEFAULT NULL,
  `id_realisateur` int(11) NOT NULL,
  PRIMARY KEY (`id_film`),
  KEY `id_realisateur` (`id_realisateur`),
  CONSTRAINT `FK_film_realisateur` FOREIGN KEY (`id_realisateur`) REFERENCES `realisateur` (`id_realisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Listage des données de la table cinema.film : ~14 rows (environ)
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` (`id_film`, `titre`, `anneeSortieFrance`, `synopsis`, `duree`, `note`, `id_realisateur`) VALUES
	(1, 'Alien, le Huitième Passager', '1979-09-12', 'Durant le voyage de retour d\'un immense cargo spatial en mission commerciale de routine, ses passagers, cinq hommes et deux femmes plongés en hibernation, sont tirés de leur léthargie dix mois plus tôt que prévu par Mother, l\'ordinateur de bord.', 117, 5, 2),
	(2, 'Aliens, le retour', '1986-10-08', 'Après 57 ans de dérive dans l\'espace, Ellen Ripley est secourue par la corporation Weyland-Yutani. Malgré son rapport, elle n\'est pas prise au sérieux par les militaires quant à la présence de xénomorphes sur la planète LV-426 où se posa son équipage, planète où plusieurs familles de colons ont été envoyées en mission de terraformage.', 137, 4, 6),
	(3, 'Alien 3', '1992-05-22', 'Unique survivante du dernier massacre perpétré par des monstres à l\'insatiable appétit, Ripley échoue dans une colonie pénitentiaire sinistre, sur la planète Fiorina 161. L\'une des monstrueuses créatures l\'a suivie, cachée dans son vaisseau spatial.', 114, 3, 5),
	(4, 'Seigneur des anneaux 1', '2001-12-19', 'Un jeune et timide `Hobbit\', Frodon Sacquet, hérite d\'un anneau magique. Bien loin d\'être une simple babiole, il s\'agit d\'un instrument de pouvoir absolu qui permettrait à Sauron, le `Seigneur des ténèbres\', de régner sur la `Terre du Milieu\' et de réduire en esclavage ses peuples. Frodon doit parvenir jusqu\'à la `Crevasse du Destin\' pour détruire l\'anneau.', 228, 5, 1),
	(5, 'Seigneur des anneaux 2', '2002-12-10', 'Après la mort de Boromir et la disparition de Gandalf, la Communauté s\'est scindée en trois. Perdus dans les collines d\'`Emyn Muil\', Frodon et Sam découvrent qu\'ils sont suivis par Gollum, une créature versatile corrompue par l\'anneau magique. Gollum promet de conduire les `Hobbits\' jusqu\'à la `Porte Noire\' du `Mordor\'. A travers la `Terre du Milieu\', Aragorn, Legolas et Gimli font route vers le `Rohan\', le royaume assiégé de Theoden.', 235, 4, 1),
	(6, 'Seigneur des anneaux 3', '2003-12-17', 'Les armées de Sauron ont attaqué Minas Tirith, la capitale du Gondor. Jamais ce royaume autrefois puissant n\'a eu autant besoin de son roi. Cependant, Aragorn trouvera-t-il en lui la volonté d\'accomplir sa destinée ? Tandis que Gandalf s\'efforce de soutenir les forces brisées de Gondor, Théoden exhorte les guerriers de Rohan à se joindre au combat. Cependant, malgré leur courage et leur loyauté, les forces des Hommes ne sont pas de taille à lutter contre les innombrables légions d\'ennemis.', 263, 5, 1),
	(7, 'Star Wars, la menace fantôme', '1999-10-13', 'Avant de devenir un célèbre chevalier Jedi, et bien avant de se révéler l\'âme la plus noire de la galaxie, Anakin Skywalker est un jeune esclave sur la planète Tatooine. La Force est déjà puissante en lui et il est un remarquable pilote de Podracer. Le maître Jedi Qui-Gon Jinn le découvre et entrevoit alors son immense potentiel. Pendant ce temps, l\'armée de droïdes de l\'insatiable Fédération du Commerce a envahi Naboo dans le cadre d\'un plan secret des Sith visant à accroître leur pouvoir.', 136, 4, 4),
	(8, 'Star Wars, l\'attaque des clones', '2002-05-17', 'Depuis le blocus de la planète Naboo, la République, gouvernée par le Chancelier Palpatine, connaît une crise. Un groupe de dissidents, mené par le sombre Jedi comte Dooku, manifeste son mécontentement. Le Sénat et la population intergalactique se montrent pour leur part inquiets. Certains sénateurs demandent à ce que la République soit dotée d\'une armée pour empêcher que la situation ne se détériore. Padmé Amidala, devenue sénatrice, est menacée par les séparatistes et échappe à un attentat.', 142, 4, 4),
	(9, 'Star Wars, la revanche des Sith', '2005-05-18', 'La Guerre des Clones fait rage. Une franche hostilité oppose désormais le Chancelier Palpatine au Conseil Jedi. Anakin Skywalker, jeune Chevalier Jedi pris entre deux feux, hésite sur la conduite à tenir. Séduit par la promesse d\'un pouvoir sans précédent, tenté par le côté obscur de la Force, il prête allégeance au maléfique Darth Sidious et devient Dark Vador.Les Seigneurs Sith s\'unissent alors pour préparer leur revanche, qui commence par l\'extermination des Jedi.', 140, 4, 4),
	(10, 'Pulp Fiction', '1994-09-21', 'L\'odyssée sanglante et burlesque de petits malfrats dans la jungle de Hollywood à travers trois histoires qui s\'entremêlent. Dans un restaurant, un couple de jeunes braqueurs, Pumpkin et Yolanda, discutent des risques que comporte leur activité. Deux truands, Jules Winnfield et son ami Vincent Vega, qui revient d\'Amsterdam, ont pour mission de récupérer une mallette au contenu mystérieux et de la rapporter à Marsellus Wallace.', 164, 5, 3),
	(11, 'Inglorious Basterds', '2009-08-19', 'Dans la France occupée de 1940, Shosanna Dreyfus assiste à l\'exécution de sa famille tombée entre les mains du colonel nazi Hans Landa. Shosanna s\'échappe de justesse et s\'enfuit à Paris où elle se construit une nouvelle identité en devenant exploitante d\'une salle de cinéma. Quelque part ailleurs en Europe, le lieutenant Aldo Raine forme un groupe de soldats juifs américains pour mener des actions punitives particulièrement sanglantes contre les nazis.', 153, 4, 3),
	(12, 'Indiana Jones 1', '1981-09-16', 'Professeur d\'archéologie, Indiana Jones parcourt le monde à la recherche de trésors. Son rival, le Français René Belloq, travaille pour les nazis qui rêvent de retrouver l\'Arche d\'alliance contenant les Tables de la Loi. Or, feu le professeur Ravenwood, père de Marion, l\'ex-petite amie d\'Indiana Jones, détenait une médaille permettant de localiser l\'arche. Jones part sur les traces de Marion au Népal.', 115, 5, 7),
	(13, 'Star Wars, un nouvel espoir', '1977-10-19', 'La guerre civile fait rage entre l\'Empire galactique et l\'Alliance rebelle. Capturée par les troupes de choc de l\'Empereur menées par le sombre et impitoyable Dark Vador, la princesse Leia Organa dissimule les plans de l\'Etoile Noire.', 121, 5, 4),
	(14, 'Le dernier Duel', '2021-10-13', 'En 1386, en Normandie, le chevalier Jean de Carrouges2, de retour d\'un voyage à Paris, retrouve son épouse, Marguerite de Thibouville. Celle-ci accuse l\'écuyer Jacques le Gris, vieil ami du chevalier, de l\'avoir violée. Le Gris se dit innocent.', 152, 4, 2),
	(15, 'Mank', '2020-12-04', 'Dans ce film qui jette un point de vue caustique sur le Hollywood des années 30, le scénariste Herman J. Mankiewicz, alcoolique invétéré au regard acerbe, tente de boucler à temps le script de Citizen Kane d’Orson Welles.  ', 132, 3, 5);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;

-- Listage de la structure de la table cinema. genre
CREATE TABLE IF NOT EXISTS `genre` (
  `id_genre` int(11) NOT NULL AUTO_INCREMENT,
  `nomGenre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Listage des données de la table cinema.genre : ~6 rows (environ)
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` (`id_genre`, `nomGenre`) VALUES
	(1, 'ACTION'),
	(2, 'SCIENCE FICTION'),
	(3, 'POLICIER'),
	(4, 'THRILLER'),
	(5, 'FANTASY'),
	(6, 'AVENTURE'),
	(7, 'WESTERN');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;

-- Listage de la structure de la table cinema. jouer
CREATE TABLE IF NOT EXISTS `jouer` (
  `id_acteur` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  KEY `id_acteur` (`id_acteur`),
  KEY `id_film` (`id_film`),
  KEY `id_role` (`id_role`),
  CONSTRAINT `FK_jouer_acteur` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id_acteur`),
  CONSTRAINT `FK_jouer_film` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
  CONSTRAINT `FK_jouer_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table cinema.jouer : ~15 rows (environ)
/*!40000 ALTER TABLE `jouer` DISABLE KEYS */;
INSERT INTO `jouer` (`id_acteur`, `id_film`, `id_role`) VALUES
	(1, 10, 2),
	(1, 11, 1),
	(2, 8, 3),
	(2, 7, 3),
	(2, 9, 3),
	(3, 8, 4),
	(3, 7, 4),
	(3, 9, 4),
	(4, 8, 5),
	(4, 7, 5),
	(4, 9, 5),
	(5, 12, 6),
	(5, 13, 7),
	(6, 1, 8),
	(6, 2, 8),
	(6, 3, 8),
	(7, 13, 9);
/*!40000 ALTER TABLE `jouer` ENABLE KEYS */;

-- Listage de la structure de la table cinema. personne
CREATE TABLE IF NOT EXISTS `personne` (
  `id_personne` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `dateNaissance` date NOT NULL,
  `dateMort` date DEFAULT NULL,
  PRIMARY KEY (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Listage des données de la table cinema.personne : ~13 rows (environ)
/*!40000 ALTER TABLE `personne` DISABLE KEYS */;
INSERT INTO `personne` (`id_personne`, `nom`, `prenom`, `sexe`, `dateNaissance`, `dateMort`) VALUES
	(1, 'Jackson', 'Peter', 'M', '1961-10-31', NULL),
	(2, 'Scott', 'Ridley', 'M', '1937-11-30', NULL),
	(3, 'Tarantino', 'Quentin', 'M', '1963-03-27', NULL),
	(4, 'Lucas', 'Georges', 'M', '1944-05-14', NULL),
	(5, 'Fincher', 'David', 'M', '1962-08-28', NULL),
	(6, 'Cameron', 'James', 'M', '1954-08-16', NULL),
	(7, 'Portmann', 'Natalie', 'F', '1981-06-09', NULL),
	(8, 'McGregor', 'Ewan', 'M', '1971-03-31', NULL),
	(9, 'Christensen', 'Hayden', 'M', '1981-04-19', NULL),
	(10, 'Ford', 'Harrison', 'M', '1942-07-13', NULL),
	(11, 'Spielberg', 'Steven', 'M', '1946-12-18', NULL),
	(12, 'Weaver', 'Sigourney', 'F', '1949-10-08', NULL),
	(13, 'Fisher', 'Carrie', 'F', '1956-10-21', '2016-12-27');
/*!40000 ALTER TABLE `personne` ENABLE KEYS */;

-- Listage de la structure de la table cinema. realisateur
CREATE TABLE IF NOT EXISTS `realisateur` (
  `id_realisateur` int(11) NOT NULL AUTO_INCREMENT,
  `id_personne` int(11) NOT NULL,
  PRIMARY KEY (`id_realisateur`),
  KEY `id_personne` (`id_personne`),
  CONSTRAINT `FK_realisateur_personne` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Listage des données de la table cinema.realisateur : ~7 rows (environ)
/*!40000 ALTER TABLE `realisateur` DISABLE KEYS */;
INSERT INTO `realisateur` (`id_realisateur`, `id_personne`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 11);
/*!40000 ALTER TABLE `realisateur` ENABLE KEYS */;

-- Listage de la structure de la table cinema. role
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `nomRole` varchar(50) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Listage des données de la table cinema.role : ~9 rows (environ)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id_role`, `nomRole`) VALUES
	(1, 'Jimmie Dimmick'),
	(2, 'Figurant nazi'),
	(3, 'Padmée Amidala'),
	(4, 'Obi-Wan Kenobi'),
	(5, 'Anakin SkyWalker'),
	(6, 'Indiana Jones'),
	(7, 'Han Solo'),
	(8, 'Ellen Ripley'),
	(9, 'Princesse Leia');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
