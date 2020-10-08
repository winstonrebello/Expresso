<?php
session_start();
session_destroy();
setcookie('mobilecookie','',time()-86400);
setcookie('passwordcookie','',time()-86400);
header('Location:Home Page.php');
?>
