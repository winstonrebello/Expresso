function pageAnalytics(){
  endTime = new Date();

  $.ajax({
    url:"../analytics/dynamic/pageAnalytics.php",
    method:"POST",
    data:{
      user:"<?php if(loggedin()){ echo $uid; } else { echo $myip; } ?>",
      type:<?php if(loggedin()){ echo '1'; } else { echo '0'; } ?>,
      cat:<?php echo $cat; ?>,
      pid:<?php echo $pid ?>,
      url:"<?php echo $page_url; ?>",
      title:"<?php echo $pname; ?>",
      duration:endTime - startTime,
      page:<?php echo $page; ?>,
      session:<?php echo $user_sess; ?>,
      date:,
      country:,
      city:
    },
    success:function(data){

    }
  });
}
