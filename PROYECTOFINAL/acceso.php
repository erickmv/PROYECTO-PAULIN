<?php 
	include("conexion.php");
	$UserName =$_POST['username'];
	$Password =$_POST['password'];
	$Key =$_POST['key'];
	$consultaAcceso="select * from acceso WHERE username='$UserName'";
	$queryAcceso = mysqli_query($con, $consultaAcceso)or die (mysqli_error($con));
	$Existe= mysqli_num_rows($queryAcceso);
	if ($Existe==0){
		print("El usuario no existe");
	} else {
		$Fila=mysqli_fetch_row($queryAcceso);
		$BDPassword=$Fila[1];
		if($Password==$BDPassword){
			print("password correcto");
			$BDKEY=$Fila[2];
			$existeArchivo=file_exists($Key);
			if ($existeArchivo==true) {
				print("El archivo exite");
				$manejador=fopen($Key, 'r');
				$texto1="";
				while (!feof($manejador)) {
					$i=fgetc($manejador);
					$texto1=$texto1.$i;
				}
				fclose($manejador);
				if ($texto1==$BDKEY) {
					print("El archivo coincide");
				}
				else{
					print("El archivo no coincide");
				}
			} else{
                print("El archivo no existe");
			}
			$Status=$Fila[3];
			if($Status==1){
				print("El usuario está activo");
			} else {
				print("El usuario no está activo");
			}
		} else {
			print("password incorrecto");
		}
		print("El usuario si existe");
		
	}
?>
