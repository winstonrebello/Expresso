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

const getDeviceType = () => {
  const ua = navigator.userAgent;
  if (/(tablet|ipad|playbook|silk)|(android(?!.*mobi))/i.test(ua)) {
    return "Tablet";
  }
  if (
    /Mobile|iP(hone|od|ad)|Android|BlackBerry|IEMobile|Kindle|Silk-Accelerated|(hpw|web)OS|Opera M(obi|ini)/.test(
      ua
    )
  ) {
    return "Mobile";
  }
  return "Desktop";
};



$.ajax({
  url:"../analytics/dynamic/pageAnalytics.php",
  method:"POST",
  data:{
    user:"<?php if(loggedin()){ echo $uid; } else { echo $myip; } ?>",
    type:<?php if(loggedin()){ echo '1'; } else { echo '0'; } ?>,
    cat:<?php if(isset($cat)){ echo $cat; } else { echo '" "'; } ?>,
    pid:<?php if(isset($pid)){ echo $pid; } else { echo '" "'; } ?>,
    url:"<?php if(isset($page_url)){ echo $page_url; } else { echo ' '; } ?>",
    title:"<?php if(isset($title)){ echo $title; } else { echo ' '; } ?>",
    page:"<?php echo $page; ?>",
    session:"<?php echo $user_sess; ?>",
    browser:userbrowser,
    device:getDeviceType(),
    country:"",
    city:""
  },
  success:function(data){

  }
});

function pageAnalytics(){
  endTime = new Date();

  $.ajax({
    url:"../analytics/dynamic/duration.php",
    method:"POST",
    data:{
      url:"<?php if(isset($page_url)){ echo $page_url; } else { echo ' '; } ?>",
      duration:endTime - startTime,
      page:"<?php echo $page; ?>",
      session:"<?php echo $user_sess; ?>",
    },
    success:function(data){

    }
  });
}

function prodid(obj) {
  $.ajax({
    url:"../analytics/dynamic/product_impression.php",
    method:"POST",
    data:{
      session:"<?php echo $user_sess; ?>",
      prodid:obj,
    },
    success:function(data){

    }
  });
}

</script>
