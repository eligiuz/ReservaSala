<?php 

require_once '../config.php';
require_once 'Classes/PHPExcel.php';

$sql = "SELECT * FROM eventos";
$result = $conexion->query($sql);

$fila = 3;

$objPHPExcel = new PHPExcel();

$objPHPExcel->getProperties()
->setCreator("Innovación Educativa")
->setLastModifiedBy("Innovación Educativa")
->setTitle("Lista de eventos")
->setSubject("Reporte")
->setDescription("Reporte de eventos sala edifico 8")
->setKeywords("excel reporte")
->setCategory("Reportes");

// Estilo del reporte

$estiloTituloReporte = array(
	'font' => array(
		'name'      => 'Arial',
		'bold'      => true,
		'italic'    => false,
		'strike'    => false,
		'size'		=>	13
	),
	'fill' => array(
		'type'  => PHPExcel_Style_Fill::FILL_SOLID
	),
	'borders' => array(
		'allborders' => array(
			'style' => PHPExcel_Style_Border::BORDER_NONE
	)
	),
	'alignment' => array(
		'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
		'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER
	)
);

$estiloTituloColumnas = array(
	'font' => array(
		'name'  => 'Arial',
		'bold'  => true,
		'size' =>10,
		'color' => array(
			'rgb' => 'FFFFFF'
		)
	),
	'fill' => array(
		'type' => PHPExcel_Style_Fill::FILL_SOLID,
		'color' => array('rgb' => '538DD5')
	),
	'borders' => array(
		'allborders' => array(
			'style' => PHPExcel_Style_Border::BORDER_THIN
		)
	),
	'alignment' =>  array(
		'horizontal'=> PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
		'vertical'  => PHPExcel_Style_Alignment::VERTICAL_CENTER
	)
);

//Estilo de los datos
$estiloInformacion = new PHPExcel_Style();
$estiloInformacion->applyFromArray( array(
	'font' => array(
		'name'  => 'Arial',
		'color' => array(
			'rgb' => '000000'
	)
	),
	'fill' => array(
		'type'  => PHPExcel_Style_Fill::FILL_SOLID
	),
	'borders' => array(
		'allborders' => array(
			'style' => PHPExcel_Style_Border::BORDER_THIN
		)
	),
	'alignment' =>  array(
		'horizontal'=> PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
		'vertical'  => PHPExcel_Style_Alignment::VERTICAL_CENTER
	)
));

// Se aplican los estilos  a las celdas del encabezado

// $objPHPExcel->getActiveSheet()->getStyle('A1:E4')->applyFromArray($estiloTituloReporte);
$objPHPExcel->getActiveSheet()->getStyle('A1:Q2')->applyFromArray($estiloTituloColumnas);

//Datos del reporte

$objPHPExcel->setActiveSheetIndex(0);
$objPHPExcel->getActiveSheet()->setTitle("Eventos");

$objPHPExcel->getActiveSheet()->setCellValue('A1', 'No.');
$objPHPExcel->getActiveSheet()->mergeCells('A1:A2');
$objPHPExcel->getActiveSheet()->setCellValue('B1', 'Fecha');
$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(10);
$objPHPExcel->getActiveSheet()->mergeCells('B1:B2');
$objPHPExcel->getActiveSheet()->setCellValue('C1', 'Actividad');
$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(10);
$objPHPExcel->getActiveSheet()->mergeCells('C1:C2');
$objPHPExcel->getActiveSheet()->setCellValue('D1', 'Nombre');
$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(10);
$objPHPExcel->getActiveSheet()->mergeCells('D1:D2');
$objPHPExcel->getActiveSheet()->setCellValue('E1', 'Docentes');
$objPHPExcel->getActiveSheet()->mergeCells('E1:F1');
$objPHPExcel->getActiveSheet()->setCellValue('G1', 'Alumnos');
$objPHPExcel->getActiveSheet()->mergeCells('G1:H1');
$objPHPExcel->getActiveSheet()->setCellValue('I1', 'Administrativos');
$objPHPExcel->getActiveSheet()->mergeCells('I1:J1');
$objPHPExcel->getActiveSheet()->setCellValue('K1', 'Externos');
$objPHPExcel->getActiveSheet()->mergeCells('K1:L1');
$objPHPExcel->getActiveSheet()->setCellValue('M1', 'Total');
$objPHPExcel->getActiveSheet()->setCellValue('N1', 'Division');
$objPHPExcel->getActiveSheet()->getColumnDimension('N')->setWidth(10);
$objPHPExcel->getActiveSheet()->mergeCells('N1:N2');
$objPHPExcel->getActiveSheet()->setCellValue('O1', 'Horario');
$objPHPExcel->getActiveSheet()->mergeCells('O1:P1');
$objPHPExcel->getActiveSheet()->setCellValue('Q1', 'Observaciones');
$objPHPExcel->getActiveSheet()->getColumnDimension('Q')->setWidth(10);
$objPHPExcel->getActiveSheet()->mergeCells('Q1:Q2');

$objPHPExcel->getActiveSheet()->setCellValue('E2','H');
$objPHPExcel->getActiveSheet()->setCellValue('F2','M');
$objPHPExcel->getActiveSheet()->setCellValue('G2','H');
$objPHPExcel->getActiveSheet()->setCellValue('H2','M');
$objPHPExcel->getActiveSheet()->setCellValue('I2','H');
$objPHPExcel->getActiveSheet()->setCellValue('J2','M');
$objPHPExcel->getActiveSheet()->setCellValue('K2','H');
$objPHPExcel->getActiveSheet()->setCellValue('L2','M');

$objPHPExcel->getActiveSheet()->setCellValue('O2','Inició');
$objPHPExcel->getActiveSheet()->setCellValue('P2','Terminó');

while ($row = $result->fetch_assoc()) 
{
	$fechai = explode(" ", $row["inicio_normal"]);
	$filaE = $fila - 2;
	
	$objPHPExcel->getActiveSheet()->setCellValue('A'.$fila, $filaE);
	$objPHPExcel->getActiveSheet()->setCellValue('B'.$fila, $fechai[0]);
	
	$objPHPExcel->getActiveSheet()->setCellValue('C'.$fila, $row["class"]);
	$objPHPExcel->getActiveSheet()->setCellValue('D'.$fila, $row["title"]);
	$objPHPExcel->getActiveSheet()->setCellValue('E'.$fila, $row['AH']);
	$objPHPExcel->getActiveSheet()->setCellValue('F'.$fila, $row['AM']);
	$objPHPExcel->getActiveSheet()->setCellValue('G'.$fila, $row['DH']);
	$objPHPExcel->getActiveSheet()->setCellValue('H'.$fila, $row['DM']);
	$objPHPExcel->getActiveSheet()->setCellValue('I'.$fila, $row['ADH']);
	$objPHPExcel->getActiveSheet()->setCellValue('J'.$fila, $row['AMM']);
	$objPHPExcel->getActiveSheet()->setCellValue('K'.$fila, $row['OH']);
	$objPHPExcel->getActiveSheet()->setCellValue('L'.$fila, $row['OM']);
	$objPHPExcel->getActiveSheet()->setCellValue('M'.$fila, '=SUM(E'.$fila.':L'.$fila.')');
	$objPHPExcel->getActiveSheet()->setCellValue('N'.$fila, $row["responsable_nombre"]);
	
	
	$objPHPExcel->getActiveSheet()->setCellValue('O'.$fila, $fechai[1]);
	$fechaf = explode(" ", $row['final_normal']);
	$objPHPExcel->getActiveSheet()->setCellValue('P'.$fila, $fechaf[1]);

	$objPHPExcel->getActiveSheet()->setCellValue('Q'.$fila, $row["observacion"]);

	$fila++;

}

//Se aplica estilo a las celdas de los datos

$fila = $fila-1;
$objPHPExcel->getActiveSheet()->setSharedStyle($estiloInformacion, "A3:Q".$fila);

//Archivo xlsx
header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
header('Content-Disposition: attachment;filename="ReporteEvento.xlsx"');
header('Cache-Control: max-age=0');
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
$objWriter->save('php://output');




 ?>