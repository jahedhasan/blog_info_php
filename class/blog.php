<?php


class Blog{
		public $connect;
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


	public function save_blog_info($data){
				$image_url=$this->save_image_info(); 
				$sql= "INSERT INTO tbl_blog (blog_title, author_name, blog_description, blog_image, publication_status) VALUES ('$data[blog_title]', '$data[author_name]', '$data[blog_description]', '$image_url', '$data[publication_status]')";

				if (mysqli_query($this->connect, $sql)) {
				   $message= 'Blog info save successfully';
				   return $message;
				}else{
					die('Query fail'.mysqli_error($this->connect));
				}
					
				
			}


		public function select_all_blog_info(){
			$sql= 'SELECT * from tbl_blog';
			if (mysqli_query($this->connect, $sql)) {
				$query_result= mysqli_query($this->connect, $sql);
				
					return $query_result;
			}else{
				die( 'Query error!!'.mysqli_error($this->connect));
			}
		}

		public function select_all_blog_by_id($blog_id){
			$sql= "SELECT * from tbl_blog WHERE blog_id = '$blog_id'";
			if (mysqli_query($this->connect, $sql)) {
				$query_result= mysqli_query($this->connect, $sql);
					return $query_result;
			}else{
				die( 'Query error!!'.mysqli_error($this->connect));
			} 
		}


		public function update_blog_info($data){
	
			if ($_FILES['blog_image']['name']) {
				$blog_id= $data[blog_id];
				$query_result= mysqli_query($this->connect, "SELECT blog_image FROM tbl_blog WHERE blog_id='$blog_id' ");
				$blog_image=mysqli_fetch_assoc($query_result);
				unlink($blog_image['blog_image']);

				$image_url= $this->save_image_info();
				
				$sql="UPDATE `tbl_blog` SET blog_title='$data[blog_title]', author_name='$data[author_name]', blog_description='$data[blog_description]', blog_image='$image_url', publication_status='$data[publication_status]' where blog_id ='$blog_id' ";
				if (mysqli_query($this->connect, $sql)) {
						session_start();
						$_SESSION['message']='Blog info update successfully';
					header('Location: manage_blog.php');
						//$msg= 'Student info update successfully';

				}else{
					die( 'Query error!!'.mysqli_error($this->connect));
				} 

			}else {
				$sql="UPDATE  tbl_blog SET  blog_title='$data[blog_title]', author_name='$data[author_name]', blog_description='$data[blog_description]', publication_status='$data[publication_status]' WHERE blog_id ='$data[$blog_id]' ";
				if (mysqli_query($this->connect, $sql)) {
						session_start();
						$_SESSION['message']='Blog info update successfully';
					header('Location: manage_blog.php');
						//$msg= 'Student info update successfully';

				}else{
					die( 'Query error!!'.mysqli_error($this->connect));
				} 
			}

			
		}

		public function delete_blog_info($id){
			$sql="DELETE from tbl_blog WHERE blog_id='$id'";
			if (mysqli_query($this->connect, $sql)) {
					$message="Student info delete successfully";
					return $message;
			}else{
				die( 'Query error!!'.mysqli_error($this->connect));
			} 
		}
		
		public function save_image_info(){
			$tmp_name= $_FILES['blog_image']['tmp_name'];
			$image_name= $_FILES['blog_image']['name'];
			$directory = '../asset/images/';
			$image_url = $directory.$image_name;
			$img_type = pathinfo($image_name,PATHINFO_EXTENSION);
			$img_size = $_FILES['blog_image']['size'];
			$check = getimagesize($tmp_name);
			if ($check) {
				if (file_exists($image_url)) {
					die("This file alreade exist..PLz try another file!");
				} else {
					if ($img_size > 50000000) {
						die("File size is too large!!");
					}else {
						if ($img_type !='JPG'&& $img_type !='PNG'&& $img_type !='jpg'&& $img_type !='jpeg'&& $img_type !='png' ) {
							die('Please use only jpg,jpeg and png ');
						} else {
							move_uploaded_file($tmp_name,$image_url);
							return $image_url;
						}
					}
				}
				
			}else {
				die("The file you uplode is not an image!Please upload a valid file!");
			}
			// move_uploaded_file($tmp_name,$image_url);
		}
		
		public function selectAllImgInfo(){
			$sql = "SELECT * FROM tbl_img";
			if (mysqli_query($this->connect, $sql)) {
				$query=mysqli_query($this->connect, $sql);
				return $query;
			}else {
				die('Query Problem!!'.mysqli_error($this->connect)) ;
			}
		} 
}


