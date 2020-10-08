<?php
$page = 'Billing';
  include 'connection.php';
  include 'functions.php';

  if(!loggedin()){
    header('Location:Login.php');
  }
  @$uid = $_SESSION['user_id'];

  if(!isset($_SESSION["inv_no"])){
    header('Location:Home Page.php');
  }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/png" href="../pics/logo_icon.png">
    <title>Billing Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/billing.css" />
    <script src="../scripts/pdf.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>

    <link rel="stylesheet" type="text/css" href="../css/itmcart.css">
    <link rel="stylesheet" type="text/css" href="../css/homec_1.css">
    <link rel="stylesheet" type="text/css" href="../css/css.css">

    <style type="text/css">

        #cart-footer {
            position: sticky;
            top: 0px;
            width: 100%;
            height: 100px;
            background-color: white;
            display: flex;
            margin-top: 150px;
            font-family: Arial;
            box-shadow: 0 12px 20px rgba(0,0,0,0.8), 0 1px 20px rgba(0,0,0,0.0) inset;
        }

        #foot-icon {
            flex: 1;
            text-align: center;
            align-self: center;
        }

        #foot-help{
            flex : 3;
            text-align : end;
            align-self : center;
            padding-right : 40px;
            color : black;
        }
    </style>

    <script type="text/javascript">
          function funbtns(){
              pop('true','Are you sure to proceed ? If you haven&apos;t printed the invoice page, then download it and proceed.');
          }
    </script>

      <script type="text/javascript">
            var c=0;
            function pop(check,msg){

                if(check=="true"){
                    document.getElementById("sign-dialog").style.display="block";
                    document.getElementById("signbox-content").innerHTML= msg;
                }
                else if(check=="false"){
                    document.getElementById("sign-dialog").style.display="none";
                    document.location.href= "myorders.php";
                }

                else if(check=="dismiss"){
                    document.getElementById("sign-dialog").style.display="none";
                }
          }
      </script>


</head>

<body onbeforeunload="pageAnalytics()">

    <div id="sign-dialog">
        <div id="box">
            <h4 id="signbox-content"></h4>
            <a onclick="pop('dismiss','')" class="close">Cancel</a>
            <a onclick="pop('false','')" class="close">Yes, I am done</a>
        </div>
    </div>

    <div class="nav-div">
        <nav class="navi">
            <img src="../pics/logo_icon.png" alt="logo">
            <h3 id="web-name">Expressso Shopping</h3>
        </nav>
    </div>

    <div class="container">
        <div class="row">

            <div class="">

                <div class="card" id="invoice">

                    <div class="bill-header header-elements-inline">
                        <img src="../pics/logo_icon.png" alt="logo" id="bill-head-img">
                        <h6 class="card-title">INVOICE / RECEIPT</h6>
                    </div>

                    <div class="card-body">

                        <div id="bill-cont-1">

                            <div class="text-left bill-cont-1-1"> <span class="text-muted">Billed To:</span>
                                <ul class="list list-unstyled mb-0">
                                    <li><h5 class="my-2"><?php echo getUserOrderDetails($conn,$uid,'name'); ?></h5></li>
                                    <li><span class="font-weight-semibold"><?php echo getUserOrderDetails($conn,$uid,'address'); ?></span></li>
                                    <li><?php echo getUserOrderDetails($conn,$uid,'city'); ?>.</li>
                                    <li>Pin: <?php echo getUserOrderDetails($conn,$uid,'pincode'); ?></li>
                                    <li>Email: <?php echo getUserOrderDetails($conn,$uid,'email'); ?></li>
                                    <li>Ph: <?php echo getUserOrderDetails($conn,$uid,'mobile'); ?></li>
                                </ul>
                            </div>

                            <div class="text-middle bill-cont-1-1">
                                <span class="text-muted">Invoice Number</span>
                                <ul class="list list-unstyled mb-0">
                                    <li><h6 class="my-2"><?php echo getUserOrderDetails($conn,$uid,'invoice_no'); ?></h6></li>
                                </ul>
                                <span class="text-muted">Date of Issue</span>
                                <ul class="list list-unstyled mb-0">
                                    <li><h6 class="my-2"><?php echo getUserOrderDetails($conn,$uid,'order_time'); ?></h6></li>
                                </ul>
                            </div>

                            <div class="text-right bill-cont-1-3"> <span class="text-muted">Invoice Total</span>
                                <ul class="list list-unstyled mb-0">
                                  <?php
                                  $grand_total = 0;
                                  $grand_price = 0;
                                  $invoice_number= $_SESSION['inv_no'];
                                  $select = mysqli_query($conn,"SELECT * FROM orders WHERE uid='$uid'AND invoice_no='$invoice_number'");
                                  while($s = mysqli_fetch_array($select)){
                                      $pid = $s['pid'];
                                      $cat = $s['cat'];
                                      $total = $s['total'];
                                      $pprice = getProductDetails($conn,$pid,$cat,"Product_price");
                                      $total_price = $total*$pprice;

                                      $grand_total = $grand_total + $total;
                                      $grand_price = $grand_price + $total_price;
                                    }
                                  ?>
                                    <li><h5 class="my-4" id="bill-tprice">&#8377; <?php echo $grand_price; ?></h5></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <hr id="divider">

                    <div class="table-responsive">
                        <table class="table table-lg" id="products-table">
                            <thead id="all-text-center">
                                <tr>
                                    <th id="all-text-left">Product Name</th>
                                    <th>Brand</th>
                                    <th style="padding-left: 30px;">Unit Cost</th>
                                    <th>Quantity</th>
                                    <th style="padding-left: 30px;">Amount</th>
                                </tr>
                            </thead>
                            <tbody id="all-text-center">

                                <?php
                                    $grand_total = 0;
                                    $grand_price = 0;
                                    $invoice_number= $_SESSION['inv_no'];
                                    /*$select = mysqli_query($conn,"SELECT * FROM cart WHERE uid='$uid' ORDER BY id DESC");*/
                                    $select = mysqli_query($conn,"SELECT * FROM orders WHERE uid='$uid'AND invoice_no='$invoice_number'");

                                    while($s = mysqli_fetch_array($select)){
                                        $pid = $s['pid'];
                                        $cat = $s['cat'];
                                        $total = $s['total'];

                                        $pname = getProductDetails($conn,$pid,$cat,"Product_name");
                                        $pprice = getProductDetails($conn,$pid,$cat,"Product_price");
                                        $pimg = getProductDetails($conn,$pid,$cat,"Product_img");
                                        $pbrand = getProductDetails($conn,$pid,$cat,"by_info");
                                        $total_price = $total*$pprice;

                                        $grand_total = $grand_total + $total;
                                        $grand_price = $grand_price + $total_price;

                                    ?>

                                <tr>
                                    <td id="all-text-left"><?php echo $pname; ?></td>
                                    <td><?php echo $pbrand; ?></td>
                                    <td>&#8377; <?php echo $pprice; ?></td>
                                    <td><?php echo $total; ?></td>
                                    <td>&#8377; <?php echo $total_price; ?></td>
                                </tr>
                                <?php } ?>

                            </tbody>
                        </table>
                    </div>

                        <div id="bill-con-2-div" class="text-right">
                            <p id="bill-total-title">Total Amount</p>
                            <p>&#8377; <?php echo $grand_price; ?>.00</p>
                        </div>
                </div>
            </div>
        </div>

        <div id="billing-btns">
            <button id="download">Print Invoice</button>
            <button onclick="funbtns();">Proceed to MyOrders</button>
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
<?php unset($_SESSION['inv_no']); ?>
