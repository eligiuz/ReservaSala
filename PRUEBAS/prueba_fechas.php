<?php 
require_once '../config.php';
require_once '../funciones.php';
if (($_POST['from']) <> ""){
	$fechai = strtotime($_POST['from']) * 1000;
	$where = " where ".$fechai." <= start";
	$sql = "SELECT * FROM eventos".$where;
	

} else {
	$sql = "SELECT * FROM eventos";
}
$result = $conexion->query($sql);

?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title>Selecciona fechas</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/calendar.css">
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <script type="text/javascript" src="../js/es-ES.js"></script>
        <script src="../js/jquery.min.js"></script>
        <script src="../js/moment.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/bootstrap-datetimepicker.js"></script>
        <link rel="stylesheet" href="../css/bootstrap-datetimepicker.min.css" />
       <script src="../js/bootstrap-datetimepicker.es.js"></script>
    

	
</head>
<body>
	<div class="container">
		<div class="row">
			<h1 style="text-align: center;">Esta es una prueba de Fechas</h1>
		</div>
		<div class="row">
			<form action="prueba_fechas.php" method="post">
				<div class="col-lg-6">
			        <div class='input-group date' id='from'>
			            <input type='text' id="from" name="from" class="form-control" readonly />
			            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
			        </div>
		        </div>

		        <div class="col-lg-6">
			        <div class='input-group date' id='to'>
			            <input type='text' id="to" name="to" class="form-control" readonly />
			            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
			        </div>
		        </div>



		       <script type="text/javascript">
		        $(function () {
		            $('#from').datetimepicker({
		                format: "YYYY-MM-DD"
		            });
		            $('#to').datetimepicker({
		                format: "YYYY-MM-DD"
		            });
		        });
				</script>
				<br/>
				<button type="submit" class="btn btn-primary">Buscar</button>
		    </form>
	    </div>

		<div class="row">
			<table class="table table-striped">
				<thead>
					<th>Fecha <?php echo $fechai; ?></th>
					<th>Tipo de actividad</th>
					<th>Nombre</th>
				</thead>
				<tbody>
					<?php while ($row = $result->fetch_assoc()){ ?>
					<tr>
						<td><?php echo $row['inicio_normal']; ?></td>
						<td><?php echo cambiarTipo($row['class']); ?></td>
						<td><?php echo $row['title']; ?></td>
					</tr>
					<?php } ?>
				</tbody>
			</table>

		</div>

</div> <!-- container -->
	

	


<?php


$sql = "SELECT * FROM eventos";
$result = $conexion->query($sql);




 ?>

</body>
</html>