<?php
	include 'connection.php';
	include 'functions.php';

	$page = 'WishList';

	if(!loggedin()){
		header('Location:Login.php');
	}

?>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" type="image/png" href="../pics/logo_icon.png">
	<title>Wishlist</title>
<?php include 'includes.php'; ?>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Candal|Lora" />

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="../css/itmcart.css">
	<link rel="stylesheet" type="text/css" href="../css/homec_1.css">
	<script src="../scripts/discript.js"></script>
	<script type="text/javascript">

		function des(){
			document.location.href= 'discription.php';
		}

		function topage(){
			document.location.href= 'discription.php';
		}

	</script>
	<style>
	* {
		box-sizing: border-box;
	}

	#cart-header {
		width: auto;
		height: 70px;
		background-color: white;
		padding-top: 10px;
		padding-left: 30px;
		font-size: 18px;
		font-family: Arial, Helvetica, sans-serif;
		font-weight: bold;
	}

	#card-sub-header{
		font-size: 17px;
		font-weight: normal;
		margin-top: -7px;
	}
	</style>



</head>
<body id="body" style="background-color: #EDE7E7" onbeforeunload="pageAnalytics()">

	<?php include 'nav.php'; ?>

	<div id="contents">

		<div class="cart-items">
			<div id="cart-header">
				<p>WishList</p>
				<p id="card-sub-header">These are your wishlist products from Expressso.</p>
			</div>

			<?php
				include 'connection.php';
				$select = mysqli_query($conn,"SELECT * FROM wishlist WHERE uid='$uid'");

				while($s = mysqli_fetch_array($select)){


					$id = $s['id'];
					$pid = $s['product_id'];
					$cat = $s['cat'];


					$pname = getProductDetails($conn,$pid,$cat,"Product_name");
					$pprice = getProductDetails($conn,$pid,$cat,"Product_price");
					$pimg = getProductDetails($conn,$pid,$cat,"Product_img");
					$pbrand = getProductDetails($conn,$pid,$cat,"by_info");




			echo '<div class="cart-content">

				<div id="cart-con-imgs-count">

					<div id="con-cart-img"><img src="'.$pimg.'" alt="Mobile" id="cart-img"></div>
					<div class="section" style="padding-bottom:20px;margin-top : 15px;"></div>
				</div>


				<div id="cart-con-dtl">

					<a id="dtl-name" href="discription.php?id='.$pid.'&cat='.$cat.'">'.$pname.'</a>
					<p id="dtl-brand">Brand : '.$pbrand.'</p>
					<br>
					<p id="dtl-price">&#8377;'.$pprice.'</p>
					<br>
					<p class="remove"><a href="wishremove.php?id='.$id.'"><i class="fa fa-trash fa-2x" style="color : #00095B"></i></a></p>
				</div>

			</div>';
		} ?>
		</div>


	</div>

	<div id="cart-footer">
		<div id="foot-icon">
			<img src="../pics/logo_icon.png" alt="logo">
			<div>@ExpressssoShopping.in</div>

		</div>

		<div id="foot-help">Need Help? Visit the <a href="#">FAQs</a> or <a href="#">Contact Us</a></div>
	</div>

	<script>
	    $(document).ready(function(){

	function remove(){
	var total = document.getElementById("total").value;
	$.ajax({
	url:"wishremove.php",
	method:"POST",
	data:{total:total,cat:<?php echo $cat; ?>,pid:<?php echo $pid ?>}
	});
	}

	$('.add_to_wish1').click(function(){
		remove();
	});

	});
	</script>

</body>
</html>
