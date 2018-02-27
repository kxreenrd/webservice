<?php

//$_POST['valor1'];


$val1=$_POST['num1'];
$val2=$_POST['num2'];
$op=$val1+$val2;


$wsdl ='http://localhost:8080/iva/calculoIva?WSDL';

$params=array(
	'calculo'=>$op
);


$soap = new SoapClient($wsdl);
$data =$soap->calculo($params);


echo "SUMA:".$op." TOTAL: ".$data->return;

?>
