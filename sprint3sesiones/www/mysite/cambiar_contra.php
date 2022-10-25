<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
	session_start();
	$nueva_contra = $_POST['nueva_contra'];
	$query = "UPDATE tUsuarios SET contraseña='".$nueva_contra."' WHERE id=".$_SESSION['user_id']."";
	//mysqli_query($db, $query) or die ('Error');

	echo $query;
?>
<html>
	<body>
		<p>Introduzca su nueva contraseña</p>
		<form action='cambiar_contra.php' method='post'>
			<input type='password' id='nueva_contra'>
			<input type='submit' value='Confirmar'>
		</form>
		<p><a href='login.html'>Volver</a></p>
	</body>
</html>
