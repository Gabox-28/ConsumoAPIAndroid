<?php

require_once 'conexion.php';

$id_cordinador = $_GET['idCoordinador'];

$q = 'DELETE FROM coordinador WHERE idC=' . $id_cordinador;
$query = mysqli_query($con, $q);

if($query == true){
    echo 'Registro eliminado correctamente';
}else{
    echo 'Error al eliminar';
}