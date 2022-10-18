<?php

    // creation login
    $user = 'root';
    $pass ='';

    try {
         $db = new PDO('mysql:host=localhost;dbname=cinema_ugo;charset=utf8', $user, $pass);// mysql -> DSN(data source name)

        //création d'une commande d'éxecution
        $SQLexecute = $db->prepare('SELECT titre, DATE_FORMAT(anneeSortieFrance,"%Y"), synopsis, SEC_TO_TIME(duree*60), note  FROM film');
        //lancement de la commande
        $SQLexecute->execute();
        // methode pour récuperer les lignes de la base de données
        $films = $SQLexecute->fetchAll();
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
    <title>Liste Films</title>
</head>

    <body>
        <h1>Liste des films</h1>
            <table>
                <thead>
                    <tr>
                        <th>titre</th>
                        <th>annee de sortie en france</th>
                        <th>synopsis</th>
                        <th>durée</th>
                        <th>note</th>
                    </tr>
                </thead>
                <tbody>
                    
                        <?php foreach ($films as $film): ?>
                            <tr>
                                <td>
                                    <?= $film['titre'] ?>
                                </td>
                                <td>
                                    <?= $film['DATE_FORMAT(anneeSortieFrance,"%Y")'] ?>
                                </td>
                                <td class='synopsis'>
                                    <?= $film['synopsis'] ?>
                                </td>
                                <td>
                                    <?= $film['SEC_TO_TIME(duree*60)'] ?>
                                </td>
                                <td>
                                    <?= $film['note'] ?> / 5
                                </td>
                            </tr>
                        <?php endforeach; ?>
                </tbody>
            </table>
    </body>
</html>