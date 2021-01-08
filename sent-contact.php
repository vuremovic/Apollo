<?php
$email = "vedran.uremovic@gmail.com";
$text = $_POST['text'];    
$subject="Apolo stranica contact form";     				
mail($email, $subjest, $text);

?>