<?php
$select_device = mysqli_query($conn,"SELECT DISTINCT device FROM page_analytics");
$select_browser = mysqli_query($conn,"SELECT DISTINCT browser FROM page_analytics");
$i=0;
$device_array = array();
$browser_array = array();
while($fsd = mysqli_fetch_array($select_device)){
  $device_array[$i] = $fsd['device'];
  $i++;
}
$i=0;
while($fsb = mysqli_fetch_array($select_browser)){
  $browser_array[$i] = $fsb['browser'];
  $i++;
}

function countDeviceViews($conn,$device_name){
  $count = mysqli_query($conn,"SELECT COUNT(*) AS total FROM page_analytics WHERE device='$device_name'");
  $c = mysqli_fetch_array($count);
  return $c['total'];
}

function countBrowserViews($conn,$browser_name){
  $count = mysqli_query($conn,"SELECT COUNT(*) AS total FROM page_analytics WHERE browser='$browser_name'");
  $c = mysqli_fetch_array($count);
  return $c['total'];
}
?>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Device', 'Views'],
  <?php
  foreach($device_array as $sd){
    $sdc = countDeviceViews($conn,$sd);
    echo "['".$sd."', ".$sdc."],";
  }
  ?>
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Devices', 'width':550, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart_mobile'));
  chart.draw(data, options);
}
</script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Browser', 'Views'],
  <?php
  foreach($browser_array as $sb){
    $sbc = countBrowserViews($conn,$sb);
    echo "['".$sb."', ".$sbc."],";
  }
  ?>
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Browsers', 'width':550, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart_browser'));
  chart.draw(data, options);
}
</script>
