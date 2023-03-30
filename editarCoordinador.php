<?php

require_once 'conexion.php';

$id_coordinador = $_POST['idCoordinador'];
$nombres = $_POST['nombres'];
$apellidos = $_POST['apellidos'];
$fechaNac = $_POST['fechaNac'];
$titulo = $_POST['titulo'];
$email = $_POST['email'];
$facultad = $_POST['facultad'];

$q = "UPDATE coordinador SET nombres = '$nombres', apellidos = '$apellidos', fechaNac = '$fechaNac', titulo = '$titulo', email = '$email', facultad = '$facultad' WHERE idC=$id_coordinador";
$query = mysqli_query($con, $q);

if($query == true){
    echo 'Libro actualizado correctamente';
}else{
    echo 'Error al actualizar';
}