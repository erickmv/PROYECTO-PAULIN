<?php

include("conexion.php");
$consultaRegimenFiscal="select nombre from regimen_fiscal";
$queryRegimenFiscal = mysqli_query($con, $consultaRegimenFiscal)or die (mysqli_error($con));
$nFilas= mysqli_num_rows($queryRegimenFiscal);

?>


<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>EMISOR</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" href="style.css" />
    <script src="js/vendor/modernizr.js"></script>
  </head>
  <body>
    <section id="emisor">
	  	<div class="row">
	  		<div class="small-12 medium-4 medium-push-4 columns " id="div-formulario">
          <form class="custom">	
          <h3 class="text-center">EMISOR</h3>
	  				<div class="row">
	  					<div class="small-12 medium-9 medium-centered columns">
	  						<div class="input-group">
                  <label for="" class="elementosformulario">RFC: </label>
                  <input type="text" name="user" class="elementosformulario"  required="">
                </div>
                <div class="input-group">
                  <label for="customDropdown1">RAZON SOCIAL</label>
                  <select id="customDropdown1" class="medium elementosformulario">
                    <option>Sociedad Colectiva (S.C)</option>
                    <option>Sociedad Comanditaria o En comandita (S en C)</option>
                    <option>Sociedad de Responsabilidad Limitada (S.R.L)</option>
                    <option>Sociedad Anónima (S.A)</option>
                    <option>Sociedad Anónima Cerrada (S.A.C)</option>
                    
                  </select>
                </div>
                <div class="input-group">
                  <label for="customDropdown1">REGIMEN FISCAL</label>
                  <select id="customDropdown1" class="medium elementosformulario">
                    <?php 
                        while($fila=mysqli_fetch_row($queryRegimenFiscal)){
                        echo "<option>".$fila[0]."</option>";
                        }
                    ?>
                  </select>
                </div>
                <div class="input-group">
                  <label>TIPO FACTURA</label> <br>
                  <label for="checkbox1">
                  <input type="checkbox" id="checkbox1" >
                  <span class="custom checkbox"></span> Egreso
                  <br>
                  <input type="checkbox" id="checkbox1" >
                  <span class="custom checkbox"></span> Ingreso
                  </label>
                </div>
                  <a href="#" class="button alert">Enviar</a>
      

	  					</div>
	  				</div>
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
