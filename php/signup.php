<?php
  include 'connection.php';
?>
<!DOCTYPE html>
<html>
    <head>
      <link rel="icon" type="image/png" href="../pics/logo_icon.png">
        <title>SignUp</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

         <link rel="stylesheet" type="text/css" href="../css/css.css">

        <script type="text/javascript">
              var c=0;
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
    <body onbeforeunload="pageAnalytics()">
        <div id="sign-up-body"></div> 

        <div id="sign-dialog">
            <div id="box">
                <h4 id="signbox-content"></h4>
                <a onclick="pop('false','')" class="close">OK</a>
            </div>
        </div>


        <?php
            if(isset($_POST['mobile'])&&isset($_POST['mail'])&&isset($_POST['name'])&&isset($_POST['password'])&&isset($_POST['confirm'])){

                $mobile = $_POST['mobile'];
                $mail = $_POST['mail'];
                $name = $_POST['name'];
                $password = $_POST['password'];
                $confirm = $_POST['confirm'];

                if(!empty($mobile)&&!empty($mail)&&!empty($name)&&!empty($password)&&!empty($confirm)){

                    if($password == $confirm){
                        $check = mysqli_query($conn,"SELECT mobile FROM users WHERE mobile='$mobile'");
                        $check_1 = mysqli_query($conn,"SELECT mail FROM users WHERE mail='$mail'");

                        if((mysqli_num_rows($check)==1)||(mysqli_num_rows($check_1)==1)){
                          
                            if(mysqli_num_rows($check)==1){
                                echo '';
                                echo "<script> pop('true','Mobile Number already exists. Please try again with different phone number!!!'); </script>";   
                            }
                            if(mysqli_num_rows($check_1)==1){
                                echo '';
                                echo "<script> pop('true','This email ID already exists. Please try again with different mail ID!!!'); </script>";   
                            }
                        } 
                        else {
                            $password = md5($password);
                            $insert = "INSERT INTO users VALUES('','".mysqli_real_escape_string($conn,$mobile)."','".mysqli_real_escape_string($conn,$mail)."','".mysqli_real_escape_string($conn,$name)."','".mysqli_real_escape_string($conn,$password)."')";

                            if(mysqli_query($conn,$insert)){
                              header('Location:Login.php?msg=1');
                            } else {
                              echo "<script> pop('true','Error, registering this time. Please try again later'); </script>";
                            }
                        }
                    }
                    else {
                      echo "<script> pop('true','Password do not match. Please try again!!!'); </script>";
                    }
                }

                else {
                    echo "<script> pop('true','All fields are required. Please fill out all and Sign Up!!!'); </script>";
                }
            }
        ?>

        <form action="signup.php" style="max-width:500px; margin:auto;" method="POST">
            <div>
              <a href="otp.php"class="back-icon"></a>
            </div>

            <div class="main-container2">
                <div class="title1">
                    <label for="sign up on expresso">Sign up to Expresso</label>
                </div>


                <div class="form-group">
                  <div class="phone">
                      <input type="tel" class="form-control" name="mobile"  >
                      <label for="mobile" class="mn">Mobile Number *</label>
                  </div>
                </div>

                <div class="form-group">
                  <div class="phone">
                      <input type="text" class="form-control" name="mail">
                      <label for="mail" class="mn">Email ID *</label>
                  </div>
                </div>

                <div class="form-group">
                    <div class="name">
                          <input type="text" class="form-control" name="name">
                          <label for="name" class="name">Name</label>
                    </div>
                </div>

                <div class="form-group">
                    <div class="password">
                        <input type="password" name="password" class="form-control" required  autocomplete="off" maxlength="50" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required onkeydown="focusNext(event)" onmouseover="this.type='text'" onmouseout="this.type='password'">
                        <label for="pwd" class="psw">Password</label>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="confirm-password">
                        <input type="password" name="confirm" class="form-control" required autocomplete="off" maxlength="50" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required onkeydown="focusNext(event)" onmouseover="this.type='text'" onmouseout="this.type='password'">
                        <label for="c-pwd" class="c-psw">Confirm-Password</label>
                    </div>
                  </div>

                  <div>
                      <input type="submit" class="log-button-1" value="Sign Up">
                  </div>

                  <div class="login-link">
                      <label for="text">Already have an account ?</label>
                      <a href="Login.php">Login Here</a>
                  </div>
            </div>

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
        <!--===============================================================================================-->
        <script src="../scripts/main.js"></script>
        <script src="../scripts/custom.js"></script>
        <script src="../scripts/focus.js"></script>

    </body>
</html>
