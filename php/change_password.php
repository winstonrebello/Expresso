<?php
  ob_start();
  include 'connection.php';
  include 'functions.php';

  if(loggedin()){
        header('Location:Home Page.php');
    }

?>

<!DOCTYPE html>
<html>
    <head>
        <title>Change Password</title>
        <link rel="icon" type="image/png" href="../pics/logo_icon.png">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            
         <link rel="stylesheet" type="text/css" href="../css/css.css">

          <script type="text/javascript">
              function pop(check,msg){

                  if(check=="true"){
                      document.getElementById("sign-dialog").style.display="block";
                      document.getElementById("signbox-content").innerHTML= msg;
                  }
                  else if(check=="false"){
                      document.getElementById("sign-dialog").style.display="none";
                  }
                  
              }
          </script>

    </head>
    <body>
      <div id="login-body"></div>

      <div id="sign-dialog">
          <div id="box">
              <h4 id="signbox-content"></h4>
              <a onclick="pop('false','msg')" class="close">OK</a> 
          </div>
      </div>

      <?php

          if(isset($_POST['submit'])){

              if(isset($_GET['token'])){

                  $token= $_GET['token'];

                  $newpassword= $_POST['newpass'];
                  $confpassword= $_POST['newconfpass'];

                  $newpass = md5($newpassword);
                  $confpass = md5($confpassword);    

                  if($newpass === $confpass){
  
                      $isupdate = mysqli_query($conn," update users set password='$newpass' where id='$token' ");

                      if($isupdate){
                          header('location:Login.php?msg=3'); 
                      }
                      else{
                          $_SESSION['passmsg'] = "Your password is not updated";
                          header('location:change_password.php');
                      }
                  }
              }
              else{
                  echo "<script> pop('true','No token found!!!'); </script>";   
              }
          }
      ?>

      <form action="" method="POST">
      <div >
        <a href="Login.php" class="back-icon"></a>
      </div>

      <div class="main-container4">
        <div class="title1">
            <label for="sign up on expresso">Reset your Password</label>
        </div>
        
        <div id="change_msg" class="show_msg">
            <?php 
                if(isset($_SESSION['passmsg'])){
                    $_SESSION['passmsg']; 
                } 
                else{
                    $_SESSION['passmsg']= "";
                }
            ?>
        </div>

        <div class="form-group">
            <div class="password">
              <input type="password" id="password"maxlength="50" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required class="form-control" onkeydown="focusNext(event)" autocomplete="off"onmouseover="this.type='text'" onmouseout="this.type='password'" name="newpass">
              <label for="pwd" class="psw" >New Password</label>         
            </div>
          </div>

          <div class="form-group">
            <div class="confirm-password">
              <input type="password" id="c_password" maxlength="50" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required class="form-control" onkeydown="focusNext(event)"  autocomplete="off"  autocomplete="off" onmouseover="this.type='text'" onmouseout="this.type='password'" name="newconfpass">
              <label for="c-pwd" class="c-psw" >Confirm-Password</label>
                        
            </div>
          </div>

          <div >
              <button type="submit" id="save" name="submit" class="save" onkeydown="focusNext(event)" onclick="return Validate()">Update Password</button>
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
              
                        <script type="text/javascript">
                          function Validate() {
                              var password = document.getElementById("password").value;
                              var confirmpassword = document.getElementById("c_password").value;
                              if (password != confirmpassword) {
                                  pop('true','Password do not match. Please try again!!!');
                                  return false;
                              }
                              return true;
                          }
                      </script>

                        <script src="../scripts/main.js"></script>
                        <script src="../scripts/custom.js"></script>
                        <script src="../scripts/focus.js"></script>
    </body>
</html>      