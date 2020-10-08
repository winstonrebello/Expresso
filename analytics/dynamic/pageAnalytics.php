<?php
include '../../php/connection.php';
$user = $_POST['user'];
$user_type = $_POST['type'];
$cat = $_POST['cat'];
$pid = $_POST['pid'];
$url = $_POST['url'];
$title = $_POST['title'];
$user_sess = $_POST['session'];
$page = $_POST['page'];
$date = date("Y/m/d");
$country = $_POST['country'];
$city = $_POST['city'];
$browser = $_POST['browser'];
$device = $_POST['device'];

if(!mysqli_query($conn,"INSERT INTO page_analytics VALUES('','$user_sess','$user','$user_type','$url','$title','$pid','$cat','$date','$page','$country','$city','$browser','$device')")){
  $error = "Error updating analytical data on ".$url;
  mysqli_query($conn,"INSERT INTO errors VALUES('','".mysqli_real_escape_string($conn,$error)."')");
}
 ?>
