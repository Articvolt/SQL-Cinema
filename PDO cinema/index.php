<?php


// // AFFICHAGE ERREUR
// // https://openclassrooms.com/fr/courses/1665806-programmez-en-oriente-objet-en-php/7307123-gerez-vos-cas-derreur#r-7307118
// try {
//     // Souvent on identifie cet objet par la variable $conn ou $db
// $conn = new PDO(
//     'mysql:host = localhost ; dbname = cinema ; charset = utf8', // mysql -> DSN(data source name)
//     'root', // login
//     'root'  //mot de passe
// );
// } catch (Exception $e) {
//     die('Erreur : ' . $e->getMessage());
// }

$host = 'localhost';
$dbname = 'cinema';
$username = 'root';
$password = '';
  
$dsn = "mysql:host=$host ; dbname=$cinema"; 
// récupérer tous les utilisateurs
$sql = "SELECT * FROM Users";
 
try{
 $pdo = new PDO($dsn, $username, $password);
 $stmt = $pdo->query($sql);
 
 if($stmt === false){
  die("Erreur");
 }
 
}catch (PDOException $e){
  echo $e->getMessage();
}



?>