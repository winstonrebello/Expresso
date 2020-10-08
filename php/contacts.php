<?php
$page = 'Home';
$title = $page;
	include 'connection.php';
	include 'functions.php';

?>

<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" type="image/png" href="../pics/logo_icon.png">
		<title>Contact Us</title>
		<?php include 'includes.php'; ?>

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="../css/contact.css">

		<style type="text/css">
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
		</style>

	</head>
	<body>
		<?php include 'nav.php'; ?>

		<div id="help-header">
			<center><div id="head-title">About Us</div></center>
		</div>

		<div class="help-about">
		
			<div id="abt-are">
				<img src="../pics/we_back.png" width="285">
				<h2>Who we are</h2>
				<p>
					Expressso is an online gadget shopping site where a customer are free to visit the site and explore their minds through the site and can get to know how the website actually works. The site also is implemented with a classic Design UX and with soothing features to the user. It reflects the people's express and needs.

					<span id="moreText-1" style="display: none">
						Expressso has a collection of mobile-phones, varieties of laptops, smooth quality headphones and earphones to introduce to the people. The site in also embedded with lot of interactive sessions where the customer can free contact and share their feelings and opinion to the company.
					</span>
				</p>

				<img src="../pics/expand_button.png" width="30" height="30" id="read-more-btn-1" onclick="readmore1();">

			</div>

			<div id="abt-want">
				<img src="../pics/want_back.png" width="285">
				<h2>What we want</h2>
				<p>Expressso wants the people to explore the site and get to know what the website really credits them. The site analysis the behaviour of the people and updates the the site with features according to the views, orders, feedbacks, etc. The website just wants the people to feel free and open-minded and visit the site and be interactive with it. </p>
			</div>

			<div id="abt-will">
				<img src="../pics/will_back.png" width="285">
				<h2>What we achieve</h2>
				<p>The Expressso's motto is to gain the trust of the people by exploring the people with genuine products and high quality items. The site wants to know about the real needs of the people and what do the people really desires.The site looks forward to provide the user, the choice of express their needs and their wants.<span id="moreText-2" style="display: none;"> Instead of providing the products that the company can get, the expressso analyse the people's choice and needs and provide them with that products that customers really thinks off. Inspite of the profit for the company, the company's major goal is to satisfy the people who visits and sends them in return with happiness in their hands.</span></p>
				<img src="../pics/expand_button.png" width="30" height="30" id="read-more-btn-2" onclick="readmore2();">
			</div>
		</div>

		<hr id="page-divider">

		<div class="help-con" style="color: white">
			<center><div id="help-con-head">Contact Us</div></center>
			<center><div id="con-container">
				<p id="con-sub">If any issues about the website occurs or if there is any doubts, free to contact of any of the contact numbers. Our customer care is fully active for your service. Please also feel free to contact us by mail too.</p>
				<div id="contact_details">
					<div id="mem-1-details"><span class="fa fa-star checked"></span> <span class="emp_names">Sujeet Pal (Data Analyst and Marketing Head)</span><br><br>
						<p><i class="fas fa-address-book"></i>&nbsp;&nbsp; +91 9326121847 / +91 9969533671</p>
						<p><i class="fas fa-envelope"></i>&nbsp;&nbsp; sujeetpal11@gmail.com</p>
					</div>

					<br><br>
					<div id="mem-1-details"><span class="fa fa-star checked"></span> <span class="emp_names">Winston Rebello (Director/VP of Systems Development)</span><br><br>
						<p><i class="fas fa-address-book"></i>&nbsp;&nbsp; +91 7039526927</p>
						<p><i class="fas fa-envelope"></i>&nbsp;&nbsp; rebellowinston@gmail.com</p>
					</div>

					<br><br>
					<div id="mem-1-details"> <span class="fa fa-star checked"></span> <span class="emp_names">Sanio Luke Sebastian (Head of User Experience Designer)</span><br><br>
						<p><i class="fas fa-address-book"></i>&nbsp;&nbsp; +91 8692074192 / +91 7738521263</p>
						<p><i class="fas fa-envelope"></i>&nbsp;&nbsp; sanioluke00@gmail.com</p>
					</div>
				</div>

			</div></center>
		</div>

		<?php include 'footer.php'; ?>

		<script type="text/javascript">
			
			$status1= document.getElementById("moreText-1");

			$status2= document.getElementById("moreText-2");
			
			function readmore1(){
				if($status1.style.display == "none"){
					document.getElementById("moreText-1").style.display ="block";	
					document.getElementById("dots-1").style.display ="none";
					document.getElementById("read-more-btn-1").className =" rotated-image";		
				}
				else{
					document.getElementById("moreText-1").style.display ="none";
					document.getElementById("dots-1").style.display ="block";
					document.getElementById("read-more-btn-1").classList.remove("rotated-image");
				}
			}

			function readmore2(){
				if($status2.style.display == "none"){
					document.getElementById("moreText-2").style.display ="block";	
					document.getElementById("read-more-btn-2").className =" rotated-image";		
				}
				else{
					document.getElementById("moreText-2").style.display ="none";
					document.getElementById("read-more-btn-2").classList.remove("rotated-image");
				}
			}
		</script>

	</body>
</html>