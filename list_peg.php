<?php 
//koneksi ke function
require 'function.php';


//pagination
//konfigurasi
$jmlhDataPerHalaman = 10;
$jumlahData = count(query("SELECT * FROM pegawai"));
$jumlahHalaman = ceil($jumlahData / $jmlhDataPerHalaman);
 
$halamanAktif = ( isset($_GET["halaman"]) ) ?  $_GET["halaman"] : 1;
$awalData = ( $jmlhDataPerHalaman * $halamanAktif ) - $jmlhDataPerHalaman;

$pegawai = query("SELECT * FROM pegawai LIMIT $awalData,$jmlhDataPerHalaman");

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>List Pegawai</title>

	<style type="text/css">
        table>tbody>tr>td {
    		border-style: inset;
    		font-size: 13px;
			font-style: italic;
			font-variant: small-caps
		}
    </style>

</head>
<body>
	
	<a href="tambah.php" target="_blank"> Tambah |</a>
	<a href="cetak.php" target="_blank"> Cetak</a>

	<h3>Data Pegawai</h3>
<br><br>

<!-- navigasi -->
<?php for ($i=1; $i <= $jumlahHalaman ; $i++) : ?>
	<a href="?halaman=<?= $i; ?>"><?= $i; ?></a>
<?php endfor; ?>

<table border="2" cellpadding="10" cellspacing="0" style="border-color:  white;">
	<tr style="text-align: center;">
		<td>
			<strong>NIP</strong>
		</td>
		<td>
			<strong>Nama</strong>
		</td>
		<td>
			<strong>Tanggal Lahir</strong>
		</td>
		<td><strong>Alamat</strong>
			</td>
		<td>
			<strong>No. Telepon</strong>
		</td>
		<td>
			<strong>Jenis Kelamin</strong>
		</td>
		<td>
			<strong>Agama</strong>
		</td>
		<td>
			<strong>Status Jabatan</strong>
		</td>
		<td>
			<strong>Aksi</strong>
		</td>
	</tr>
	
	<?php foreach( $pegawai as $row ) : ?>
	<tr>
		<td style="text-align: center;"><?= $row["nip"]; ?></td>
		<td><?= $row["nama"]; ?></td>
		<td style="text-align: center;"><?= $row["ttl"]; ?></td>
		<td><?= $row["alamat"]; ?></td>
		<td style="text-align: center;"><?= $row["no_telp"]; ?></td>
		<td style="text-align: center;"><?= $row["gender"]; ?></td>
		<td style="text-align: center;"><?= $row["agama"]; ?></td>
		<td><?= $row["status"]; ?></td>
		<td>
			<a href='ubah.php?nip=<?= $row["nip"]; ?>'>ubah</a> |
			<a href='hapus.php?nip=<?= $row["nip"]; ?>'>hapus</a>
		</td>
	</tr>
	<?php endforeach; ?>
</table>
</body>
</html>