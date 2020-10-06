<html>
<head>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['Year', 'Sales', 'Expenses'],
        ['2004',  1000,      400],
        ['2005',  1170,      460],
        ['2006',  660,       1120],
        ['2007',  1030,      540],
      ]);

      var options = {
        title: 'Company Performance',
        curveType: 'function',
        legend: { position: 'bottom' }
      };

      var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

      chart.draw(data, options);
    }
  </script>
</head>
<body>
  <div id="curve_chart" style="width: 900px; height: 500px"></div>
  <?php
  include 'functions.php';
  echo $_SERVER['HTTP_USER_AGENT'].'<br>';
  if(strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE') !== FALSE)
     echo 'Internet explorer';
   elseif(strpos($_SERVER['HTTP_USER_AGENT'], 'Trident') !== FALSE) //For Supporting IE 11
      echo 'Internet explorer';
   elseif(strpos($_SERVER['HTTP_USER_AGENT'], 'Firefox') !== FALSE)
     echo 'Mozilla Firefox';
   //elseif(strpos($_SERVER['HTTP_USER_AGENT'], 'Chrome') !== FALSE)
     //echo 'Google Chrome';
   elseif(strpos($_SERVER['HTTP_USER_AGENT'], 'Opera Mini') !== FALSE)
     echo "Opera Mini";
   elseif(strpos($_SERVER['HTTP_USER_AGENT'], 'Opera') !== FALSE)
     echo "Opera";
   elseif(strpos($_SERVER['HTTP_USER_AGENT'], 'Safari') !== FALSE)
     echo "Safari";
  elseif(strpos($_SERVER['HTTP_USER_AGENT'], 'Edge') !== FALSE)
   echo 'Microsoft Edge';
   else
     echo 'Something else';
   ?>

   <?php
//echo $_SERVER['HTTP_USER_AGENT'];
$browser = get_browser();
function countDeviceViews($conn,$device_name){
  $count = mysqli_query($conn,"SELECT COUNT(*) AS total FROM page_analytics WHERE device='$device_name'");
  $c = mysqli_fetch_array($count);
  return $c['total'];
}
//print_r($browser);
$select_device = mysqli_query($conn,"SELECT DISTINCT device FROM page_analytics");
$i=0;
while($fsd = mysqli_fetch_array($select_device)){
  $device_array[$i] = $fsd['device'];
  $i++;
}
foreach($device_array as $sd){
  $sdc = countDeviceViews($conn,$sd);
  echo "['".$sd."', '".$sdc."'],";
}
?>
<script>
var browsers = ["Opera", "Edg", "Chrome", "Safari", "Firefox", "MSIE", "Trident"];
var userbrowser, useragent = navigator.userAgent;
for (var i = 0; i < browsers.length; i++) {
    if( useragent.indexOf(browsers[i]) > -1 ) {
        userbrowser = browsers[i];
        break;
    }
};

switch(userbrowser) {
    case 'MSIE':
        userbrowser = 'Internet Explorer';
        break;

    case 'Trident':
        userbrowser = 'Internet Explorer';
        break;

    case 'Edg':
        userbrowser = 'Microsoft Edge';
        break;
}


</script>


</body>
</html>
