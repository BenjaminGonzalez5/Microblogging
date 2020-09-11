<?php
	$bdd = new PDO('mysql:host=localhost;dbname=microblog;charset=utf8', 'root', '');

	$user = $bdd->query('SELECT * FROM users, agency WHERE users.agency_id = agency.id AND users.id = 3');
	$reponse = $bdd->query('SELECT * FROM post, users, reply WHERE post.users_id = users.id AND post.id= reply.post_id 	ORDER BY post.date_post DESC');
?>

<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Microblogging</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">


  <link rel="stylesheet" href="assets/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</head>
<body>
	<nav class="navbar fixed-top navbar-light" style="background-color: #B3C7DD;">
  		<div class="container-fluid">
  			<div class="row w-100">
  				<div class="col-md-2 offset-md-1">
			  		<a class="navbar-brand" href="index.php">
			    		<img src="assets/logo.png" width="60" height="60" alt="" loading="lazy">
			  		</a>
		  		</div>

		  		<div class="col-md-4 offset-md-1 my-auto">
					<form class="form-inline ">
				    	<input class="form-control" style="width:90%"  type="search" placeholder="Search" aria-label="Search">
				      	<button class="btn my-2 my-sm-0" type="submit">🔍</button>
					</form>
				</div>

				<?php
					while ($donnees = $user->fetch()) {
				?>

	  			<div class="col-md-2 offset-md-2">
			  		<a class="navbar-brand" href="profile.php">
			    		<img src="assets/profile.png" width="60" height="60" alt="" loading="lazy">
			    		  <span class="navbar-text">
		    				<?php echo $donnees['nom']; ?>
		    				<?php echo $donnees['prenom']; ?>
						  </span>
						  <span class="navbar-text"></span>
			  		</a>
			  	</div>
			  	<?php
			  		}
			  	?>
		  	</div>
		</div>
	</nav>

<div class="container-fluid" style="margin-top: 8em">
	<div class="row">
<?php
	while ($donnees = $reponse->fetch()) {
?>

<div class="card w-50 mx-auto">
  <div class="card-header h-55">
    <?php echo $donnees['date_post']; ?>
  </div>
  <div class="card-body">
    <h5 class="card-title"><img style="width: 50px; margin-right: 0.5em;" src="assets/logo.png"><?php echo $donnees['nom'], ' ', $donnees['prenom']; ?></h5>
    <p class="card-text"><?php echo $donnees[1]; ?></p>
  </div>
  <div class="card-footer text-muted">
    <?php echo '<svg data-toggle="collapse" href="#id'.$donnees[0].'" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-compact-down" fill="currentColor" xmlns="http://www.w3.org/2000/svg">' ?>
		  <path fill-rule="evenodd" d="M1.553 6.776a.5.5 0 0 1 .67-.223L8 9.44l5.776-2.888a.5.5 0 1 1 .448.894l-6 3a.5.5 0 0 1-.448 0l-6-3a.5.5 0 0 1-.223-.67z"/>
		</svg>
  </div>
  <?php echo '<div class="collapse" id="id'.$donnees[0].'">'?>
	  <div class="card card-body">
    	<p class="card-text"><?php echo $donnees['content']; ?></p>
	  </div>
	</div>
</div>
</div>
</div>
<br/>
	<?php
	  }
  ?>
  <button><a href="create_post.php">Create a Post</a></button>
</body>
</html>

<?php

$reponse->closeCursor();

?>