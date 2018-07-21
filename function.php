<?php

	//koneksi ke database
	$conn = mysqli_connect("localhost","root","","penggajian2");


	function query($query){
		global $conn;
		$result = mysqli_query($conn, $query);
		$rows = [];
		while ( $row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}

		return $rows;
	}


	function tambah($data){
		global $conn;

		$nip = htmlspecialchars($data["nip"]);
		$nama = htmlspecialchars($data["nama"]);
		$ttl = htmlspecialchars($data["ttl"]);
		$alamat = htmlspecialchars($data["alamat"]);
		$no_telp = htmlspecialchars($data["no_telp"]);
		$gender = htmlspecialchars($data["gender"]);
		$agama = htmlspecialchars($data["agama"]);


		$query = "INSERT INTO pegawai 
					VALUES
					(null,null,null,null,'$nip','$nama','$ttl','$alamat','$no_telp','$gender','$agama')
				";

		return mysqli_query($conn, $query);
	}

		function tambah_jab($data){
		global $conn;

		$id_jab = htmlspecialchars($data["id_jab"]);
		$jabatan = htmlspecialchars($data["jabatan"]);


		$query = "INSERT INTO jabatan 
					VALUES
					('$id_jab','$jabatan')
				";

		return mysqli_query($conn, $query);
	}

		function add_pot($data){
		global $conn;

		$id_potongan = htmlspecialchars($data["id_potongan"]);
		$jabatan = htmlspecialchars($data["jabatan"]);


		$query = "INSERT INTO jabatan 
					VALUES
					('$id_jab','$jabatan')
				";

		return mysqli_query($conn, $query);
	}


	function hapus($nip) {
		global $conn;

		$cek = mysqli_query($conn, "DELETE FROM pegawai WHERE nip = '$nip'");

		return $cek;
	}

	function ubah($data){
		global $conn;

		$nip = htmlspecialchars($data["nip"]);
		$nama = htmlspecialchars($data["nama"]);
		$ttl = htmlspecialchars($data["ttl"]);
		$alamat = htmlspecialchars($data["alamat"]);
		$no_telp = htmlspecialchars($data["no_telp"]);
		$gender = htmlspecialchars($data["gender"]);
		$agama = htmlspecialchars($data["agama"]);


		$query = "UPDATE pegawai SET
					nip = '$nip',
					nama = '$nama',
					ttl = '$ttl',
					alamat = '$alamat',
					no_telp = '$no_telp',
					gender = '$gender',
					agama = '$agama',
					status = '$status'
					WHERE nip = '$nip'

				";


		return mysqli_query($conn, $query);
	}

function registrasi($data) {
	global $conn;

	$username = strtolower(stripslashes($data["username"]));
	$password = mysqli_real_escape_string($conn, $data["password"]);
	$password2 = mysqli_real_escape_string($conn, $data["password2"]);

	// cek username sudah ada atau belum
	$result = mysqli_query($conn, "SELECT username FROM user WHERE username = '$username'");
	if( mysqli_fetch_assoc($result) ) {
		echo "<script>
				alert('username sudah terdaftar!');
			  </script>";
			 return false;
	}

	// Cek konfirmasi password
	if( $password !== $password2 )	{
		echo "<script>
				alert('konfirmasi password tidak sesuai!');
			  </script>";
		return false;
	}

	// tambahkan data baru ke database
	mysqli_query($conn, "INSERT INTO user VALUES('', '$username', '$password')");

	return mysqli_affected_rows($conn);
}


function login($data) {

	global $conn;

	//login user dari login page
	if (isset($_POST['login'])){
		$username = mysql_real_escape_string($_POST['username']);
		$password = mysql_real_escape_string($_POST['password']);

		// ensure that form field are filled properly
		$errors = array();
			if(empty($username)){
				array_push($errors);
			}
			if(empty($password) ){
				array_push($errors);
			}
			if (count($errors) == 0 ) {
				$query = "SELECT * FROM user WHERE username='$username' AND password='$password'";
				$result = mysqli_query($conn, $query);
				if(mysqli_num_rows($result) == 1){
					// log user in
					$_SESSION['username'] = $username;
					$_SESSION['success'] = "Anda telah login";
					header('location: list_peg.php');
				}else{
					array_push($errors, "username/password yang anda masukan salah");
					header('location: login.php');
				}
			}
	}
	// log out
	if (isset($_GET['logout'])){
		session_destroy();
		unset($_SESSION['username']);
		header('location: login.php');
	}
}

?>