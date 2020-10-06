<?php
	include 'connection.php';
	include 'functions.php';
	$page = 'Cart';
	$title = 'Cart';
	if(!loggedin()){
		header('Location:Login.php');
	}

?>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" type="image/png" href="../pics/logo_icon.png">
	<title>Online Shpping for Family. We bring services to your hands.</title>
	<?php include 'includes.php'; ?>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Candal|Lora" />

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="../css/itmcart.css">
	<link rel="stylesheet" type="text/css" href="../css/homec_1.css">
	<link rel="stylesheet" type="text/css" href="../css/css.css">

	<script src="../scripts/discript.js">

		if (loggedin()) {
			var page= document.getElementById("nocart-dialog");
			page.style.display="block";
		}
	</script>

	<script type="text/javascript">

		function des(){
			document.location.href= 'discription.php';
		}

		function topage(pagename){
			document.location.href = pagename;
		}

		function load_book(op){
			var view="booking-dialog";
			if(op==="can_detail"){
				var x = document.getElementById("body");

				var con= document.getElementById(view);
				con.style.display="none";

			  	if (window.getComputedStyle(con).display === "none") {
			    	x.style.overflow = "scroll";
			  	}

			}
			if(op==="order_btn"){
				var con= document.getElementById(view);
				con.style.display="block";

				var x = document.getElementById("body");

			  	if (window.getComputedStyle(con).display === "block") {
			  		document.getElementById("regForm").reset();
			    	x.style.overflow = "hidden";

			  	}
			}
		}

		function paymode(){
			var x = document.getElementsByClassName("opt-med-2");
			x.style.display = "hidden";
		}
	</script>

	<script type="text/javascript">
	    var c=0;
	    function pop(check,msg){

	        if(check=="true"){
	            document.getElementById("sign-dialog").style.display="block";
	            document.getElementById("contents").style.display="none";
	            document.getElementById("signbox-content").innerHTML= msg;
	        }
	        else if(check=="false"){
	            document.getElementById("sign-dialog").style.display="none";
	            document.location.href= "billing.php";
	        }

	    }
	</script>

	<style type="text/css">
		* {
			box-sizing: border-box;
		}

		#nocart-dialog{
			display: none;
		}

		#regForm {
		background-color: #ffffff;
		font-family: Arial;
		position: absolute;
		width: 650px;
		height: auto;
		margin-top: 100px;
		margin-left: 28%;
		padding-bottom: 20px;
		box-shadow: 0 1px 2px rgba(0,0,0,0.6), 0 1px 20px rgba(0,0,0,0.0) inset;
		}

		input{
			padding: 10px;
			width: auto;
			font-size: 13px;
			font-family: Raleway;
			border: 1px solid #aaaaaa;
			outline: none;
			border-radius: 5px;
			font-weight: bold;

		}

		input.invalid {
			background-color: #ffdddd;
		}

		.tab {
			display: none;
		}

		#nextBtn {
			background-color: #4CAF50;
			color: #ffffff;
			border: none;
			padding: 10px 20px;
			font-size: 17px;
			margin-right: 20px;
			margin-top: 30px;
			margin-left: 5px;
			border-radius: 5px;
			font-family: Raleway;
			cursor: pointer;
			outline : none;
		}

		#nextBtn:hover,#prevBtn:hover{
			opacity: 0.8;
		}

		#prevBtn {
			background-color: #bbbbbb;
			color: #ffffff;
			border: none;
			padding: 10px 20px;
			font-size: 17px;
			margin-top: 30px;
			border-radius: 5px;
			font-family: Raleway;
			cursor: pointer;
			outline : none;
		}

		.step {
			height: 15px;
			width: 15px;
			margin: 0 2px;
			background-color: #00095B;
			border: none;
			border-radius: 50%;
			display: inline-block;
			opacity: 0.5;
		}

		.step.active {
			opacity: 1;
		}

		.step.finish {
			opacity: 1;
				background-color: #00095B;
		}

		.box{
			display: none;
			margin-left: 40px;
			margin-right: 40px;
			padding-top: 20px;
			margin-top: 10px;
			padding-bottom: 20px;
			background-color: #00000033;
			border-radius: 10px;
			box-shadow: 0 5px 5px rgba(0,0,0,0.5), 0 1px 20px rgba(0,0,0,0.0) inset;
		}
		.payopt-2{
			display: block;
		}

		#cred-img{
			width: 60px;
			height: 40px;
			border-radius: 5px;
		}

		#deb-cvv-img{
			width: 60px;
			height: 40px;
			margin-left: 10px;
			border-radius: 5px;
		}

		#cardname, #card-no{
			width: 230px;
			height: auto;
		}

		.opt-pay-medium{
			margin-top: 30px;
			margin-left: 20px;
			display: flex;
		}

		.opt-pay-medium p{
			margin-left: 20px;
		}

		.opt-med-1,.opt-med-2,.opt-med-3{
			width: 150px;
			padding: 10px 10px;
			background-color: blue;
			margin-left: 10px;
			border-radius: 5px;
			font-family: Arial;
			color : white;
			cursor: pointer;
			box-shadow: 0 5px 5px rgba(0,0,0,0.5), 0 1px 20px rgba(0,0,0,0.0) inset;
		}

		/*.pay-active{
			color : blue;
			background-color: rgba(0,0,0,0.1);
			font-weight: bolder;
		}*/
	</style>

</head>
<body id="body" style="background-color: #EDE7E7" onbeforeunload="pageAnalytics()">

	<div id="nocart-dialog">
	</div>

	<div id="sign-dialog">
	    <div id="box">
	      	<h4 id="signbox-content"></h4>
	          <a onclick="pop('false','')" class="close">OK</a>
	    </div>
    </div>

	<div id="cart-main">

		<?php include 'nav.php'; ?>

		<div id="contents">

			<div class="cart-items">
				<div id="cart-header">My Cart (<?php echo countItems($conn,$uid); ?>)</div>

				<?php
					$grand_total = 0;
					$grand_price = 0;
					$select = mysqli_query($conn,"SELECT * FROM cart WHERE uid='$uid' ORDER BY id DESC");

					while($s = mysqli_fetch_array($select)){
						$pid = $s['product_id'];
						$cat = $s['cat'];
						$total = $s['total'];
						$cart_id = $s['id'];

						$pname = getProductDetails($conn,$pid,$cat,"Product_name");
						$pprice = getProductDetails($conn,$pid,$cat,"Product_price");
						$pimg = getProductDetails($conn,$pid,$cat,"Product_img");
						$pbrand = getProductDetails($conn,$pid,$cat,"by_info");
						$total_price = $total*$pprice;

						$grand_total = $grand_total + $total;
						$grand_price = $grand_price + $total_price;
				?>

				<div class="cart-content">
					<div id="cart-con-imgs-count">

						<div id="con-cart-img"><img src="<?php echo $pimg; ?>" alt="Mobile" id="cart-img"></div>
						<div class="section" style="padding-bottom:20px;margin-top : 15px;"></div>

					</div>
					<div id="cart-con-dtl">
						<a id="dtl-name" href="discription.php?id=<?php echo $pid; ?>&cat=<?php echo $cat; ?>"><?php echo $pname; ?></a>
						<p id="dtl-brand">Brand : <?php echo $pbrand; ?></p>
						<br>
						<p id="dtl-price">&#8377; <?php echo $pprice; ?></p>
						<br>
						<a href="remove_cart.php?id=<?php echo $cart_id; ?>" id="dtl-remove">REMOVE</a>
						<input type="text" style="display:none" value="<?php echo $cart_id; ?>">
					</div>
					<div id="cart-con-ptotal">
						<p id="ptotal-msg">Total price of items of this product</p>
						<div>
							<p id="ptotal-price">&#8377; <?php echo $total_price; ?></p>
							<p>(<?php echo $total; ?> products)</p>
						</div>
					</div>
				</div>
			<?php } ?>
			</div>

			<div class="price-details" <?php if (countItems($conn,$uid)==0){?>style="display:none"<?php } ?>>
				<div id="p-head"><p>PRICE DETAILS</p></div>

				<div id="t-detail">
					<div>
						<p class="detail-title">Price (<?php echo $grand_total; ?> items)<p>
						<p class="detail-res">&#8377; <?php echo $grand_price; ?></p>
					</div>
					<div>
						<p class="detail-title">Delivery Charges<p>
						<p class="detail-res" style="color : green;">FREE</p>
					</div>
					<div style="color : #e7e1e1;font-size : 16px;">-------------------------------------------------------------</div>
					<div  style="font-weight : bold">
						<p class="detail-title">Total Amount</p>
						<p class="detail-res">&#8377; <?php echo $grand_price; ?></p>
					</div>
					<button id="order_btn" onclick="load_book('order_btn')">Place Order</button>
				</div>
			</div>
		</div>

		<div id="cart-footer">
			<div id="foot-icon">
				<img src="../pics/logo_icon.png" alt="logo">
				<div>@ExpressssoShopping.in</div>
			</div>

			<div id="foot-help">Need Help? Visit the <a href="#">FAQs</a> or <a href="#">Contact Us</a></div>
		</div>

		<!-- //////////////////////////////////////////Booking Dailog Box////////////////////////////////////////////////////// -->

		<div id="booking-dialog">
			<?php
			if(isset($_POST['name'])&&isset($_POST['mob'])&&isset($_POST['pin-code'])&&isset($_POST['email'])&&isset($_POST['add'])&&isset($_POST['city'])){
				$name = $_POST['name'];
				$mob = $_POST['mob'];
				$pincode = $_POST['pin-code'];
				$email = $_POST['email'];
				$add = $_POST['add'];
				$city = $_POST['city'];
				$invoice_no = rand(10000000,99999999);
				$order_time= date("d/m/y");
				$date = date("Y/m/d");

				if(!empty($name)&&!empty($mob)&&!empty($pincode)&&!empty($email)&&!empty($add)&&!empty($city)){
					$count = 0;
					$cart = mysqli_query($conn,"SELECT * FROM cart WHERE uid='$uid'");
					while($c = mysqli_fetch_array($cart)){
						$cid = $c['id'];
						$cpid = $c['product_id'];
						$ccat = $c['cat'];
						$ctotal = $c['total'];


						$query = "INSERT INTO orders VALUES('',$uid,'$name','$email','$mob','$add','$pincode','$city','$invoice_no','$order_time','$cpid','$ccat','$ctotal','$date')";
						$_SESSION["inv_no"] = $invoice_no;

						if(mysqli_query($conn,$query)){
							$count++;
							$del = mysqli_query($conn,"DELETE FROM cart WHERE id='$cid'");
						}
					}
					if($count > 0){
						echo "<script> pop('true','Products has been successfully ordered. Thank You for buying. Please proceed to issue your Invoice Page'); </script>";
						/*header('Location:billing.php');*/
					}
				}
			}
			?>
			<form id="regForm" action="itemcart.php" method="POST">
				<i class="far fa-window-close fa-3x" id="can_detail" onclick="load_book('can_detail')"></i>

				<div class="tab">
					<h4><center id="del-header"><b>Delivary Details</b></center></h4>
					<div id="del-con">
						<div class="field1">
							<div class="field">
								<label for="del-local">Name*</label>
								<p><input type="text" placeholder="Enter the customer name" name="name" class="booking-inp" id="del-name" value="<?php echo getUserDetails($conn,$uid,'name'); ?>" required></p>
							</div>
							<div class="field">
								<label for="del-local">Mobile Number*</label>
								<p><input type="tel" name="mob" id="del-mob" class="booking-inp" placeholder="Eg:- 9876543210"  value="<?php echo getUserDetails($conn,$uid,'mobile'); ?>" maxlength="10" required></p>
							</div>
						</div>
						<div class="field1">
							<div class="field">
								<label for="del-pin">Pincode*</label>
								<p><input type="text" name="pin-code" id="del-pin" class="booking-inp" placeholder="Eg:- 123-456" class="booking-inp" id="del-name"  required></p>
							</div>
							<div class="field">
								<label for="del-local">Email*</label>
								<p><input type="text" name="email" id="del-local" class="booking-inp" placeholder="Enter your Email" required value="<?php echo getUserDetails($conn,$uid,'mail'); ?>"></p>
							</div>
						</div>
						<div class="field1">
							<div class="field">
								<label for="del-add">Address*</label>
								<p><input type="text" name="add" id="del-add" class="booking-inp" placeholder="Enter your address" required maxlength="100"></p>
							</div>
							<div class="field">
								<label for="del-city">City/District/Town*</label>
								<p><input type="text" name="city" id="del-city" class="booking-inp" placeholder="Enter the city name" required></p>
							</div>
						</div>

					</div>
				</div>

				<div class="tab">
					<h4><center id="del-header"><b>Payment Details</b></center></h4>

					<div class="opt-pay-medium">
				        <!-- <p><input type="radio" checked="true" name="colorRadio" value="payopt-1"> Credit Card</p> -->
				        <p><input type="radio" checked="true" name="colorRadio" value="payopt-2"> Debit Card</p>

				    </div>

				    <div class="payopt-2 box">
				    	<div class="field1">
				    		<div class="field-pay-2">
								<p><input type="tel" placeholder="Debit Card Number" id="card-no" class="pay-input" title="Card Number" name="Card Number">&nbsp;&nbsp;&nbsp;</p>
							</div>
							<div class="field-pay-2"><img src="../pics/debit-card.png" id="cred-img"></div>
						</div>

						<div class="field1">
				    		<div class="field-pay-2">
								<p><input placeholder="Full Name on Card" class="pay-input" id="cardname" name="cardname"></p>
							</div>

							<div class="field-pay-2">
							    <p>&nbsp;&nbsp;&nbsp;Expiry Date :
							    	<input type="number" placeholder="Month" name="nn" id="expiry-opt" min="1" max="12" class="pay-input">
							    	<input type="number" placeholder="Year" class="pay-input" id="expiry-opt" min="10" max="50" maxlength="2" name="yyyy">
							    </p>
							</div>
						</div>

						<div class="field1">
							<div class="field-pay-2"><p><input placeholder="CVV" class="pay-input" id="cvv" style="width: 80px;" maxlength="3" name="phone"></p></div>
							<div class="field-pay-2"><img src="../pics/deb-cvv.jpg" id="deb-cvv-img"></div>
						</div>
				    </div>
				</div>

				<div class="tab final-pay">
					<h4><center id="del-header"><b>Summary Order</b></center></h4>
					<h4 id="del-sub-head"><b>Almost there!</b></h4>

					<p>Are you sure to proceed to the final payment stage ?</p>
					<p>The payment price for the products is : <b>&#8377; <?php echo $grand_price; ?></b></p>
				</div>

				<div style="overflow:auto;">
				    <div style="float:right; display: flex;">
				    	<button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
				    	<button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
						<input type="submit" id="submit" value="Submit" style="display:none">
				    </div>
				</div>

				<div style="text-align:center;margin-top:30px;">
				    <span class="step"></span>
				    <span class="step"></span>
				    <span class="step"></span>
				</div>
			</form>
		</div>

		<script type="text/javascript">
			var currentTab = 0; // Current tab is set to be the first tab (0)
			showTab(currentTab); // Display the current tab

			function showTab(n) {
			  // This function will display the specified tab of the form...
			  var x = document.getElementsByClassName("tab");
			  x[n].style.display = "block";
			  //... and fix the Previous/Next buttons:
			  if (n == 0) {
			    document.getElementById("prevBtn").style.display = "none";
			  } else {
			    document.getElementById("prevBtn").style.display = "inline";
			  }
			  if (n == (x.length - 1)) {
			    /*document.getElementById("nextBtn").innerHTML = "Buy your Orders";*/
			    document.getElementById("nextBtn").style.display = "none";
			    document.getElementById("submit").style.display = "block";
			  } else {
			    document.getElementById("nextBtn").innerHTML = "Next";
			  }
			  //... and run a function that will display the correct step indicator:
			  fixStepIndicator(n)
			}

			function nextPrev(n) {
			  // This function will figure out which tab to display
			  var x = document.getElementsByClassName("tab");
			  // Exit the function if any field in the current tab is invalid:
			  if (n == 1 && !validateForm()) return false;
			  // Hide the current tab:
			  x[currentTab].style.display = "none";
			  // Increase or decrease the current tab by 1:
			  currentTab = currentTab + n;
			  // if you have reached the end of the form...
			  if (currentTab >= x.length) {
			    // ... the form gets submitted:
			    document.getElementById("regForm").submit();
			    return false;
			  }
			  // Otherwise, display the correct tab:
			  showTab(currentTab);
			}

			function validateForm() {
			  // This function deals with validation of the form fields
			  var x, y, i, valid = true;
			  x = document.getElementsByClassName("tab");
			  y = x[currentTab].getElementsByClassName("booking-inp");
			  y1 = x[currentTab].getElementsByClassName("pay-input");
			  // A loop that checks every input field in the current tab:
			  for (i = 0; i < y.length; i++) {
			    // If a field is empty...
			    if (y[i].value == "") {
			      // add an "invalid" class to the field:
			      y[i].className += " invalid";
			      // and set the current valid status to false
			      valid = false;
			    }
			  }

			  for (i = 0; i < y1.length; i++) {
			    // If a field is empty...
			    if (y1[i].value == "") {
			      // add an "invalid" class to the field:
			      y1[i].className += " invalid";
			      // and set the current valid status to false
			      valid = false;
			    }
			  }

			  // If the valid status is true, mark the step as finished and valid:
			  if (valid) {
			    document.getElementsByClassName("step")[currentTab].className += " finish";
			  }
			  return valid; // return the valid status
			}

			function fixStepIndicator(n) {
			  // This function removes the "active" class of all steps...
			  var i, x = document.getElementsByClassName("step");
			  for (i = 0; i < x.length; i++) {
			    x[i].className = x[i].className.replace(" active", "");
			  }
			  //... and adds the "active" class on the current step:
			  x[n].className += " active";
			}
		</script>

		<!-- <script type="text/javascript">
			var currentTab = 0; // Current tab is set to be the first tab (0)
			showTab(currentTab); // Display the current tab

			function showTab(n) {
				// This function will display the specified tab of the form...
				var x = document.getElementsByClassName("tab");
				x[n].style.display = "block";
				//... and fix the Previous/Next buttons:
				if (n == 0) {
					document.getElementById("prevBtn").style.display = "none";
				} else {
					document.getElementById("prevBtn").style.display = "inline";
				}
				if (n == (x.length - 1)) {
					document.getElementById("nextBtn").style.display = "none";
					document.getElementById("submit").style.display = "block";
				} else {
					document.getElementById("nextBtn").innerHTML = "Next";
				}
				//... and run a function that will display the correct step indicator:
				fixStepIndicator(n)
			}

			function nextPrev(n) {
				// This function will figure out which tab to display
				var x = document.getElementsByClassName("tab");
				// Exit the function if any field in the current tab is invalid:
				if (n == 1 && !validateForm()) return false;
				// Hide the current tab:
				x[currentTab].style.display = "none";
				// Increase or decrease the current tab by 1:
				currentTab = currentTab + n;
				// if you have reached the end of the form...
				if (currentTab >= x.length) {
					// ... the form gets submitted:
					document.getElementById("regForm").submit();
					return false;
				}
				// Otherwise, display the correct tab:
				showTab(currentTab);
			}

			function validateForm() {
				// This function deals with validation of the form fields
				var x, y, i, valid = true;
				x = document.getElementsByClassName("tab");
				y = x[currentTab].getElementsByClassName("booking-inp");
				y1 = x[currentTab].getElementsByClassName("pay-input");
				// A loop that checks every input field in the current tab:
				for (i = 0; i < y.length; i++) {
					// If a field is empty...
					if (y[i].value == "") {
						// add an "invalid" class to the field:
						y[i].className += " invalid";
						// and set the current valid status to false
						valid = false;
					}
				}

				for (i = 0; i < y1.length; i++) {
					// If a field is empty...
					if (y1[i].value == "") {
						// add an "invalid" class to the field:
						y1[i].className += " invalid";
						// and set the current valid status to false
						valid = false;
					}
				}

				// If the valid status is true, mark the step as finished and valid:
				if (valid) {
					document.getElementsByClassName("step")[currentTab].className += " finish";
				}
				return valid; // return the valid status
			}

			function fixStepIndicator(n) {
				// This function removes the "active" class of all steps...
				var i, x = document.getElementsByClassName("step");
				for (i = 0; i < x.length; i++) {
					x[i].className = x[i].className.replace(" active", "");
				}
				//... and adds the "active" class on the current step:
				x[n].className += " active";
			}
		</script> -->
	</div>


<?php include 'analytics.php'; ?>
</body>
</html>
