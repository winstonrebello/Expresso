<?php
$date_array = array();

$i=0;
while($i<5){
  $date = date("Y/m/d");
  $date=date_create($date);
  date_sub($date,date_interval_create_from_date_string($i." days"));
  $date_array[$i] = date_format($date,"Y-m-d");
  $i++;
}

$date_array = array_reverse($date_array);

function getViewsOnDate($conn,$date_value,$pid,$cat){
  $select = mysqli_query($conn,"SELECT COUNT(DISTINCT session) AS total FROM page_analytics WHERE date_val='$date_value' AND pid='$pid' and cat='$cat'");
  $s = mysqli_fetch_array($select);
  return $s['total'];
}

function getOrdersOnDate($conn,$date_value,$pid,$cat){
  $select = mysqli_query($conn,"SELECT COUNT(*) AS total FROM orders WHERE date_val='$date_value' AND pid='$pid' and cat='$cat'");
  $s = mysqli_fetch_array($select);
  return $s['total'];
}

function productImpressionsDate($conn,$date_value,$pid,$cat){
  $select = mysqli_query($conn,"SELECT COUNT(*) AS total FROM product_impression WHERE date='$date_value' AND pid='$pid' and cat='$cat'");
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
      ['Date', 'Views', 'Orders', 'Impressions'],
      <?php
      foreach($date_array as $da){
        $dView = getViewsOnDate($conn,$da,$pid,$cat);
        $dOrders = getOrdersOnDate($conn,$da,$pid,$cat);
        $pimp = productImpressionsDate($conn,$da,$pid,$cat);
        echo "['".$da."',  ".$dView.", ".$dOrders.", ".$pimp."],";
      }
      ?>
    ]);

    var options = {
      title: 'Product Performance Last 5 Days',
      curveType: 'function',
      legend: { position: 'bottom' }
    };

    var chart = new google.visualization.LineChart(document.getElementById('product_chart'));

    chart.draw(data, options);
  }
</script>
