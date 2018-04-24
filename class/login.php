<?php

class Login {

    //put your code here
    protected $connect;

    public function __construct() {
        $host = 'localhost';
        $user = 'root';
        $password = '';
        $db_name = 'db_blog';
        $this->connect = mysqli_connect($host, $user, $password, $db_name);

        if (!$this->connect) {
            die('connect error!' . mysqli_error($this->connect));
        }
    }

    public function admin_login_check($data){
        $password = md5($data['password']);
        $sql = "SELECT * FROM tbl_admin WHERE email_address='$data[email]' AND password= '$password' ";
        $query_result = mysqli_query($this->connect , $sql);
        $admin_info = mysqli_fetch_assoc($query_result);
        if($admin_info){
            session_start();
            $_SESSION['admin_id']= $admin_info['admin_id'];
            $_SESSION['admin_name']= $admin_info['admin_name'];
            header('Location:dashboard.php');
        }else{
            // session_start();
            // $_SESSION['message']= 'your user and email not valid!';
            // header('Location:index.php'); 
            $message = 'your user and email not valid!';
            return $message;
        }
    }
    public function admin_logout(){
        unset($_SESSION['admin_id']);
        unset($_SESSION['admin_name']);
        header('Location: index.php');
    }

}
