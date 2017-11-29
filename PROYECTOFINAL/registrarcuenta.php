<?php 
	include("conexion.php");
	$RFC =$_POST['rfc'];
	$CORREO =$_POST['correo'];
	$CONTRASEÑA =$_POST['contraseña'];
	$REGIMEN =$_POST['regimen'];
	$INSERTCUENTA="INSERT INTO emisor VALUES ('','','$RFC','$CORREO','$REGIMEN','$CONTRASEÑA' );";
	$queryinsert = mysqli_query($con, $INSERTCUENTA)or die (mysqli_error($con));
?>

