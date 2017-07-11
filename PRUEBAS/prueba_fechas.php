<?php 
require_once '../config.php';
require_once '../funciones.php';
if (isset($_POST['from'])){
	$fechai = ($_POST['from']) * 1000;
	$where = " where ".$fechai." <= start";
}

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
	<div class="row"><h1 style="text-align: center;">Esta es una prueba de Fechas</h1></div>
	<form action="" method="post">
	    <div class="row">
	        <div class='input-group date' id='from'>
	            <input type='text' id="from" name="from" class="form-control" readonly />
	            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
	        </div>
	        <div class='input-group date' id='to'>
	            <input type='text' id="to" name="to" class="form-control" readonly />
	            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
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
			<br>
			<button type="submit" class="btn btn-primary">Buscar</button>
	    </div>
    </form>
</div> <!-- container -->
	

	


<?php


$sql = "SELECT * FROM eventos";
$result = $conexion->query($sql);




 ?>

</body>
</html>