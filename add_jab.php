<?php 
//koneksi ke function
require 'function.php';

// Cek Apakah tombol submit sudah ditekan atau belum
if (isset($_POST["submit"])) {
	
	
	// Cek apakah data berhasil ditambahkan atau tidak
	if (tambah_jab($_POST) > 0) {
		echo "
			<script>
				alert('Your Data was Successfully To Be Added');
			</script>
		";
	} 
	else {
		echo "
			<script>
				alert('Your Data was Failed To Be Added');
			</script>
		";
	}
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Jabatan</title>
	<style>
		label{
			display: block;
		}
		input {
    		width: 50%;
    		border-radius: 3px;
    		padding: 5px;
		}
	</style>
</head>
<body>

	<h3>Tambah Jabatan</h3>

	<form action="" method="post" style="margin-top: 50px; margin-left: 80px;">
		<ul style="list-style: none;">
			<li>
				<label for="id_jab">ID JABATAN</label>
				<input type="text" name="id_jab" id="id_jab">
			</li>
			<li>
				<label for="jabatan">JABATAN</label>
				<input type="text" name="jabatan" id="jabatan">
			</li>
			<li>
				<button type="submit" name="submit" style="background-color: #375a7f; margin-top:  15px;">Tambah</button>
			</li>
		</ul>
	</form>
	
</body>
</html>