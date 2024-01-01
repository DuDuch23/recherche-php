<?php
require_once('../connexion.php');

if(isset($_GET['search']))
{
    $search = (String) trim($_GET['search']);

    $req = $con->prepare("SELECT * 
        FROM chocolat 
        WHERE nom LIKE ? 
        LIMIT 10");

    $req->execute(array("$search%"));
    $resultats = $req->fetchAll();

    foreach($resultats as $r){
    ?>
        <div style="margin-top: 20px 0; border-bottom: 2px solid #ccc;">
            <?= $r['type_chocolat_id'] . " " . $r['nom'] . " " . $r['prix'] . "€" ?>
        </div>
    <?php
    }
}
?>