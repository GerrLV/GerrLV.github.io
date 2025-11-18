<?php

  $servidor = "localhost";
  $user = "root";
  $pass = "";
  $bd = "asistencias";

  $conesion = mysqli_connect ($servidor, $user, $pass, $bd);

?>

<! DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Formularioxd</title>
    </head>
    <body>

         <form action="#" name="asistencias" method= "post">
            
         <input type="text" name="Alumno" placeholder="Alumno">
         <input type="text" name="Matricula" placeholder="Matricula">
         

         <input type="submit" name="Registro">
         <input type="reset">

         </form>

</body>

<?php

  if(isset($_POST['Registro'])){
    $Alumno= $_POST ['Alumno'];
    $Matricula= $_POST ['Matricula'];
    $FechayHora= $_POST ['fecha_y_hora'];
    
    $insdatos = "INSERT INTO asistencias VALUES('$Alumno', '$Matricula', '')";

    $ejecutarinser = mysqli_query ($conesion, $insdatos);
      
  }

?>
