<?php
include '../../php/connection.php';

$url = $_POST['url'];
$duration = $_POST['duration'];
$duration = $duration/1000;
$user_sess = $_POST['session'];
$date = date("Y/m/d");


if(!mysqli_query($conn,"INSERT INTO timing VALUES('','$user_sess','$url','$duration','$date')")){
  mysqli_query($conn,"INSERT INTO errors VALUES('','error')");
}
 ?>
