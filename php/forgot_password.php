<?php
  include 'connection.php';
  include 'functions.php';
?>

<!DOCTYPE html>
<html>

    <head>
      <link rel="icon" type="image/png" href="../pics/logo_icon.png">
        <title>Forgot_password</title>
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

        <style type="text/css">
            #no-submit{
                float: right;
                padding: 10px;
                border-radius: 5px;
                border-style: none;
                background-color: blue;
                color: white;
                cursor: pointer;
                outline: none;
                box-shadow: 0 1px 4px rgba(0,0,0,0.3), 0 0 20px rgba(0,0,0,0.1) inset;
                transition : 0.3s ease;
            }

            #no-submit:hover{
                background-color: #00095B;
            }
        </style>     

    </head>

    <body>

      <div id="sign-dialog">
          <div id="box">
              <h4 id="signbox-content"></h4>
              <a onclick="pop('false','msg')" class="close">OK</a> 
          </div>
      </div>

        <?php

            if(isset($_POST['submit'])){

                $email=   $_POST['email'];

                $verify = mysqli_query($conn,"SELECT * FROM users WHERE mail='".mysqli_real_escape_string($conn,$email)."'");

                $emailcount= mysqli_num_rows($verify);

                if($emailcount > 0){

                    $userdata= mysqli_fetch_array($verify);
                    $username= $userdata['name'];
                    $user_id= $userdata['id'];

                    $subject = "Password Reset";
                    $body= "Hi, $username. Click here to reset your password http://localhost/erp/php/change_password.php?token=$user_id";
                    $sender_email= "From: erpproj123@gmail.com";

                    if(mail($email, $subject, $body, $sender_email)){
                        /*$_SESSION['vermsg'] = "Check your mail to reset your password";*/
                        header('location:Login.php?msg=2');
                    }
                    else{
                        echo "<script> pop('true','Email sending failed!!! Try Again'); </script>";
                    }

                }
                else {
                    echo "<script> pop('true','No Email Found!!!! Try with the registered Email ID'); </script>";
                }
            }
        ?>

        <div id="login-body"></div>

        <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" style="max-width:500px; margin:auto" method="POST">

              <div class="main-container5">

                  <div class="title1"><label for="sign up on expresso">Password assistance</label></div>

                  <div><label for="text" class="text_password">Enter the mobile number associated with your Expresso account.</label></div>

                  <div class="form-group">
                      <div class="phone">
                            <input type="text" name="email" class="form-control">
                            <label for="email" class="mn">Email ID *</label>    
                      </div>
                      <input type="submit" name="submit" value="Proceed" id="no-submit">
                  </div>
              </div>
        </form>
          
        <script type="text/javascript">
              var c=0;
              function pop(){
                if(c==0){
                  document.getElementById("box").style.display="block";
                  c=1;
                }
                else{
                  document.getElementById("box").style.display="none";
                  c=0;
                }
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

          <script src="../scripts/main.js"></script>
          <script src="../scripts/custom.js"></script>
          <script src="../scripts/focus.js"></script>
    </body>
</html>
