<?php
	include 'connection.php';
	include 'functions.php';

	$page = 'orders';

	if(!loggedin()){
		header('Location:Login.php');
	}

?>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" type="image/png" href="../pics/logo_icon.png">
	<title>My Orders</title>

	<?php include 'includes.php'; ?>

	<link rel="stylesheet" type="text/css" href="../css/itmcart.css">
	<link rel="stylesheet" type="text/css" href="../css/homec_1.css">
	<link rel="stylesheet" type="text/css" href="../css/homec_2.css">
	<link rel="stylesheet" type="text/css" href="../css/homec_3.css">
    <link rel="stylesheet" type="text/css" href="../css/css.css">

	<script src="../scripts/discript.js"></script>

	<script type="text/javascript">

		function topage(pagename){

			document.location.href = pagename;

		}

		function tolog(){
			document.location.href = 'Login.php';
		}
	</script>

	<script type="text/javascript">

	    /*function change_invoice(){
	        var total = document.getElementById("total").value;
	        var currinvo= "15379954";
	        $.ajax({
		        url:"discription.php",
		        method:"POST",
		        data:{
		            change_invo: currinvo
	        	}
	        });
	   	}*/

		/*$('.change_btn').click(function(){
	    	change_invoice();
		});*/

    </script>

	<style type="text/css">

		#user{
			color : #ffc800;
		}

		.search-box{
		    visibility: hidden;
		}

		.login-p,.logged-p{
			padding-top: 15px;
			width : auto;
			height : 40px;
			background-color : white;
			cursor: pointer;
			margin-bottom: 0px;
			text-align: left;
			padding-left: 20px;
			border-radius: 2px;
		}

		#card-sub-header{
			font-size: 17px;
			font-weight: normal;
			margin-top: -7px;
		}

		#contents {
			margin-top: 40px;
			margin-left: 200px;
			margin-right: 200px;
			background-color: #EDE7E7;
		}

		.cart-items {
			margin: 10px 5px;
			margin: 0px 10px;
			box-shadow: 0 1px 2px rgba(0,0,0,0.4), 0 1px 20px rgba(0,0,0,0.0) inset;
		}

		#ptotal-price {
			color: blue	;
			font-size : 20px;
			margin-top : 40px;
			display : flex;
		}

		#dots{
			text-align:center;
			margin-top:10px;
			margin-left: 100px;
		}

		#cart-footer {
			width: auto;
			height: 100px;
			background-color: white;
			display: flex;
			padding-left: 20px;
			margin-top: 430px;
			box-shadow: 0 12px 20px rgba(0,0,0,0.8), 0 1px 20px rgba(0,0,0,0.0) inset;
		}

		#dtl-name{
			cursor: context-menu;
		}

		.display-box {
  			top:58px;
		}

		.column25 {
			float:left;
			width:25%;
			padding:10px;
			padding-left: 40px;
		}

		.column75 {
			float:left;
			width:55%;
		  padding-top: 10px;
		  margin-left: -30px;
		}

		.column25 img {
		  max-width: 50px;
		  max-height: 50px;
		  border-radius: 0px;
		  margin: auto;
		}
	</style>

</head>
<body id="body"style="background-color: #EDE7E7" onbeforeunload="pageAnalytics()">

	<?php include 'nav.php'; ?>

	<div id="contents">
		<?php
			$query1 = mysqli_query($conn,"SELECT * FROM orders WHERE uid='$uid' ORDER BY id DESC");
			$query2 = mysqli_query($conn,"SELECT COUNT(*) AS total FROM orders WHERE uid='$uid'");
			$t = mysqli_fetch_array($query2);
			$total = $t['total'];
		?>
		<div class="cart-items">
			<div id="cart-header">
				<p>My Orders (<?php echo $total; ?>)</p>
				<p id="card-sub-header">These are your ordered products from Expressso.</p>
			</div>

			<?php
				while($q = mysqli_fetch_array($query1)){
					$pid = $q['pid'];
					$cat = $q['cat'];
					$pname = getProductDetails($conn,$pid,$cat,'Product_name');
					$pbrand = getProductDetails($conn,$pid,$cat,'by_info');
					$price = getProductDetails($conn,$pid,$cat,'Product_price');
					$pimg = getProductDetails($conn,$pid,$cat,'Product_img');
					$invoice = $q['invoice_no'];
					$ptotal = $q['total'];
			?>

			<div class="cart-content">
				<div id="cart-con-imgs-count">

					<div id="con-cart-img"><img src="<?php echo $pimg; ?>" alt="Mobile" id="cart-img"></div>
					<div class="section" style="padding-bottom:20px;margin-top : 15px;"></div>
				</div>

				<div id="cart-con-dtl">
					<p id="dtl-name" ><?php echo $pname; ?></p>
					<p id="dtl-brand">Brand : <?php echo $pbrand; ?></p>
					<br>
					<p id="dtl-price">&#8377; <?php echo $price; ?></p>
					<br>
					<div id="dtl_invoice">
						<p id="dtl-price">Invoice Number: <span style="color : blue; font-weight: bold"><?php echo $invoice; ?></span></p>
						<a href="invoice.php?invoice_no=<?php echo $invoice; ?>" target="_blank"><input type="button" name="toinvoice" class="change_btn" value="View Invoice";></a>
					</div>

				</div>

				<div id="cart-con-ptotal">
					<p id="ptotal-msg">The paid price for this product</p>
					<div>
						<p id="ptotal-price">&#8377; <?php echo $price*$ptotal; ?></p>
						<p>(<?php echo $ptotal; ?> products)</p>
					</div>
				</div>
			</div>

			<?php } ?>
		</div>
	</div>

	<div id="cart-footer">
		<div id="foot-icon">
			<img src="../pics/logo_icon.png" alt="logo">
			<div>@ExpressssoShopping.in</div>
		</div>

		<div id="foot-help">Need Help? Visit the <a href="#">FAQs</a> or <a href="#">Contact Us</a></div>
	</div>
</body>
</html>
