<?php
$date = mysqli_query($conn,"SELECT DISTINCT(date_val) FROM page_analytics");
$date_array = array();

$i=0;
while($d = mysqli_fetch_array($date)){
  $date_array[$i] = $d['date_val'];
  $i++;
}

function getViewsOnDate($conn,$date_value){
  $select = mysqli_query($conn,"SELECT COUNT(DISTINCT session) AS total FROM page_analytics WHERE date_val='$date_value'");
  $s = mysqli_fetch_array($select);
  return $s['total'];
}

function getOrdersOnDate($conn,$date_value){
  $select = mysqli_query($conn,"SELECT COUNT(*) AS total FROM orders WHERE date_val='$date_value'");
  $s = mysqli_fetch_array($select);
  return $s['total'];
}
?>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load('current', {'packages':['corechart']});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['Date', 'Views', 'Orders'],
      <?php
      foreach($date_array as $da){
        $dView = getViewsOnDate($conn,$da);
        $dOrders = getOrdersOnDate($conn,$da);
        echo "['".$da."',  ".$dView.", ".$dOrders."],";
      }
      ?>
    ]);

    var options = {
      title: 'Performance',
      curveType: 'function',
      legend: { position: 'bottom' }
    };

    var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

    chart.draw(data, options);
  }
</script>
