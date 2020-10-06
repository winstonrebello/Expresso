<?php
include '../../php/connection.php';
$prod = $_POST['prodid'];
$session = $_POST['session'];
$date = date("Y/m/d");
$pid = substr($prod,1);
$pcat = substr($prod,strlen($prod)-1);

if(!mysqli_query($conn,"INSERT INTO product_impression VALUES('','$session','$pid','$pcat','$date')")){
  $error = "Unable to insert impression of product id".$prod." by user:".$session." on date:".$date;
  mysqli_query($conn,"INSERT INTO errors VALUES('','$error')");
}
?>
