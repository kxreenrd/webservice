<?php

session_start();
include_once('../c_conexion/Conexion.php');

//$archivo =unserialize($_GET['dato']);
$conx= new ConnectionMySQL();
$conx->CreaConexion();

$c =$_REQUEST['correo'];
$p = sha1($_REQUEST['password']);


$sql="SELECT * from usuario, login where login.usuario='$c' and login.password='$p' and usuario.correo=login.usuario;";
$validator=$conx->ExecuteQuery($sql);

if($row=mysqli_fetch_array($validator)){
  $idusuario = $row['idusuario'];
  $_SESSION['id'] = $idusuario;
  //echo $idusuario;
    echo "<script type='text/javascript'>
      window.location='../panel/panel.php';
    </script>";
  } else {
    echo "<script type='text/javascript'>
       alert('El usuario o el pass ingresados no conciden');
         window.location='../login/login.php';
     </script>";
}

$validator=$conx->ExecuteQuery($sql);


/*echo "<script type='text/javascript'>
window.location='../web/../panel/panel.php';
</script>";*/

 ?>
