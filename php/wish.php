<?php
include 'connection.php';
include 'functions.php';
//echo $_SESSION['user_id'];
if(isset($_POST['pid'])&&isset($_POST['cat']) ){
	@$uid = $_SESSION['user_id'];
  	$pid = $_POST['pid'];
  	$cat = $_POST['cat'];
  	if(!empty($uid))
  	{
		$query = "INSERT INTO wishlist VALUES('','".$uid."','".$pid."','".$cat."')";

		if(mysqli_query($conn,$query)){
			echo '<br>Added to Your <a href="wishlist.php">wishlist</a>';
		} 
		else {
			echo '<br>Error';
		}
	} 
	else {
	  echo '<br>You must <a href="Login.php">Login</a> first';
	}
}
?>