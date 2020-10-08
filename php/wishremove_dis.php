<?php
    include 'connection.php';
    include 'functions.php';
    @$uid= $_SESSION['user_id'];
    $cat =$_POST['cat'];
    $pid =$_POST['pid'];

    $deletequery ="delete from wishlist where product_id=$pid AND cat=$cat  && uid=$uid";
    $query = mysqli_query($conn,$deletequery);
    
    if(mysqli_query($conn,$deletequery)){
        echo '<br>Removed to Your <a href="wishlist.php">wishlist</a>';
    } 
    else {
        echo '<br>Error';
    }
?>