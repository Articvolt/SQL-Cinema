<?php

// creation login
$user = 'root';
$pass ='';


// AFFICHAGE ERREUR
// https://openclassrooms.com/fr/courses/1665806-programmez-en-oriente-objet-en-php/7307123-gerez-vos-cas-derreur#r-7307118
// https://www.youtube.com/watch?v=-NTvIHHDmg8&list=PLkHw7J3J2iaoSgOn1zyHkY_6NwdrtVtfI&index=6&t=183s
try {

  $db = new PDO('mysql:host=localhost;dbname=cinema_ugo;charset = utf8', $user, $pass);// mysql -> DSN(data source name)
  
  foreach ($db->query('SELECT * FROM personne') as $row) {
    print_r($row);
  }
} catch (PDOException $e) {
  
  die('Erreur : '.$e->getMessage().'<br>');
}

?>