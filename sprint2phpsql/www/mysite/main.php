<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>
	<body>
		<h1>Conexión establecida</h1>
		<?php
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

