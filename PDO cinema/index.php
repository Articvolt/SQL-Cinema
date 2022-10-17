<?php

// creation login
$user = 'root';
$pass ='';


// AFFICHAGE ERREUR
// https://openclassrooms.com/fr/courses/1665806-programmez-en-oriente-objet-en-php/7307123-gerez-vos-cas-derreur#r-7307118
try {

  $db = new PDO('mysql:host=localhost;dbname=cinema;charset = utf8', $user, $pass);// mysql -> DSN(data source name)
  
  foreach ($db->query('SELECT * FROM personne') as $row) {
    print_r($row);
  }
} catch (PDOException $e) {
  
  die('Erreur : '.$e->getMessage().'<br>');
}

?>