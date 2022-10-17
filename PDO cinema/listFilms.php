<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
    </body>
</html>

<?php

    // creation login
    $user = 'root';
    $pass ='';

    $db = new PDO('mysql:host=localhost;dbname=cinema;charset = utf8', $user, $pass);// mysql -> DSN(data source name)

    //création d'une commande d'éxecution
    $SQLexecute = $db->prepare('SELECT * FROM film');
    //lancement de la commande
    $SQLexecute->execute();
    // methode pour récuperer les lignes de la base de données
    $films = $SQLexecute->fetchAll();
    //voir si la commande fonctionne
    var_dump($films);
?>