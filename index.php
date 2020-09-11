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
</head>
<body>

  <?php

	  while ($donnees = $reponse->fetch()) {
	  	echo $donnees['id'];
	  	echo $donnees['content'];
	  	echo $donnees['users_id'];
	  	echo $donnees['date_post'];
  ?>
<br/>
	<?php
	  }
  ?>
</body>
</html>

<?php

$reponse->closeCursor();

?>