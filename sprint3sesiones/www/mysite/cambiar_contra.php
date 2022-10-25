<?php
	session_start();
	$password_cambiar = $_POST['nueva contra'];
	$query = "UPDATE tUsuarios SET contraseña=".$password_cambiar." WHERE email=".$_GET['email'];
?>
<html>
	<body>
		<p>Introduzca su nueva contraseña</p>
		<form>
			<input type="password" name="nueva_contra" value="Nueva contraseña">
			<input type="submit" value="Confirmar">
		</form>
	</body>
</html>
