<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>
	<style>
		td {
			text-decoration: none;
			color: blue;
		}
		td:hover {
			color: red;
		}
		td {
			transition: color 0.8s linear 0.2s;
		}
		a {
			text-decoration: underline;
			color: blue;
		}
		a:hover {
			color: red;
		}
		a {
			transition: color 0.8s linear 0.2s;
		}
	</style>
	<body>
		<h1>Conexión establecida</h1>
		<?php
			echo '<p><a href="cambiar_contra.php">Cambiar contraseña</a></p>';
			echo '<p><a href="logout.php">Logout</a></p>';
			// Lanzar una query
			$query = 'SELECT * FROM tCanciones';
			$result = mysqli_query($db, $query) or die('Query error');
			// Recorrer el resultado
			echo '<table border="1">';
			echo '<tr><th>ID</th><th>Nombre</th><th>Foto</th><th>Autor</th><th>Álbum</th></tr>';
			while ($row = mysqli_fetch_array($result)) {
				echo '<tr>';
				echo '<td><a href="/detail.php?id='.$row[id].'">'.$row['id'].'</a></td>';
				echo '<td>'.$row['nombre'].'</td>';
				echo '<td><img src="'.$row['url_imagen'].'" width="100" height="100"></td>';
				echo '<td>'.$row['autor'].'</td>';
				echo '<td>'.$row['album'].'</td>';
				echo '</tr>';
			}
			echo '</table>';
		mysqli_close($db);
		?>
	</body>
</html>

