<?php
require "./classes.php";
$user = new classes();
$user->dbconnect();
?>

<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <title>Inscription</title>
    <link rel="stylesheet" href="reservation.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo&display=swap" rel="stylesheet">
  </head>
<body class = "fond2">
<header>
    <section class = "head">
        <img class = "logo" src="images-salles/logons.png" alt = "Logo du cinéma">
        <nav>
            <li><a href = "index.php">Accueil<a></li>
            <?php 
                if (isset($_SESSION['user'])) {
                echo "<li><a href='reservation-form.php'>Reservation</a></li>";
                echo "<li><a href='planning.php'>Planning</a></li>";
                echo "<li><form method='post'><input type = 'submit' name = 'deconnexion' value='Deconnexion' class = 'deco'></form></li>";
                }
                else{
                echo "<li><a href='inscription.php'>Inscription</a></li>";
                echo "<li><a href='connexion.php'>Connexion</a></li>";
                }
            ?>
        </nav>
    </section>
</header>
<main> 
<section class = "inscription">
        <div class = "caseinscription">
            <h3 class = "H3C">Inscription</h3>
            <form method="post">
            
                <label for="login">LOGIN</label>
                <input type="text" name="login" id="login" class = "marge" ><br>

                <label for="password">MDP</label>
                <input type="password" name="password" id="password" class = "marge3"><br>
                <label for="confirm_password">CONFIRMEZ</label>
                <input type="password" name="confirm_password" id="confirm_password" class = "marge2" >
                <input type="submit" name="submit" value="S'inscrire !" class = "confirm" class = "marge" >
                <?php
                    if(isset($_POST['submit'])){
                        $user->register($_POST['login'], $_POST['password'], $_POST['confirm_password']);
                    }
                ?>
            </form>
        </div>
    </section>
</main>
<footer>
    <section class = "foot">
        <img class = "logo2" src="images-salles/logons.png" alt = "Logo du cinéma">
    </section>
</footer>
</body>
</html>
