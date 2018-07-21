<?php 
require 'function.php';

if( isset($_POST["login"]) ) {

	if(login($_POST) > 0 ){
		echo "<script>
				alert('Anda berhasil login!');
			  </script>";
	} else {
		echo mysqli_error($conn);
	}
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>LOGIN</title>
	<style>
		label{
			display: block;
		}
	</style>
</head>
<body>

	<h1>LOGIN</h1>

	<form action="" method="post">
		<ul>
			<li>
				<label for="username">username :</label>
				<input type="text" name="username" id="username">
			</li>
			<li>
				<label for="password">password :</label>
				<input type="password" name="password" id="password">
			</li>
			<li>
				<button type="submit" name="login">login</button>
			</li>
		</ul>
	</form>
	
</body>
</html>