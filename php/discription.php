<?php

$page = 'discription';
    include 'connection.php';
    include 'functions.php';



    $pid = $_GET['id'];
    $cat = $_GET['cat'];
    @$uid = $_SESSION['user_id'];

    $_SESSION['pid'] = $pid;
    $_SESSION['cat'] = $cat;

    if($cat == 1){
      $table = "head_earphone";
    } else if($cat == 2){
      $table = "mobiledataset";
    } else if($cat == 3){
      $table = "laptopdataset";
    } else {
      //header('Location:Home Page.php');
    }

    $select = mysqli_query($conn,"SELECT * FROM $table WHERE id='$pid'");
    if(isset($uid)){
    $state = mysqli_query($conn,"SELECT * FROM wishlist WHERE uid='$uid' && product_id='$pid' && cat='$cat'");
    $stateresult = mysqli_num_rows($state);
    }
    $s = mysqli_fetch_array($select);
    $pname = $s['Product_name'];
    $pimg = $s['Product_img'];
    $pdes = $s['prod_des'];
    $price = $s['Product_price'];
    $rating = $s['rating'];
    $feature = $s['feature'];
    $brand = $s['by_info'];
    $title = $pname;
    $myip = get_client_ip();
    $check = mysqli_query($conn,"SELECT * FROM recommend WHERE ip='$myip' AND name='$brand'");
    if(!mysqli_num_rows($check)){
      mysqli_query($conn,"INSERT INTO recommend VALUES('','$myip','$brand')");
    }


?>

<!DOCTYPE html>
<html>

<head>
    <link rel="icon" type="image/png" href="../pics/logo_icon.png">
    <title><?php echo $pname; ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Candal|Lora" />

    <?php include 'includes.php'; ?>
    <link rel="stylesheet" type="text/css" href="../css/css1.css">
    <link rel="stylesheet" type="text/css" href="../css/itmcart.css">

    <script type="text/javascript">
    startTime = new Date();

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
		  if(op==="stock_check"){
			  <?php $checkquery=mysqli_query("SELECT quantity from head_earphone where id=$pid && cat=$cat");
					   $q = mysqli_fetch_array($checkquery);
					   $total = $p['total'];
				?>
					   if(quantity >= $total){
				
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
					   else{
						   echo"Out of stack"
					   }
			  		 
				

		  }

         
        }
        $(document).ready(function(){

    function add_to_wish(){
    $.ajax({
    url:"wish.php",
    method:"POST",
    data:{
      cat:<?php echo $cat; ?>,
      pid:<?php echo $pid ?>
    },
    success:function(data){
        $('.msg').html(data);
    }
    });
    }

    function remove_from_wish(){
    $.ajax({
    url:"wishremove_dis.php",
    method:"POST",
    data:{
      cat:<?php echo $cat; ?>,
      pid:<?php echo $pid ?>
    },
    success:function(data){
        $('.msg').html(data);
    }
    });
    }


    $('.add_to_wish').click(function(){
      var x=document.getElementById('heart');
      if (x.src.match("../pics/off.png")) {

        x.src = "../pics/on.png";
        add_to_wish();
      }
      else{
        x.src = "../pics/off.png";
        remove_from_wish();

      }

    });

  });
    </script>

    <style>
        * {
      		box-sizing: border-box;
      	}

        .foot-base hr{
              height: 5px;
              margin-left: 50px;
              margin-right: 50px;
              margin-top: 50px;
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
      	/*background-image: url("../pics/backgnd.jpg");*/
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
      		margin-right: 50px;
      		margin-top: 30px;
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
        #heart{
          height: 50px;
          width:50px;
          margin-left: 60px;
          background-size: cover;
          background-repeat: no-repeat;
          box-shadow: 0 5px 5px rgba(0,0,0,0.5), 0 1px 20px rgba(0,0,0,0.0) inset;
          border-radius: 40px;
          cursor: pointer;
          }
      	/*.pay-active{
      		color : blue;
      		background-color: rgba(0,0,0,0.1);
      		font-weight: bolder;
      	}*/
    </style>

</head>

<body id="body" onbeforeunload="pageAnalytics()">

    <div class="main">

        <div class="row dis-row">
            <div class="col-sm-6 dis-main-img">
                <img class="img_main" src="<?php echo $pimg; ?>" alt="mobile">
            </div>
            <div class="col-sm-6 dis-main-con">
                <div class="content1">

                    <div>
                        <label for="P-Name" class="P_name"><?php echo $pname; ?></label>
                    </div>

                    <div>
                        <label for="Rating" class="Rating">Rating: <?php echo $rating; ?></label></div>
                    <hr class="hr">

                    <div class=" cont2">
                        <div class="about_item">
                            <label for="about item" class="about_item" id="a">About this item </label>
                            <hr id="b">

                            <p id="con-feature">
                              <?php
                                  echo $feature;
                              ?>
                            </p>

                            <hr>
                        </div>
                    </div>
                    <div class="section1">
                        <h6 class="title-attr"><small class="z">Quantity</small></h6>
                        <div style="display: flex; align-items: center; margin-top: 5px;">

                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="1" id="total" onchange="updateFunc()"/>
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
               <div>
                 <?php
                  if(@$stateresult > 0){

                     echo "<img id='heart' class='add_to_wish' src='../pics/on.png' alt='wish'>";
                  }else{

                    echo "<img id='heart' class='add_to_wish' src='../pics/off.png' alt='wish'>";
                  }
                ?>
              </div>

                        </div>
                    </div>

                    <div>
                        <label for="price" class="Price">Price: <?php echo $price; ?></label>
                    </div>
                    <div>
                        <button id="textchange" onclick="TextChange()" class="add_to_cart" value="Add to cart"><span class="glyphicon glyphicon-shopping-cart"></span>
                            Add to cart</button>

                        <button class="buying" onclick="load_book('stock_check'); buy_product()" <?php if(!loggedin()){ echo 'disabled';} ?>>Buy Now</button>
                    </div>
                    <p class="msg"></p>
                </div>
            </div>
        </div>

        <div class="discription">


            <h3>Have any Questions ?</h3>
            <h5>Find answers in product info, Q&As, reviews</h5>
            <p><input value="" class="input_question"></p>


            <div class="row" style="padding: 15px 15px 15px 15px;">
                <h3>Product discription</h3>
                <p><?php echo $pdes; ?></p>
            </div>
        </div>

        <?php include 'footer.php'; ?>

    </div>

    <script>
        $(document).ready(function(){

          function add_to_cart(){
          var total = document.getElementById("total").value;
          $.ajax({
            url:"cart.php",
            method:"POST",
            data:{
                  total:total,
                  cat:<?php echo $cat; ?>,
                  pid:<?php echo $pid ?>
                },
            success:function(data){
              $('.msg').html(data);
            }
          });
          }

          $('.add_to_cart').click(function(){
    	        add_to_cart();
    	    });

        });
    </script>
    <!-- //////////////////////////////////////////Booking Dailog Box////////////////////////////////////////////////////// -->

  	<div id="booking-dialog">

  		<form id="regForm" action="placeorder.php" method="POST">
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
  			        <p><input type="radio" checked="true" name="colorRadio" value="payopt-1"> Credit Card</p>
  			        <p><input type="radio" name="colorRadio" value="payopt-2"> Debit Card</p>

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


  				<p>The payment price for the products is : <b>&#8377; <span id="fprice"></span></b></p>
  			</div>

  			<div style="overflow:auto;">
  			    <div style="float:right;">
  			    	<button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
  			    	<button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
  						<button type="button" id="submit" style="display:none">Submit</button>
  			    </div>
  			</div>

  			<div style="text-align:center;margin-top:10px;">
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

    <script>
        function buy_product(){
            document.getElementById("fprice").innerHTML = <?php echo $price; ?>* document.getElementById("total").value;
        }
    </script>

    <script>
        $(document).ready(function(){

          function buyProduct(){
          var total = document.getElementById("total").value;
          var name = document.getElementById("del-name").value;
          var mob = document.getElementById("del-mob").value;
          var pincode = document.getElementById("del-pin").value;
          var email = document.getElementById("del-local").value;
          var add = document.getElementById("del-add").value;
          var city = document.getElementById("del-city").value;
          $.ajax({
            url:"placeorder.php",
            method:"POST",
            data:{
              total:total,
              cat:<?php echo $cat; ?>,
              pid:<?php echo $pid ?>,
              name:name,
              mob:mob,
              pincode:pincode,
              email:email,
              add:add,
              city:city
            },
            success:function(data){
              //$('.msg').html(data);
              location.href = 'myorders.php';
            }
          });
          }

          $('#submit').click(function(){
              buyProduct();
          });

        });
    </script>

<?php include 'analytics.php'; ?>

</body>

</html>
