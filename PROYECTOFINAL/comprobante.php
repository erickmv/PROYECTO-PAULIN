
<?php

include("conexion.php");
$consultaMoneda="select c_moneda from moneda";

$queryMoneda = mysqli_query($con, $consultaMoneda)or die (mysqli_error($con));
$nFilas= mysqli_num_rows($queryMoneda);
?>

			                		
			                		

<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>COMPROBANTE</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" href="style.css" />
    <script src="js/vendor/modernizr.js"></script>
  </head>
  <body>
    <section id="comprobante">
	  	<div class="row">
	  		<div class="small-12 medium-4 medium-push-4 columns " id="div-formulario-comprobante">	
	  			<form id="form-contacto" class="">
	  				<h3 class="text-center">COMPROBANTE</h3>
	  				<div class="row">
	  					<div class="small-12 medium-9 medium-centered columns">
	  						<div class="input-group">
	  							<label for="" class="elementosformulario">FECHA DE EXPEDICIÓN:  </label>
	  							<input type="date"  class="elementosformulario"  required="">
	  						</div>
	  						<div class="input-group">
	  							<label for="" class="elementosformulario">CÓDIGO POSTAL: </label>
	  							<input type="text"  class="elementosformulario"  required="">
	  						</div>
	  						<div class="input-group">
	  							<label for="" class="elementosformulario">SERIE: </label>
	  							<input type="text" class="elementosformulario"  required="">
	  						</div>
	  						<div class="input-group">
	  							<label for="" class="elementosformulario">FOLIO: </label>
	  							<input type="text" class="elementosformulario"  required="">
	  						</div>
	  						<div class="input-group">
			                  <label for="customDropdown1">MONEDA</label>
			                  <select id="customDropdown1" class="medium elementosformulario">
			                    <option>SELECCIONA UNA MONEDA</option>
			                    <?php 
			                		while($fila=mysqli_fetch_row($queryMoneda)){
			                			echo "<option>".$fila[0]."</option>";

			                		}
			                		?>
			                  </select>
			                </div>
			                <div class="input-group">
			                  <label for="customDropdown1">TIPO DE CAMBIO</label>
			                  <select id="customDropdown1" class="medium elementosformulario">
			                    <option>esto es una prueba</option>
			                  </select>
			                </div>
	  					</div>
	  				</div>
	  				<a href="uno.html" class="button alert">Enviar</a>
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
