<?php
$page = "dashboard";
include 'functions.php';
 ?>
<!DOCTYPE html>
<html>
<head>
  <link rel="icon" type="image/png" href="../pics/logo_icon.png">
<title>Dashboard | Expresso Analytics</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/w3.css">
    <style>
        html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
        #top-navi{
            width : 100%;
            background-color: #00095B;
        }

        #page-logo{
          margin-top: 2px;
            max-width: 40px;
            max-height: 40px;
            border-radius : 50px;
            box-shadow: 0 1px 8px rgba(255,255,255,0.6), 0 0 20px rgba(255,255,255,0.1) inset;
        }
    </style>
<?php include 'line_chart.php'; ?>
</head>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
  <span class="w3-bar-item w3-left" id="top-navi">
      <img src="../pics/logo_icon.png" alt="logo" id="page-logo">
      &nbsp;&nbsp;&nbsp;Expresso Analytics
  </span>
</div>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>

  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <?php include 'nav.php'; ?>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
    <h5><b><img src="../pics/logo_icon.png" alt="logo" width="20px" height="20px"> Home</b></h5>
  </header>

  <div class="w3-row-padding w3-margin-bottom">

    <div id="curve_chart" style="width: 100%; height: 300px"></div>
    <br>

    <div class="w3-quarter">
      <div class="w3-container w3-red w3-padding-16">
        <div class="w3-left"><i class="fa fa-comment w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3><?php echo errorCount($conn); ?></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Errors</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-blue w3-padding-16">
        <div class="w3-left"><i class="fa fa-eye w3-xxxlarge"></i></div>
        <div class="w3-right">
          <?php
          $totalViews = countViews($conn,'page_analytics',1,1);
          ?>
          <h3><?php echo $totalViews; ?></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Views</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-teal w3-padding-16">
        <div class="w3-left"><i class="fa fa-share-alt w3-xxxlarge"></i></div>
        <div class="w3-right">
          <?php
          $totalOrders = totalOrders($conn);
          ?>
          <h3><?php echo round(($totalOrders/$totalViews)*100,2).'%'; ?></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Conversion</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-orange w3-text-white w3-padding-16">
        <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3><?php echo totalUsers($conn); ?></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Users</h4>
      </div>
    </div>
  </div>


  <hr>
  <div class="w3-container">
    <h5>Recent Pages</h5>
    <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
      <tr>
        <th>Page Name</th>
        <th>Views</th>
        <th>Avg Duration</th>
        <th>URL</th>
      </tr>
      <?php
      $select = mysqli_query($conn,"SELECT DISTINCT title,url FROM page_analytics ORDER BY id DESC LIMIT 10");
      while($s = mysqli_fetch_array($select)){
        $title = $s['title'];
        $url = $s['url'];
        $views = countViews($conn,'page_analytics','title',$title);
        $avg = avgDuration($conn,'url',$url);
        if($avg/60 > 1){
          $cal_avg = round($avg/60,2).' min';
        } else {
          $cal_avg = round($avg,2).' sec';
        }
        echo '
        <tr>
          <td>'.$title.'</td>
          <td>'.$views.'</td>
          <td>'.$cal_avg.'</td>
          <td><a href="../php/'.$url.'" target="_blank"><i class="fa fa-external-link"></i></a></td>
        </tr>
        ';
      }
      ?>


    </table><br>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Recent Product</h5>
    <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
      <tr>
        <th>Product Name</th>
        <th>Views</th>
        <th>Avg Duration</th>
        <th>Conversion</th>
        <th>URL</th>
      </tr>
      <?php
      $select = mysqli_query($conn,"SELECT DISTINCT title,url,pid,cat FROM page_analytics WHERE page_name='discription' ORDER BY id DESC LIMIT 10");
      while($s = mysqli_fetch_array($select)){
        $title = $s['title'];
        $url = $s['url'];
        $pid = $s['pid'];
        $cat = $s['cat'];
        $views = countViews($conn,'page_analytics','title',$title);
        $conv = conversion($conn,$pid,$cat,$views);
        $avg = avgDuration($conn,'url',$url);
        if($avg/60 > 1){
          $cal_avg = round($avg/60,2).' min';
        } else {
          $cal_avg = round($avg,2).' sec';
        }
        echo '
        <tr>
          <td>'.$title.'</td>
          <td>'.$views.'</td>
          <td>'.$cal_avg.'</td>
          <td>'.round($conv,2).'%</td>
          <td><a href="../php/'.$url.'" target="_blank"><i class="fa fa-external-link"></i></a></td>
        </tr>
        ';
      }
      ?>
    </table><br>

  </div>

  <hr>
  <div class="w3-container">
    <h5>Recent Users</h5>
    <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
      <tr>
        <th>Session Id</th>
        <th>Avg Duration</th>
        <th>More</th>
      </tr>
      <?php
      $select = mysqli_query($conn,"SELECT DISTINCT session FROM page_analytics ORDER BY id DESC LIMIT 10");
      while($s = mysqli_fetch_array($select)){
        $session = $s['session'];
        $avg = avgDuration($conn,'session',$session);
        if($avg/60 > 1){
          $cal_avg = round($avg/60,2).' min';
        } else {
          $cal_avg = round($avg,2).' sec';
        }
        echo '
        <tr>
          <td>'.$session.'</td>
          <td>'.$cal_avg.'</td>
          <td><a href="" target="_blank"><i class="fa fa-external-link"></i></a></td>
        </tr>
        ';
      }
      ?>
    </table><br>

  </div>
  <hr>


  <br>


  <!-- End page content -->
</div>

<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}
</script>

</body>
</html>
