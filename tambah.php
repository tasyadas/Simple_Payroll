<?php 
//koneksi ke function
require 'function.php';

// Cek Apakah tombol submit sudah ditekan atau belum
if (isset($_POST["submit"])) {
	
	
	// Cek apakah data berhasil ditambahkan atau tidak
	if (tambah($_POST) > 0) {
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
	<title>Tambah data pegawai</title>
</head>
<body>
	<h1>Tambah data pegawai</h1>

	<form action="" method="post">
		<ul style="list-style-type: none">
			<li>
				<label for="nip">NIP : </label>
				<input type="text" name="nip" id="nip" required>
			</li>
			<li>
				<label for="nama">Nama : </label>
				<input type="text" name="nama" id="nama" required>
			</li>
			<li>
				<label for="ttl">Tanggal Lahir : </label>
				<input type="text" name="ttl" id="ttl" required>
			</li>
			<li>
				<label for="alamat">Alamat : </label>
				<input type="text" name="alamat" id="alamat" required>
			</li>
			<li>
				<label for="no_telp">No. Telepon : </label>
				<input type="text" name="no_telp" id="no_telp" required>
			</li>
			<li>
				<label for="gender">Jenis Kelamin : </label>
				<input type="text" name="gender" id="gender" required>
			</li>
			<li>
				<label for="agama">Agama : </label>
				<input type="text" name="agama" id="agama" required>
			</li>
			<button type="submit" name="submit">tambah data !</button>
		</ul>
	</form>
</body>
</html>