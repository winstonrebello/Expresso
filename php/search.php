<?php
include 'connection.php';
include 'functions.php';

if(isset($_POST['text'])){
  $text = $_POST['text'];

  $query1 = "SELECT * FROM mobiledataset WHERE Product_name LIKE '%$text%' OR prod_des LIKE '%$text%' OR feature LIKE '%$text%'";
  $query2 = "SELECT * FROM laptopdataset WHERE Product_name LIKE '%$text%' OR prod_des LIKE '%$text%' OR feature LIKE '%$text%'";
  $query3 = "SELECT * FROM head_earphone WHERE Product_name LIKE '%$text%' OR prod_des LIKE '%$text%' OR feature LIKE '%$text%'";

  $result1 = mysqli_query($conn,$query1);
  $result2 = mysqli_query($conn,$query2);
  $result3 = mysqli_query($conn,$query3);

  if($result1){
    while($q = mysqli_fetch_array($result1)){
      $pid = $q['id'];
      $cat = 2;
      $pname = $q['Product_name'];
      $pimg = $q['Product_img'];
      $pprice= $q['Product_price'];
      $prate= $q['rating'];
      $pdes= $q['prod_des'];
      $p_review= $q['total_review'];
      $pans= $q['ans_ask'];

      echo '
      <div class="row">
        <a href="discription.php?id='.$pid.'&cat='.$cat.'" target="_blank">
        <div class="column25"><img src="'.$pimg.'" alt="'.$pname.'" class="simg"></div>
        <div class="column75">'.$pname.'</div>
        </a>
      </div>
      ';
      //echo $q['Product_name'].'<br>';
    }
  }

  if($result2){
    while($q = mysqli_fetch_array($result2)){
      $pid = $q['id'];
      $cat = 3;
      $pname = $q['Product_name'];
      $pimg = $q['Product_img'];
      $pprice= $q['Product_price'];
      $prate= $q['rating'];
      $pdes= $q['prod_des'];
      $p_review= $q['total_review'];
      $pans= $q['ans_ask'];

      echo '
      <div class="row">
        <a href="discription.php?id='.$pid.'&cat='.$cat.'" target="_blank">
        <div class="column25"><img src="'.$pimg.'" alt="'.$pname.'" class="simg"></div>
        <div class="column75">'.$pname.'</div>
        </a>
      </div>
      ';
      //echo $q['Product_name'].'<br>';
    }
  }

  if($result3){
    while($q = mysqli_fetch_array($result3)){
      $pid = $q['id'];
      $cat = 1;
      $pname = $q['Product_name'];
      $pimg = $q['Product_img'];
      $pprice= $q['Product_price'];
      $prate= $q['rating'];
      $pdes= $q['prod_des'];
      $p_review= $q['total_review'];
      $pans= $q['ans_ask'];

      echo '
      <div class="row">
        <a href="discription.php?id='.$pid.'&cat='.$cat.'" target="_blank">
        <div class="column25"><img src="'.$pimg.'" alt="'.$pname.'" class="simg"></div>
        <div class="column75">'.$pname.'</div>
        </a>
      </div>
      ';
      //echo $q['Product_name'].'<br>';
    }
  }
}
?>
