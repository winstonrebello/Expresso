<?php
include 'connection.php';
//$brand_filter = implode("','", $_POST["brand"])
$cat = $_POST['cat'];
if($cat == 1){
	$table = "head_earphone";
} else if($cat == 2){
	$table = "mobiledataset";
} else if($cat == 3){
	$table = "laptopdataset";
} else {
	header('Location:Home Page.php');
}

$query = "SELECT * FROM $table WHERE id IS NOT NULL";
  if(isset($_POST['brand'])){
    //$sum++;
  $brand_filter = implode("','", $_POST["brand"]);
  $query .= " AND by_info IN('" . $brand_filter . "')";
  //$query = mysqli_query($conn,"SELECT * FROM mobiledataset WHERE by_info IN('" . $brand_filter . "')");
  }

  if(isset($_POST['rate'])){
    //$sum++;
  //$r_filter = implode("','", $_POST["rate"]);
  //echo $r_filter;
  foreach($_POST['rate'] as $rate){
    //echo $rate;
    $query .= " AND rating > '".$rate."'";
  }

  }

  if(isset($_POST['prange'])){
		$sum = count($_POST['prange']);
    foreach($_POST['prange'] as $prange){
      $string = $prange;
      $c = strrchr($string,">");

      if($c){
        $token = strtok($string, ">");
        $query .=" AND Product_price > '".$token."'";
      } else {
        $token = strtok($string, "-");
        $t = array();
        $i=0;
        while ($token !== false)
        {
          $t[$i] = $token;
          $token = strtok("-");
          $i++;
        }
				if($sum>1){
					$query .= " OR (Product_price BETWEEN $t[0] AND $t[1])";
				} else {
					$query .= " AND (Product_price BETWEEN $t[0] AND $t[1])";
				}

      }

    }
  }
/*
if($sum == 0){
  $query = mysqli_query($conn,"SELECT * FROM mobiledataset");
}*/
//echo $query;
$q = mysqli_query($conn,$query);
while($s = mysqli_fetch_array($q)){
  $id = $s['id'];
  $pname = $s['Product_name'];
  $pimg = $s['Product_img'];
  $pprice= $s['Product_price'];
  $prate= $s['rating'];
  $pdes= $s['prod_des'];
  $p_review= $s['total_review'];
  $pans= $s['ans_ask'];

  echo '
<a href="discription.php?id='.$id.'&cat='.$cat.'">
  <div id="res-con" onclick="">

    <div id="item-img"><img src="'.$pimg.'" alt="'.$pname.'"></div>

    <div id="item-des">
      <p id="des-title">'.$pname.'</p>

      <div id="des-report">

        <div id="des-rate">
          <p>'.$prate.'</p>
          <i class="fa">&#xf005;</i>
        </div>

        <p id="des-r">'.$p_review.'</p>
      </div>

      <p id="des-con">'.$pdes.'</p>
    </div>

    <p id="item-price">&#8377 '.$pprice.'</p>

  </div>
  </a>
  ';

}
//echo $query;
?>
