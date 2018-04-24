<?php
	session_start();
	require_once '../class/blog.php';
	$blog = new Blog();
	
	

	

	$message="";
	if (isset($_SESSION['message'])) {
		$message =$_SESSION['message'];
		unset($_SESSION['message']);
	}


	if (isset($_GET['status'])) {
			$id= $_GET['id'];
		 	$message= $blog->delete_blog_info($id);
		}

	$query_result= $blog->select_all_blog_info();
?>





<!DOCTYPE html>
<html lang="en">
  <head>
  	<title>Blog Manage</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../asset/css/bootstrap.min.css" rel="stylesheet">
    <script>
								
    	function checkDelete(){
    		 var check=confirm("Are you sure to delete this!");
    		 if (check) {
    		 	return true;
    		 }else {
    		 	return false;
    		 }
    	}
    </script>
   
  </head>
  <body>
  	  	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">WebSiteName</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="dashboard.php">Add Blog</a></li>
	      <li><a href="manage_blog.php">Manage Blog</a></li>
		  <li><a href="add_image.php">Add Image</a></li>
	    </ul>
	    <form class="navbar-form navbar-left">
	    	<div class="form-group">
	    		<input type="text" class="form-control" placeholder="Search">
	    	</div> 
	    	<button type="submit" class="btn btn-default">Submit</button>
	    </form>
	    <ul class="nav navbar-nav navbar-right">
	    	<li><a href=""><strong>Welcome </strong><?php echo $_SESSION['admin_name']; ?></a></li>
	    	<li><a href="?logout=logout">Logout</a></li>
	    </ul>
	  </div>
	</nav>

  	
	
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="text-center text-success "> <?php echo $message; ?></h2>
				<div class="well">
					<table class="table table-bordered table-hover">
						<tr>
							<th>Blog Id</th>
							<th>Blog Title</th>
							<th>Author Name</th>
							<th>Blog Description</th>
							<th>Action</th>
						</tr>

						<?php $i=1; while ($blog_info= mysqli_fetch_assoc($query_result)) { ?>
						<tr>
							<td><?php echo $i ?></td>
							<td><?php echo $blog_info['blog_title']; ?></td>
							<td><?php echo $blog_info['author_name']; ?></td>
							<td><?php echo $blog_info['blog_description']; ?></td>
							<td><?php
								if ($blog_info['publication_status']==1) {
									echo 'Published';
								}else{
									echo 'Unpublished';
								}
								?>
							</td>
							<td>
								<a href="update_blog.php?id=<?php echo $blog_info['blog_id']; ?> " class="btn btn-success" title="Edit">
									<span class="glyphicon glyphicon-edit "></span>
								</a>
								<a href="?status=delete&&id=<?php echo $blog_info['blog_id']; ?>" class="btn btn-danger" title="Delete" onclick=" return checkDelete();">
									<span class="glyphicon glyphicon-trash "></span>
								</a>
							</td>
						</tr>
						<?php $i++; } ?>
					</table>
				</div>
			</div>
			
		</div>	
	</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="asset/js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="asset/js/bootstrap.min.js"></script>
  </body>
</html>
