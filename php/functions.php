<?php
ob_start();
session_start();
$current_file = $_SERVER['SCRIPT_NAME'];
$page_url = basename($_SERVER['REQUEST_URI']);

if (isset($_SERVER['HTTP_REFERER'])&&!empty($_SERVER['HTTP_REFERER'])) {
$http_referer = $_SERVER['HTTP_REFERER'];
}

if(isset($_COOKIE['user_sess'])){
    $_SESSION['user_sess'] = $_COOKIE['user_sess'];
    $user_sess = $_COOKIE['user_sess'];
} else {

if(!isset($_SESSION['user_sess'])){
  $_SESSION['user_sess'] = generateRandomString();
  $user_sess = $_SESSION['user_sess'];
  setcookie("user_sess",$user_sess , time() + (86400 * 30), "/");
} else {
  $user_sess = $_SESSION['user_sess'];
  setcookie("user_sess",$user_sess , time() + (86400 * 30), "/");
}

}



function loggedin() {
if (isset($_SESSION['user_id'])&&!empty($_SESSION['user_id'])) {
return true;
}else {
return false;
}
}

function getProductDetails($conn,$pid,$cat,$field){
  if($cat == 1){
    $table = "head_earphone";
  } else if($cat == 2){
    $table = "mobiledataset";
  } else if($cat == 3){
    $table = "laptopdataset";
  }

  $select = mysqli_query($conn,"SELECT $field FROM $table WHERE id='$pid'");
  $s = mysqli_fetch_array($select);
  $detail = $s[$field];

  return $detail;
}

function countItems($conn,$uid){
  $count = mysqli_query($conn,"SELECT COUNT(*) AS c FROM cart WHERE uid='$uid'");
  $c = mysqli_fetch_array($count);
  return $c['c'];
}

function getUserDetails($conn,$uid,$field){
  $select = mysqli_query($conn,"SELECT $field FROM users WHERE id='$uid'");
  $s = mysqli_fetch_array($select);
  return $s[$field];
}

function getUserOrderDetails($conn,$uid,$field){
  $invoice_number= $_SESSION["inv_no"];
  $select = mysqli_query($conn,"SELECT $field FROM orders WHERE uid='$uid'AND invoice_no='$invoice_number'");
  $s = mysqli_fetch_array($select);
  return $s[$field];
}

function getUserOrders($conn,$uid,$inv,$field){
  $select = mysqli_query($conn,"SELECT $field FROM orders WHERE uid='$uid'AND invoice_no='$inv'");
  $s = mysqli_fetch_array($select);
  return $s[$field];
}

function get_client_ip() {
    $ipaddress = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ipaddress = getenv('HTTP_CLIENT_IP');
    else if(getenv('HTTP_X_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
    else if(getenv('HTTP_X_FORWARDED'))
        $ipaddress = getenv('HTTP_X_FORWARDED');
    else if(getenv('HTTP_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_FORWARDED_FOR');
    else if(getenv('HTTP_FORWARDED'))
       $ipaddress = getenv('HTTP_FORWARDED');
    else if(getenv('REMOTE_ADDR'))
        $ipaddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}

function generateRandomString(){
	$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@$';
	$randomString = '';

	for ($i = 0; $i < 10; $i++) {
		$index = rand(0, strlen($characters) - 1);
		$randomString .= $characters[$index];
	}
	$randomString .= mt_rand(1000,9999);
	return $randomString;
}
?>
