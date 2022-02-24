<?php
include_once 'conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();

$nombres      = (isset($_POST['nombres']))      ? $_POST['nombres']      : '';
$apellidos    = (isset($_POST['apellidos']))    ? $_POST['apellidos']    : '';
$pais         = (isset($_POST['pais']))         ? $_POST['pais']         : '';
$tp_documento = (isset($_POST['tp_documento'])) ? $_POST['tp_documento'] : '';
$n_documento  = (isset($_POST['documento']))    ? $_POST['documento']    : '';
$genero       = (isset($_POST['genero']))       ? $_POST['genero']       : '';
$estado       = (isset($_POST['estado']))       ? $_POST['estado']       : '';
$fecha        = date('y/m/d h:m:s');


$opcion  = (isset($_POST['opcion']))  ? $_POST['opcion']  : '';
$id      = (isset($_POST['id'])) ? $_POST['id'] : '';


switch($opcion){
    case 1:
        $consulta = "INSERT INTO usuario (nombres, apellidos, pais, tp_documento, documento, genero, estado) 
                        VALUES('$nombres', '$apellidos', '$pais', '$tp_documento', '$n_documento', '$genero', '$estado') ";			
        $resultado = $conexion->prepare($consulta);
        $resultado->execute(); 
        
        $consulta = "SELECT * FROM usuario ORDER BY id DESC LIMIT 1";
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);       
        break;    
    case 2:        
        $consulta = "UPDATE usuario 
                        SET nombres='$nombres', apellidos='$apellidos', pais='$pais', tp_documento='$tp_documento', documento='$n_documento', genero='$genero', estado='$estado', fecha='$fecha' 
                        WHERE id='$id' ";		
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();        
        
        $consulta = "SELECT * FROM usuario WHERE id ='$id' ";       
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);
        break;
    case 3:        
        $consulta = "DELETE FROM usuario WHERE id ='$id' ";		
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();                           
        break;
    case 4: 
        //Este si funciona me trae la tabla sin las relaciones obiamente
        //$consulta = "SELECT * FROM usuario ";
        //$resultado = $conexion->prepare($consulta);
        //$resultado->execute();        
        //$data=$resultado->fetchAll(PDO::FETCH_ASSOC);

        //Este inner join no me muestra la tabla en la vista de la tabla
        //Pero en mysql si me mustra la tabla
        $consulta = "SELECT us.ID,
                        us.NOMBRES,
                        us.APELLIDOS,
                        pa.ISO,
                        tp.ISO,
                        us.DOCUMENTO,
                        ge.ISO,
                        es.NOMBRE,
                        us.FECHA
                    FROM usuario us 
                    INNER JOIN paises pa ON us.PAIS = pa.ID
                    INNER JOIN tp_documentos tp ON us.TP_DOCUMENTO = tp.ID
                    INNER JOIN genero ge ON us.GENERO = ge.ID
                    INNER JOIN estado es ON us.ESTADO = es.ID ;";
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();        
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);
        break;
}

print json_encode($data, JSON_UNESCAPED_UNICODE);//envio el array final el formato json a AJAX
$conexion=null;