<?php
include '../php/connection.php';

function countViews($conn,$table,$field,$value){
  $query = mysqli_query($conn,"SELECT COUNT(DISTINCT session) AS total FROM $table WHERE $field='$value'");
  $q = mysqli_fetch_array($query);
  return $q['total'];
}

function avgDuration($conn,$field,$value){
  $query = mysqli_query($conn,"SELECT duration FROM timing WHERE $field='$value'");
  $count = 0;
  $total = 0;
  while($q = mysqli_fetch_array($query)){
    $total = $q['duration'] + $total;
    $count++;
  }

  if($count == 0){
    return 0;
  }
  return $total/$count;
}

function conversion($conn,$pid,$cat,$views){
  $orders = mysqli_query($conn,"SELECT COUNT(*) AS total FROM orders WHERE pid='$pid' AND cat='$cat'");
  $ot = mysqli_fetch_array($orders);
  $total = $ot['total'];

  return ($total/$views)*100;
}

function errorCount($conn){
  $count = mysqli_query($conn,"SELECT COUNT(*) AS total FROM errors");
  $c = mysqli_fetch_array($count);
  $total = $c['total'];
  return $total;
}

function totalOrders($conn){
  $orders = mysqli_query($conn,"SELECT COUNT(*) AS total FROM orders");
  $ot = mysqli_fetch_array($orders);
  $total = $ot['total'];

  return $total;
}

function totalUsers($conn){
  $orders = mysqli_query($conn,"SELECT COUNT(*) AS total FROM users");
  $ot = mysqli_fetch_array($orders);
  $total = $ot['total'];

  return $total;
}

function productImpressions($conn,$pid,$cat){
  $query = mysqli_query($conn,"SELECT COUNT(*) AS total FROM product_impression WHERE pid='$pid' AND cat='$cat'");
  if(mysqli_num_rows($query)){
    $q = mysqli_fetch_array($query);
    return $q['total'];
  } else {
    return 0;
  }
}
?>
