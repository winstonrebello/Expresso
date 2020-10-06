<?php
include 'connection.php';
include 'functions.php';
$page = "list";
//$pid = $_GET['id'];
$cat = $_GET['cat'];

if($cat == 1){
	$table = "head_earphone";
	$title = "Headphones";
} else if($cat == 2){
	$table = "mobiledataset";
	$title = "Smartphones";
} else if($cat == 3){
	$table = "laptopdataset";
	$title = "Laptops";
} else {
	header('Location:Home Page.php');
}
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" type="image/png" href="../pics/logo_icon.png">
	<title>Online Shopping for Family. We bring services to your hands.</title>


	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Candal|Lora" />

	<?php include 'includes.php'; ?>

	<link rel="stylesheet" type="text/css" href="../css/items_page.css?v=2">

	<style type="text/css">
		.foot-base hr{
	        height: 5px;
	        margin-left: 50px;
	        margin-right: 50px;
	        margin-top: 50px;
	    }
	</style>

</head>
<body onbeforeunload="pageAnalytics()">

	<?php include 'nav.php'; ?>

	<div id="contents">

		<div class="filter">
			<div id="filt-head"><h4><b>Filters&nbsp;&nbsp;<i class="fas fa-caret-down"></i></b></h4></div>

			<div id="filt-brand">
				<p><b>Brand</b></p>
				<?php
				$select = mysqli_query($conn,"SELECT DISTINCT by_info FROM $table");
				while($s = mysqli_fetch_array($select)){
					$by_info = $s['by_info'];
					echo '
					<div>
						<input type="checkbox" id="brand-one" name="brand" class="common_selector brand1" value="'.$by_info.'">
						<label for="brand-one">&nbsp;&nbsp;&nbsp;&nbsp;'.$by_info.'</label><br>
					</div>
					';
				}
				?>

			</div>
			<div id="filt-rate">
				<p><b>Ratings</b></p>
				<?php
				for($i=1;$i<=5;$i++){
				?>
				<div>
					<input type="checkbox" id="rate-one" name="rate-1" class="common_selector rating" value="<?php echo $i; ?>">
					<label for="rate-one">
						<span class="fa fa-star checked"></span>&nbsp;&nbsp;<?php echo $i; ?> star & above
					</label><br>
				</div>
				<?php
				}
				?>

			</div>
			<div id="filt-price">
				<p><b>Price</b></p>

				<div>
					<input type="checkbox" id="price-one" name="price-1" class="common_selector prange" value="5000-10000">
					<label for="price-one">&nbsp;&nbsp;&nbsp;&nbsp;5000-10000</label><br>
				</div>
				<div>
					<input type="checkbox" id="price-two" name="price-2" class="common_selector prange" value="10000-30000">
					<label for="price-two">&nbsp;&nbsp;&nbsp;&nbsp;10000-30000</label><br>
				</div>
				<div>
					<input type="checkbox" id="price-three" name="price-3" class="common_selector prange" value="30000-50000">
					<label for="price-three">&nbsp;&nbsp;&nbsp;&nbsp;30000-50000</label><br>
				</div>
					<div>
					<input type="checkbox" id="price-three" name="price-4" class="common_selector prange" value="50000-100000">
					<label for="price-three">&nbsp;&nbsp;&nbsp;&nbsp;50000-100000</label><br>
				</div>
					<div>
					<input type="checkbox" id="price-three" name="price-5" class="common_selector prange" value=">100000">
					<label for="price-three">&nbsp;&nbsp;&nbsp;&nbsp;> 100000</label><br>
				</div>
			</div>
		</div>

		<div class="prod-items">
			<div id="res-header"></div>

			<?php

				$query= "SELECT * FROM $table";

				/*$wdth = 77;
				$hght = 155;*/
				/*if($table=="mobiledataset"){
					$wdth = 75;
					$hght = 155;
				}
				elseif($table=="mobiledataset"){
					$wdth = 140;
					$hght = 107;
				}
				elseif($table=="mobiledataset"){
					$wdth = 120;
					$hght = 133;
				}*/


				$select = mysqli_query($conn,$query);

				while($s = mysqli_fetch_array($select)){
					$id = $s['id'];
					$pname = $s['Product_name'];
					$pimg = $s['Product_img'];
					$pprice= $s['Product_price'];
					$prate= $s['rating'];
					$pdes= $s['prod_des'];
					$p_review= $s['total_review'];
					$pans= $s['ans_ask'];
					?>
					<a href="discription.php?id=<?php echo 'id='.$id.'&cat='.$cat; ?>" id="prod<?php echo $cat.$id; ?>" onmouseover="prodid(this)">
										<div id="res-con">

											<div id="item-img"><img src="<?php echo $pimg; ?>" alt="<?php echo $pname; ?>"></div>

											<div id="item-des">
												<p id="des-title"><?php echo $pname; ?></p>

												<div id="des-report">

													<div id="des-rate">
														<p><?php echo $prate; ?></p>
														<i class="fa">&#xf005;</i>
													</div>

													<p id="des-r"><?php echo $p_review; ?></p>
												</div>

												<p id="des-con"><?php echo $pdes; ?></p>
											</div>

											<p id="item-price">&#8377; <?php echo $pprice; ?></p>

										</div>
										</a>

					<?php
				}

			?>
		</div>
	</div>

	<div class="footer">
		<div class="foot-content">
			<div id="foot-logo">
				<img src="../pics/logo_icon.png" alt="logo">
				<p style="margin-top : 10px">Expressso Shopping</p>
			</div>
			<div id="foot-main">
				<p>Main</p>
				<ul>
					<li><a href="Home.php">Home</a></li>
					<li><a href="Home.php">Shop</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">FAQs</a></li>
				</ul>
			</div>
			<div id="foot-resources">
				<p>Resources</p>
				<ul>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Blog</a></li>
				</ul>
			</div>
			<div id="foot-legal">
				<p>Legal</p>
				<ul>
					<li><a href="#">Terms of Use</a></li>
					<li><a href="#">Privacy Policy</a></li>
				</ul>
			</div>
			<div id="foot-social">
				<p>Social</p>
				<ul>
					<li><a href="https://www.facebook.com/login/">Facebook</a></li>
					<li><a href="https://twitter.com/login?lang=en">Twitter</a></li>
					<li><a href="https://www.linkedin.com/login?fromSignIn=true">LinkedIn</a></li>
				</ul>
			</div>
		</div>
		<div class="foot-base">
	        <hr>
	        <div style="display: flex;">
	            <p>© 2020 Expressso.com</p>
	            <p style="padding-left: 52.7%;">For any query email at <a href="mailto: erpproj123@gmail.com?subject=The%20subject&body=Please%20list%20out%20your%20queries%20and%20send%20it%20to%20us." id="email-id">erpproj123@gmail.com</a></p>
	        </div>
    	</div>
	</div>

<?php include 'analytics.php'; include '../scripts/list_script.php'; ?>
</body>
</html>
