<?php 
//koneksi ke function
require 'function.php';


//pagination
//konfigurasi
$jmlhDataPerHalaman = 10;
$jumlahData = count(query("SELECT * FROM user"));
$jumlahHalaman = ceil($jumlahData / $jmlhDataPerHalaman);
 
$halamanAktif = ( isset($_GET["halaman"]) ) ?  $_GET["halaman"] : 1;
$awalData = ( $jmlhDataPerHalaman * $halamanAktif ) - $jmlhDataPerHalaman;
$halListPegUri = explode('&', $_SERVER['REQUEST_URI'], 2)[0];
$user = query("SELECT * FROM user LIMIT $awalData,$jmlhDataPerHalaman");

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>List user</title>

	<style type="text/css">
        table>tbody>tr>td {
    		border-style: inset;
    		font-size: 15px;
			font-style: italic;
			font-variant: small-caps;
			padding: 12px;
		}
    </style>

</head>
<body>
	
	<a href="<?php echo $_SERVER['REQUEST_URI'] ?>&hal=registrasi">Tambah</a>

	<h3>Data user</h3>
<br><br>

<!-- navigasi -->
<?php for ($i=1; $i <= $jumlahHalaman ; $i++) : ?>
	<a href="<?php echo $halListPegUri ?>&halaman=<?= $i; ?>"><?= $i; ?></a>
<?php endfor; ?>

<table border="2" cellpadding="10" cellspacing="0" style="border-color:  white;">
	<tr style="text-align: center;">
		<td>
			<strong>ID</strong>
		</td>
		<td>
			<strong>Username</strong>
		</td>
		<td>
			<strong>Password</strong>
		</td>
		<td>
			<strong>Aksi</strong>
		</td>
	</tr>
	
	<?php foreach( $user as $row ) : ?>
	<tr>
		<td style="text-align: center;"><?= $row["id"]; ?></td>
		<td style="text-align: center;"><?= $row["username"]; ?></td>
		<td style="text-align: center;"><?= $row["password"]; ?></td>
		<td>
			<a href='cetak.php?nip=<?= $row["nip"]; ?>'>cetak</a> |
			<a href='ubah.php?nip=<?= $row["nip"]; ?>'>ubah</a> |
			<a href='hapus.php?nip=<?= $row["nip"]; ?>'>hapus</a>
		</td>
	</tr>
	<?php endforeach; ?>
</table>
</body>
</html>