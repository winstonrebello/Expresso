<script>
startTime = new Date();
</script>
<?php


$myip = get_client_ip();
@$uid = $_SESSION['user_id'];
if(loggedin()){
  $disp = 1;
} else {
  $disp = 0;
}
?>
<div class="nav-div">
  <nav class="navi">
    <img src="../pics/logo_icon.png" alt="logo" id="web-logo">
    <h3 id="web-name">Expressso Shopping</h3>

    <div class="navbtns">
      <ul>
        <li><a href="Home Page.php" id="home">Home</a></li>
        <li><a href="Home Page.php" id="shop">Shop</a>
          <ul id="dropdown">
            <li class="drop"><a onclick="topage('listitems.php?cat=2');">Mobiles</a></li>
            <li class="drop"><a onclick="topage('listitems.php?cat=3');">Laptops</a></li>
            <li class="drop"><a onclick="topage('listitems.php?cat=1');">Earphones</a></li>
          </ul>
        </li>
        <li><a href="contacts.php" id="contact">Help</a></li>
      </ul>
    </div>

    <div class="search-box">
      <input class="search-txt" id="search-input" type="text" onkeyup="searchFunc()" placeholder="Type to search...." maxlength="30">
      <div class="display-box hide" id="db">

      </div>

      <a href="#" class="search-btn"><i class="fas fa-search fa-2x" id="s_btn"></i></a>
    </div>

    <div class="navicons">
      <div id="nav_c">
        <a href="#" class="nav-cartt"><i class="fas fa-user fa-2x" id="user"></i></a>

        <div id="login">
          <div class="login-arrow-up"></div>
          <div class="login-form">
            <?php
              if($disp == 0){
            ?>
            <p class="login-p signup" onclick="topage('signup.php');">New Customer ?&nbsp;&nbsp;<a href="signup.php">SignUp</a></p>
            <p class="login-p log" onclick="topage('Login.php');"><a href="Login.php">Login</a></p>
            <?php
          } else if($disp == 1){
            ?>
            <p class="login-p" onclick="topage('myorders.php');"><i class="fas fa-briefcase"></i>&nbsp;&nbsp;&nbsp;&nbsp;Your Orders</p>
            <p class="login-p" onclick="topage('wishlist.php');"><i class="fa fa-heart"></i>&nbsp;&nbsp;&nbsp;&nbsp;Wishlist</p>
            <p class="login-p" onclick="topage('logout.php');"><i class="fas fa-power-off"></i>&nbsp;&nbsp;&nbsp;&nbsp;Logout</p>
          <?php
          }
            ?>

          </div>
        </div>

        <div id="logged">
          <div class="logged-arrow-up"></div>
          <div class="logged-form">
            <p class="logged-p"><b>My Profile</b></p>
            <p class="logged-p"><b>Instructions</b></p>
            <p class="logged-p"><b>Notifications</b></p>
            <p class="logged-p" onclick="topage('Home Page.php')"><b>Logout</b></p>
          </div>
        </div>

      </div>
       <a id="nav-cart" href="itemcart.php">
         <i class="fas fa-shopping-cart fa-2x" id="cart"></i>

           <?php
            if(loggedin()){
              if(countItems($conn,$uid)>0){
                echo '<div id="no-cart">'.countItems($conn,$uid).'</div>';
              }
            }
           ?>

       </a>
    </div>
  </nav>
</div>

<script>
function topage(pagename){

  document.location.href= pagename;

}
</script>

<script>
function searchFunc(){
  var search = document.getElementById("search-input").value;
  var element = document.getElementById("db");
  element.classList.remove("hide");
  element.classList.add("show");
  $.ajax({
    url:"search.php",
    method:"POST",
    data:{text:search},
    success:function(data){
      $('.display-box').html(data);
    }
  });
}

$(document).on('click',function(e){
    if(!$(e.target).closest('.display-box').length)
        $('.display-box').removeClass('show');
        $('.display-box').addClass('hide');
});

</script>
