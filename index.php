<?php

// Souvent on identifie cet objet par la variable $conn ou $db
$conn = new PDO(
    'mysql:host = localhost ; dbname = cinema ; charset = utf8', // mysql -> DSN(data source name)
    'root', // login
    'root'  //mot de passe
);

?>