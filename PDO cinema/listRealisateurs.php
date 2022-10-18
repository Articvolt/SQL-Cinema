<?php

    // creation login
    $user = 'root';
    $pass ='';

try {
    $db = new PDO('mysql:host=localhost;dbname=cinema_ugo;charset=utf8', $user, $pass);// mysql -> DSN(data source name)

    //création d'une commande d'éxecution
    $SQLexecute = $db->prepare('SELECT CONCAT(p.prenom," ", p.nom) AS identité, p.sexe, DATE_FORMAT(p.dateNaissance, "%d-%m-%Y") FROM realisateur r LEFT JOIN personne p ON p.id_personne = r.id_personne');
                                
    //lancement de la commande
    $SQLexecute->execute();
    // methode pour récuperer les lignes de la base de données
    $realisateurs = $SQLexecute->fetchAll();
    //voir si la commande fonctionne
    // var_dump($films);
    } catch (PDOException $e) {
  
    die('Erreur : '.$e->getMessage().'<br>');
    
    }

    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Liste Realisateurs</title>
</head>

    <body>
        <h1>Liste des réalisateurs</h1>
            <table>
                <thead>
                    <tr>
                        <th>NOM PRENOM</th>
                        <th>SEXE</th>
                        <th>DATE DE NAISSANCE</th>
                    </tr>
                </thead>
                <tbody>
                    
                        <?php foreach ($realisateurs as $realisateur): ?>
                            <tr>
                                <td>
                                    <?= $realisateur['identité'] ?>
                                </td>
                                <td>
                                    <?= $realisateur['sexe'] ?>
                                </td>
                                <td>
                                    <?= $realisateur['DATE_FORMAT(dateNaissance, "%d-%m-%Y")'] ?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                </tbody>
            </table>
    </body>
</html>