<div class="col-md-10 column" style="
    background-color:  #303030; height: auto; padding-bottom: 50px; border-radius: 5px; padding-top: 20px;
">
			
	<?php 

		// tangkap request menu di url
		$hal = $_GET['hal'];
		// echo "<script> alert('".$mysqli_error($conn)."') </script>";;

			if (!empty($hal)) {
				include_once $link[$hal];
			}
			else{
					include_once 'home.php';
			}

	?>

</div>