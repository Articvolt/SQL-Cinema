<?php


// AFFICHAGE ERREUR
// https://openclassrooms.com/fr/courses/1665806-programmez-en-oriente-objet-en-php/7307123-gerez-vos-cas-derreur#r-7307118
try {
    // Souvent on identifie cet objet par la variable $conn ou $db
$conn = new PDO(
    'mysql:host = localhost ; dbname = cinema ; charset = utf8', // mysql -> DSN(data source name)
    'root', // login
    'root'  //mot de passe
);
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}




?>