<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
	$vieja_contra = $_POST['vieja_contra'];
	$nueva_contra = $_POST['nueva_contra'];
	$repe_contra = $_POST['repe_contra'];
	session_start();
	if($vieja_contra == $_SESSION['user_contra']) {
		if($nueva_contra == $repe_contra) {
			$query = "UPDATE tUsuarios SET contraseña='".$nueva_contra."' WHERE id='".$_SESSION['user_id']."'";
			mysqli_query($db, $query) or die ('Error');
			echo "<p>Contraseña cambiada</p>";
			echo "<a href='main.php'>Volver</a>";
		} else {
			echo "<p>ERROR: No coinciden las contraseñas</p>";
		}
	} else {
		echo "<p>ERROR: la contraseña introducida no corresponde con el email</p>";
	}
?>
