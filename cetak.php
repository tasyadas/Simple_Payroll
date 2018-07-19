<?php

require_once __DIR__ . '/vendor/autoload.php';

require 'function.php';

$pegawai = query("SELECT * FROM pegawai");

$mpdf = new \Mpdf\Mpdf();
$html = '<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Cetak List Pegawai</title>
</head>
<body>
	<h1>Data Pegawai</h1>

	<table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<td>
				<strong>No</strong>
			</td>
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
		</tr>';

	$i = 1;
	foreach( $pegawai as $row ) {
		$html .= '<tr>
			<td>'.$i++.'</td>
			<td>'.$row["nip"].'</td>
			<td>'.$row["nama"].'</td>
			<td>'.$row["ttl"].'</td>
			<td>'.$row["alamat"].'</td>
			<td>'.$row["no_telp"].'</td>
			<td>'.$row["gender"].'</td>
			<td>'.$row["agama"].'</td>
			<td>'.$row["status"].'</td>
		</tr>';
	}

$html .='</table>
</body>
</html>';
$mpdf->WriteHTML($html);
$mpdf->Output('daftar-mahasiswa.pdf', 'I');

?>