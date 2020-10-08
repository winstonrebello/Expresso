<?php
    include 'connection.php';
    include 'functions.php';
    @$uid= $_SESSION['user_id'];
    $id =$_GET['id'];
    echo $id;
    $deletequery ="DELETE FROM cart WHERE id='$id'";
    $query = mysqli_query($conn,$deletequery);
    header('Location:itemcart.php');

?>
