<?php
include 'connection.php';
include 'functions.php';
@$uid = $_SESSION['user_id'];
$cat = $_POST['cat'];
$pid = $_POST['pid'];

if(isset($_POST['name'])&&isset($_POST['mob'])&&isset($_POST['pincode'])&&isset($_POST['email'])&&isset($_POST['add'])&&isset($_POST['city'])&&isset($_POST['total'])){
  $name = $_POST['name'];
  $mob = $_POST['mob'];
  $pincode = $_POST['pincode'];
  $email = $_POST['email'];
  $add = $_POST['add'];
  $city = $_POST['city'];
  $tprod = $_POST['total'];
  $invoice_no = rand(10000000,99999999);
  $order_time= date("d/m/y");
  $date = date("Y/m/d");

  if(!empty($name)&&!empty($mob)&&!empty($pincode)&&!empty($email)&&!empty($add)&&!empty($city)){
      $query = "INSERT INTO orders VALUES('','$uid','$name','$email','$mob','$add','$pincode','$city','$invoice_no','$order_time','$pid','$cat','$tprod','$date')";
      if(mysqli_query($conn,$query)){
        $_SESSION["inv_no"] = $invoice_no;
        //echo "1";
        header('Location:billing.php');
      } else {
        //echo '0';
      }
    }

}

?>
