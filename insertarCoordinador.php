<?php

require_once 'conexion.php';

$nombres = $_POST['nombres'];
$apellidos = $_POST['apellidos'];
$fechaNac = $_POST['fechaNac'];
$titulo = $_POST['titulo'];
$email = $_POST['email'];
$facultad = $_POST['facultad'];

$q = 'INSERT INTO coordinador(nombres, apellidos, fechaNac, titulo, email, facultad) VALUES ("' . $_POST['nombres'] . '","' . $_POST['apellidos'] . '","' . $_POST['fechaNac'] . '","' . $_POST['titulo'] . '","' . $_POST['email'] . '","' . $_POST['facultad'] . '")';
$query = mysqli_query($con, $q);

if($query == true){
    echo 'Registro guardado correctamente';
}else{
    echo 'Error al guardar';
}