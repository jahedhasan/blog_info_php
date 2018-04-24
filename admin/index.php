<?php
    session_start();
    if (isset($_SESSION['admin_id'])) {
      if ($_SESSION['admin_id'] !=NULL) {
        header('Location:dashboard.php');
      }
    }


    if(isset($_POST['btn'])){
        require_once '../class/login.php';
        $login= new Login();
        $message = $login->admin_login_check($_POST);
    }
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>admin</title>
    <link href="../asset/css/bootstrap.min.css" rel="stylesheet"> 
  </head>
  <body>
      <div class="container">
          <div class="row">
              <div class="col-md-offset-2 col-md-8">
                  <div class="well" style="margin-top:180px; padding:80px">
                      <hr/>
                      <h3 class="text-center text-success">Please Login with valid email and password!</h3>
                      <h2 class="text-center text-danger"><?php
                        if (isset($message)) {
                          echo $message;
                        }
                      ?></h2>
                      <hr/><hr/>
                      <form method="post" action="" class="form-horizontal">
                          <div class="form-group">
                              <label class="control-label col-md-3">Email Address</label>
                              <div class="col-md-9">
                                  <input type="email" name="email" class="form-control" required/>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="control-label col-md-3">Password</label>
                              <div class="col-md-9">
                                  <input type="password" name="password" class="form-control" required/>
                              </div>
                          </div>
                          <div class="form-group">
                              <div class="col-md-offset-3 col-md-9">
                                  <input type="submit" name="btn" class="btn btn-success btn-block" value="Login"/>
                              </div>
                          </div>
                      </form>
                  </div>
              </div>
          </div>
      </div>


      
      
    <script src="..asset/js/bootstrap.min.js"></script>
		
  </body>
</html>