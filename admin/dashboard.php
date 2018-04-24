<?php
	session_start();

	if ($_SESSION['admin_id'] == NULL) {
		header('Location: index.php');
	}

	if (isset($_GET['logout'])) {
		require_once'../class/login.php';
		$login = new Login;
		$login->admin_logout();
	}


	$message="";

	if (isset($_POST['submit'])) {
		require_once '../class/blog.php';
		$blog = new Blog();
		$message= $blog->save_blog_info($_POST);
	}

?>


<!DOCTYPE html>
<html lang="en">
  <head>
  	<title>Home</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../asset/css/bootstrap.min.css" rel="stylesheet">

   
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
				<h2 class="text-center text-success"><?php echo $message;?></h2>
				<div class="well">
					 <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
						  <div class="form-group">
						    <label class="control-label col-sm-2">Blog Title</label>
						    <div class="col-sm-10">
						      <input type="text" name="blog_title" class="form-control">
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2">Author Name</label>
						    <div class="col-sm-10">
						      <input type="text" name="author_name" class="form-control" >
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2">Blog Description</label>
						    <div class="col-sm-10">
						      <textarea name="blog_description" class="form-control"></textarea>
						    </div>
						  </div>
							<div class="form-group">
						    <label class="control-label col-sm-2">Select Blog Image</label>
						    <div class="col-sm-10">
									<input type="file" name="blog_image" multiple accept="image/*" >
						    </div>
						  </div>
						  <div class="form-group">
						  	<label class="control-label col-sm-2">Pubication Status</label>
						  	<div class="col-sm-10">
						  		<select class="form-control" name="publication_status">
						  			<option>--Select Publication Status--</option>
						  			<option value="1">Published</option>
						  			<option value="0">Unpublished</option>
						  		</select>
						  	</div>
						  </div>
						  <div class="form-group">
						    <div class="col-sm-offset-2 col-sm-10">
						      <button type="submit" name="submit" class="btn btn-success btn-block">Add Blog Info</button>
						    </div>
						  </div>
						</form> 
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

