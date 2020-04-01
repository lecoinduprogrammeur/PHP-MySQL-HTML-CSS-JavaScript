<?php
require_once ("securite.php");
?>
<div class=""> 
	<a href="accueil.php" class=""><i class="fa fa-home"></i></a>
	<?php if ($_SESSION['PROFILE']['ROLE']=='boss'){ ?>
	<a href="enregistrementEtudiant.php" class="">Enregistrement Etudiant</a>
	<?php } ?>
	<a href="lesMessages.php" class="">Les Messages</a>
	<a href="logout.php" class="">Déconnection</a>
</div> 
