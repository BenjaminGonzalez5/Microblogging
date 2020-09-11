<?php
	$bdd = new PDO('mysql:host=localhost;dbname=microblog;charset=utf8', 'root', '');

?>

<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>create-post</title>
  <link rel="stylesheet" href="assets/style.css">
</head>
<body>
	<form action="#" method="post">
		<textarea name="post" id="post" placeholder="Ecrivez votre post"></textarea>
		<button type="submit">Valider</button>
		<?php
			$datePost = date("m.d.y");
			$id = new DateTime();
			
			if(isset($_POST["post"]))
			{
				$req = $bdd->prepare('INSERT INTO post (id, content, date_post, users_id) VALUES (:id, :postContent, :datePost, 3)');
				$req->execute(array(
						'id' => $id->getTimestamp(),
						'postContent' => $_POST["post"],
	    				'datePost' => $datePost
					));

				echo "Post ajouté avec succès";
			}
		?>
	</form>
</body>
</html>

<?php 



?>