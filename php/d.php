<?php
    $servername = 'localhost';
    $username = "root";
    $password = "";
    $db = "expresso";

    $conn =  mysqli_connect($servername,$username,$password,$db);

    if(!$conn){
        die("Connection failed: ".mysqli_connect_error());
    }

    //echo "Connected successfully";
?>

<!DOCTYPE html>
<html>

<head>
    <link rel="icon" type="image/png" href="../pics/logo_icon.png">
    <title>Login page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Candal|Lora" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        
        function load_book(op){
            var view="booking-dialog";
            if(op==="can_detail"){
                var con= document.getElementById(view);
                con.style.display="none";
            }
            if(op==="order_btn"){
                var con= document.getElementById(view);
                con.style.display="block";
                getElementById("body").style.overflow = "hidden";

            }
        }

    </script>


    <link rel="stylesheet" type="text/css" href="../css/homec_3.css">
    <link rel="stylesheet" type="text/css" href="../css/css1.css">
    <link rel="stylesheet" type="text/css" href="../css/itmcart.css">

</head>

<body id="body">
    <form action="/action_page.php" method="POST">

    <div class="main">

        <div class="row">
            <div class="col-sm-6">
                <img class="img_main" src="../pics/nokia_6_2-front_back-ice.png" alt="mobile">
            </div>
            <div class="col-sm-6">
                <div class="content1">

                    <div>
                        <label for="P-Name" class="P_name">Acer Aspire 5 Slim Laptop</label>
                    </div>

                    <div>
                        <label for="Rating" class="Rating">Rating</label></div>


                    <div>
                        <label for="c_views" class="c_views">(Views 100320)</label>
                    </div>

                    <hr class="hr">

                    <div class=" cont2">
                        <div class="about_item">
                            <label for="about item" class="about_item" id="a">About this item</label>
                            <hr id="b">

                            <div class="section">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <h6 class="title-attr"><small class="z">COLOR</small></h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <div style="display: flex">
                                            <div class="attr" style="width:25px;background:white;"></div>
                                            <div class="attr" style="width:25px;background:rgb(22, 18, 235);"></div>
                                            <div class="attr" style="width:25px;background:#5a5a5a;"></div>
                                            <div class="attr" style="width:25px;background:rgb(7, 7, 7);"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>

                            <div class="section" style="padding-bottom:5px;">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <h6 class="title-attr"><small class="z">RAM</small></h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <div style="display: flex">
                                            <div class="attr2">4 GB</div>
                                            <div class="attr2">8 GB</div>
                                            <div class="attr2">16 GB</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>

                            <div class="section" style="padding-bottom:25px;">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <h6 class="title-attr"><small class="z">STORAGE</small></h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <div style="display: flex">
                                            <div class="attr3">32 GB</div>
                                            <div class="attr3">64 GB</div>
                                            <div class="attr3">128 GB</div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="section" style="padding-bottom:20px;">
                        <h6 class="title-attr"><small class="z">Quantity</small></h6>
                        <div style="display: flex;">

                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="1" />
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div>

                    <div>
                        <label for="price" class="Price">Price</label>
                    </div>
                    <div>
                        <button class="add_to_cart"><span class="glyphicon glyphicon-shopping-cart"></span>Add to cart</button>

                        <button class="buying" onclick="load_book('order_btn')">Buy Now</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="discription">


            <h3>Have any Questions ?</h3>
            <h5>Find answers in product info, Q&As, reviews</h5>
            <p><input value="" class="input_question"></p>


            <div class="row" style="padding: 15px 15px 15px 15px;">
                <h3>Product discription</h3>
                <p>Get more done with Pixel 3A. It has an extraordinary camera with features like night sight, portrait
                    mode, and HDR+. a battery that charges fast and lasts all day [7]. All the helpfulness of the Google
                    assistant built in. And 3 years of security and os updates included [8]. it’s everything you love
                    about Google – in a phone. Works with all major carriers. 1 Google photos offers free unlimited
                    online storage for all photos and videos uploaded in high-quality. Photos and videos uploaded in
                    high-quality may be compressed or resized. Requires Google account. Data rates may apply.
                    G.Co/help/photostorage 2 us and Canada only. English only. 3 approximate battery life based on a mix
                    of talk, data, standby, mobile Hot-Spot and use of other features, with always on display off. An
                    Active display or data usage will decrease battery life. Charging rates are based upon use of the
                    included charger. Charging time performance Statistics are approximate. Actual results may vary. 4
                    Android version updates for at least 3 years from when the device first became available on the
                    Google store. See G.Co/Pixel/updates for details. 5 see G.Co/Pixel/security for additional security
                    information. 6 some third-party apps and data may not be transferred automatically. Visit
                    G.Co/Pixel/help for information. 7 approximate battery life based on a mix of talk, data, standby,
                    mobile Hot-Spot and use of other features, with always on display off. An Active display or data
                    usage will decrease battery life. Charging rates are based upon use of the included charger.
                    Charging time performance Statistics are approximate. Actual results may vary 8 Android version
                    updates for at least 3 years from when the device first became available on the Google store. See
                    G.Co/Pixel/updates for details.</p>
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
            <div class="foot-base"></div>
        </div> 

        <div id="booking-dialog">
            <div id="book-form">
                <i class="far fa-window-close fa-3x" id="can_detail" onclick="load_book('can_detail')"></i>
                <h4><center id="del-header"><b>Delivary Details</b></center></h4>

                <form id="del-con" method="POST" action="#">
                    <div class="field1">
                        <div class="field">
                            <input type="text" name="name" id="del-name" class="booking-inp" placeholder="Enter the customer name" required>
                            <label for="del-name">Name*</label>
                        </div>

                        <div class="field">
                            <input type="tel" name="mob" id="del-mob" class="booking-inp" placeholder="Eg:- 9876543210" pattern="[7-9]{1}[0-9]{9}" title="Must start with 7 to 9 and the length should be 10" maxlength="10" required>
                            <label for="del-mob">Mobile Number*</label>
                        </div>
                    </div>

                    <div class="field1">
                        <div class="field">
                            <input type="text" name="pin-code" id="del-pin" class="booking-inp" placeholder="Eg:- 123-456" pattern="^[0-9]{3}(?:-[0-9]{3})?$" title="Must be like 132-103" required>
                            <label for="del-pin">Pincode*</label>
                        </div>  

                        <div class="field">
                            <input type="text" name="locale" id="del-local" class="booking-inp" placeholder="Enter your locality" required>
                            <label for="del-local">Locality*</label>
                        </div>
                    </div>
                
                    <div class="field1">
                    
                        <div class="field">
                            <input type="text" name="add" id="del-add" class="booking-inp" placeholder="Enter your address" required maxlength="100">
                            <label for="del-add">Address*</label>
                        </div>

                        <div class="field">
                            <input type="text" name="city" id="del-city" class="booking-inp" placeholder="Enter the city name" required>
                            <label for="del-city">City/District/Town*</label>
                        </div>
                    </div>
                
                    <div class="field1">
                        <div class="field">
                            <input type="text" name="landmark" id="del-land" class="booking-inp" placeholder="landmark(Optional)">
                            <label for="del-land">Landmark</label>
                        </div>

                        <div class="field">
                            <input type="text" name="alt-phn" id="del-alt-mob" class="booking-inp" placeholder="phone number(Optional)">
                            <label for="del-alt-mob">Alternate Mobile Number</label>
                        </div>
                    </div>
                
                    <div class="field1" id="res-btns">
                        <button id="proceed_detail" onclick="load_book('proceed_detail')">Proceed</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->


    <script src="../scripts/discript.js"></script>
    <script src="../scripts/homescpt.js"></script>

    
</body>

</html>