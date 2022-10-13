<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>
	<body>
		<?php
			if (!isset($_GET['id'])) {
				die('No se ha especificado una canción');
			}
			$cancion_id = $_GET['id'];
			$query = 'SELECT * FROM tCanciones WHERE id='.$cancion_id;
			$result = mysqli_query($db, $query) or die('Query error');
			$only_row = mysqli_fetch_array($result);
			echo '<h1>'.$only_row['id'].'</h1>';
			echo '<h1>'.$only_row['nombre'].'</h1>';
			echo '<h1><img src="'.$only_row['url_imagen'].'" width="100" height="100"></h1>';
			echo '<h1>'.$only_row['autor'].'</h1>';
			echo '<h1>'.$only_row['album'].'</h1>';
		?>
		<h3>Comentarios:</h3>
		<ul>
			<?php
				$query2 = 'SELECT * FROM tComentarios WHERE cancion_id='.$cancion_id;
				$result2 = mysqli_query($db, $query2) or die('Query error');
				while ($row = mysqli_fetch_array($result2)) {
					echo '<li>'.$row['id'].'</li>';
					echo '<li>'.$row['comentario'].'</li>';
					echo '<li>'.$row['usuario_id'].'</li>';
					echo '<li>'.$row['cancion_id'].'</li>';
				}
				mysqli_close($db);
			?>
		</ul>
	</body>
</html>

