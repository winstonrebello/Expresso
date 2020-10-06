<?php
include 'connection.php';
include 'functions.php';
//echo $_SESSION['user_id'];
if(isset($_POST['pid'])&&isset($_POST['cat'])){
  @$uid = $_SESSION['user_id'];
  $pid = $_POST['pid'];
  $cat = $_POST['cat'];
  $total = $_POST['total'];
  if(!empty($uid)){
$query = "INSERT INTO cart VALUES('','".$uid."','".$pid."','".$cat."','".$total."')";
if(mysqli_query($conn,$query)){
  echo '<br>Added to Your <a href="itemcart.php">Cart</a>';
} else {
  echo '<br>Error';
}
} else {
  echo '<br>You must <a href="Login.php">Login</a> first';
}
}
?>
