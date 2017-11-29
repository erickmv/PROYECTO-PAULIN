<?php

include("conexion.php");
$consultaUsoFactura="select descripcion from uso_factura";
$queryUsoFactura = mysqli_query($con, $consultaUsoFactura)or die (mysqli_error($con));
$nFilas= mysqli_num_rows($queryUsoFactura);
?>



<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>RECEPTOR</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" href="style.css" />
    <script src="js/vendor/modernizr.js"></script>
  </head>
  <body>
    <section id="login">
	  	<div class="row">
	  		<div class="small-12 medium-4 medium-push-4 columns " id="div-formulario-receptor">	
	  			<form id="form-contacto" class="">
	  				<h3 class="text-center">RECEPTOR</h3>
	  				<div class="row">
	  					<div class="small-12 medium-9 medium-centered columns">
	  						<div class="input-group">
	  							<label for="" class="elementosformulario">NOMBRE: </label>
	  							<input type="text"  class="elementosformulario"  required="">
	  						</div>
	  						<div class="input-group">
			                  <label for="customDropdown1">PAÍS DE RESIDENCIA: </label>
			                  <select id="customDropdown1" class="medium elementosformulario">
			                    <option></option>
			                  </select>
			                </div>
	  						<div class="input-group">
	  							<label for="" class="elementosformulario">CLAVE DE IDENTIFICACIÓN: </label>
	  							<input type="text"  class="elementosformulario"  required="">
	  						</div>
	  						<div class="input-group">
			                  <label for="customDropdown1">USO DE FACTURA: </label>
			                  <select id="customDropdown1" class="medium elementosformulario">
			                  <option>Elige una opción</option>
			                    <?php 
			                        while($fila=mysqli_fetch_row($queryUsoFactura)){
			                        echo "<option>".$fila[0]."</option>";
			                        }
                    			?>
			                  </select>
			                </div>
			                <div class="input-group">
			                  <label>CLIENTE FRECUENTE: </label> <br>
			                  <label for="checkbox1">
			                  <input type="checkbox" id="checkbox1" >
			                  <span class="custom checkbox"></span> SI
			                  <br>
			                  <input type="checkbox" id="checkbox1" >
			                  <span class="custom checkbox"></span> NO
			                  </label>
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
