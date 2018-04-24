<?php
 /**
 * 
 */
 class application{
 	protected $connect;
 	public function __construct(){
		
		$host='localhost';
			$user='root';
			$password='';
			$db_name='db_blog';
			$this->connect= mysqli_connect($host, $user, $password, $db_name );

			if (!$this->connect) {
				die('connect error!'.mysqli_error($this->connect));
			}

	}
	public function allPublishedblog(){
		$sql= "SELECT * FROM tbl_blog WHERE publication_status =1 ORDER BY blog_id DESC";
		if (mysqli_query($this->connect, $sql)) {
			$query_result= mysqli_query($this->connect, $sql);
			return $query_result;
		}else{
			die('Querry Problem!'.mysqli_error($this->connect));
		}
	}

	public function selectBlogInfoById($blog_id){
		$sql= "SELECT * FROM tbl_blog WHERE blog_id='$blog_id' ";
		if (mysqli_query($this->connect, $sql)) {
			$query_result= mysqli_query($this->connect, $sql);
			return $query_result;
		}else{
			die('Querry Problem!'.mysqli_error($this->connect));
		}


	}




 }


?>