<?php
    include 'connection.php';
    include 'functions.php';
    @$uid= $_SESSION['user_id'];
    $id =$_GET['id'];

    $deletequery ="delete from wishlist where id=$id && uid=$uid";
    $query = mysqli_query($conn,$deletequery);
    header('location:wishlist.php');
?>