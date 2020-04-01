<?php

require_once ("securite.php");

$id = $_GET['id'];
require_once ("connection_bdd.php");

$ps = $pdo->prepare("DELETE FROM etudiants_6tt WHERE ID=?"); 
$params = array($id); 
$ps->execute($params); 

header("location:accueil.php");
?>