<div class="row clearfix">
	<div class="col-md-2 column">
		<?php
			include_once 'link.php';

											

			foreach($menu_sidebar as $id => $val){

				echo '<div class="list-group">';
				echo'<a href="index.php?hal='.$id.'" class="list-group-item">'.$val.'</a>';
												
			} for($i = 0; $i <= 7; $i++){
				echo '</div>';
			}
		?>		
