<?php 
//koneksi ke function
require 'function.php';


// Ambil data dari URL
$id_peg = $_GET["id_peg"];

// Query data pegawai berdasarkan id_peg
 $cek = query("SELECT * FROM info_pegawai WHERE id_peg = '$id_peg'")[0];

// Cek Apakah tombol submit sudah ditekan atau belum
if (isset($_POST["submit"])) {

	
	// Cek apakah data berhasil diubah atau tidak
	if (ubah($_POST) > 0) {
		echo "
			<script>
				alert('Your Data Successfully Changed');
				document.location.href = 'list_peg.php';
			</script>
		";
	} 
	else {
		echo "
			<script>
				alert('Your Data Failed To Change');
				document.location.href = 'list_peg.php';
			</script>
		";
	}
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Edit data pegawai</title>
</head>
<body>
	<h1>Edit data pegawai</h1>

	<form action="" method="post">
		<ul style="list-style-type: none">
			<li>
				<label for="nip">NIP : <?= $cek["nip"]; ?></label>

			</li>
			<li>
				<label for="nama">Nama : </label>
				<input type="text" name="nama" id="nama" required value="<?= $cek["nama"]; ?>" >
			</li>
			<li>
				<label for="tanggal_lahir">Tanggal Lahir : </label>
				<input type="text" name="tanggal_lahir" id="tanggal_lahir" required value="<?= $cek["tanggal_lahir"]; ?>">
			</li>
			<li>
				<label for="alamat">Alamat : </label>
				<input type="text" name="alamat" id="alamat" required value="<?= $cek["alamat"]; ?>">
			</li>
			<li>
				<label for="no_telp">No. Telepon : </label>
				<input type="text" name="no_telp" id="no_telp" required value="<?= $cek["no_telp"]; ?>">
			</li>
			<li>
				<label for="jenis_kelamin">Jenis Kelamin : </label>
				<input type="text" name="jenis_kelamin" id="jenis_kelamin" required value="<?= $cek["jenis_kelamin"]; ?>">
			</li>
			<li>
				<label for="agama">Agama : </label>
				<input type="text" name="agama" id="agama" required value="<?= $cek["agama"]; ?>" >
			</li>

			<button type="submit" name="submit">Simpan Perubahan !</button>
		</ul>
	</form>
</body>
</html>