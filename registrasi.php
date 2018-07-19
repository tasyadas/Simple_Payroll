<?php 
require 'function.php';

if( isset($_POST["register"]) ) {

	if(registrasi($_POST) > 0 ){
		echo "<script>
				alert('user baru berhasil ditambahkan!');
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
	<title>Registrasi</title>
	<style>
		label{
			display: block;
		}
		input {
    		width: 50%;
		}
	</style>
</head>
<body>

	<h1>Registrasi</h1>

	<form action="" method="post">
		<ul style="list-style: none;">
			<li>
				<label for="username">USERNAME</label>
				<input type="text" name="username" id="username">
			</li>
			<li>
				<label for="password">PASSWORD</label>
				<input type="password" name="password" id="password">
			</li>
			<li>
				<label for="password2">KONFIRMASI PASSWORD</label>
				<input type="password" name="password2" id="password2">
			</li>
			<li>
				<button type="submit" name="register" style="background-color: #375a7f; margin-top:  15px;">Register</button>
			</li>
		</ul>
	</form>
	
</body>
</html>