<?php
	$bdd = new PDO('mysql:host=localhost;dbname=microblog;charset=utf8', 'root', '');

	$reponse = $bdd->query('SELECT * FROM post ORDER BY post.date_post DESC');

?>

<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Microblogging</title>
  <link rel="stylesheet" href="assets/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</head>
<body>

<?php
	while ($donnees = $reponse->fetch()) {
?>

<div class="card w-50 mx-auto">
  <div class="card-header">
    <?php echo $donnees['date_post']; ?>
  </div>
  <div class="card-body">
    <h5 class="card-title"><?php echo $donnees['users_id']; ?></h5>
    <p class="card-text"><?php echo $donnees['content']; ?></p>
  </div>
</div>
<br/>
	<?php
	  }
  ?>
</body>
</html>

<?php

$reponse->closeCursor();

?>