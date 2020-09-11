<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>create-post</title>
  <link rel="stylesheet" href="assets/style.css">
</head>
<body>
	<form>
		<textarea name="post" id="post" placeholder="Ecrivez votre post"></textarea>
		<button>Valider</button>
		<?php
			$bdd = new PDO('mysql:host=localhost;dbname=microblog;charset=utf8', 'root', '');
			if(isset($_POST["post"]))
			{
			    $post = $bdd->prepare("INSERT INTO post (content, date_post, user_id) VALUES (:postContent, :datePost, 2)");
			    echo "1";

			    $post->execute([
			    	':postContent' => $_POST["post"],
			    	':datePost' => date("m.d.y"),
			    ]);

			}
			?>
	</form>
</body>
</html>

<?php 



?>