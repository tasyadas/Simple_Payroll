<?php 
require 'function.php';

$nip = $_GET["nip"];


if( hapus($nip) > 0 ) {
	echo "
			<script>
				alert('Your Data Has Been Deleted');
				document.location.href = 'list_peg.php';
			</script>
		";
	} 
else {
	echo "
			<script>
				alert('Your Data Failed To Be Deleted');
				document.location.href = 'list_peg.php';
			</script>
		";
	}

?>