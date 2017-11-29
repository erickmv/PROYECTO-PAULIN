<?php

include("conexion-consultas.php");
$consultaRegimenFiscal="select nombre from regimen_fiscal";
$queryRegimenFiscal = mysqli_query($con, $consultaRegimenFiscal)or die (mysqli_error($con));
$nFilas= mysqli_num_rows($queryRegimenFiscal);

?>



<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>REGISTRO</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" href="style.css" />
    <script src="js/vendor/modernizr.js"></script>
  </head>
  <body>
    <section id="registro">
	  	<div class="row">
	  		<div class="small-12 medium-4 medium-push-4 columns " id="div-formulario">	
	  			<form id="form-contacto" class="" method="POST" action="registrarcuenta.php">
	  				<h3 class="text-center">REGISTRARSE</h3>
	  				<div class="row">
	  					<div class="small-12 medium-9 medium-centered columns">
	  						<div class="input-group">
	  							<label for="" class="elementosformulario">RFC: </label>
	  							<input type="text" name="rfc" class="elementosformulario"  required="">
	  						</div>
	  						<div class="input-group">
	  							<label for="" class="elementosformulario">CORREO: </label>
	  							<input type="text" name="correo" class="elementosformulario"  required="">
	  						</div>
	  						<div class="input-group">
			                  <label for="customDropdown1">REGIMEN FISCAL</label>
			                  <select id="customDropdown1" name="regimen" class="medium elementosformulario">
			  
			                    <?php 
			                        while($fila=mysqli_fetch_row($queryRegimenFiscal)){
			                        echo "<option value=".$fila[0].">".$fila[0]."</option>";
			                        }
			                    ?>
			                  </select>
			                </div>
	  						<div class="input-group">
	  							<label for="" class="elementosformulario">CONTRASEÑA: </label>
	  							<input type="text" id="input" multiple="true" name="contraseña" required="">
	  						</div>
	  					</div>
	  				</div>
	  				<button  class="button alert" >Send</button>
				</form>
	  		</div>
	  	</div>
  	</section>
    
    
    
    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
