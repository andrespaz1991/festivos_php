<?php
#$fecha_hoy = date('Y-m-d');
#$fecha_limite=date("2016-11-30");
#list($contador)=ObtenerDiasrestantes($fecha_hoy,$fecha_limite);

$FechaInicial=date("2016-11-29");
$fecha_limite=date("2017-01-06");
list($contador)=ObtenerDiasrestantes($FechaInicial,$fecha_limite); 
echo 'Fecha Inicial '.$FechaInicial.'<br>';
echo 'Fecha Final '.$FechaInicial
echo 'días '.$contador.'<br>';
//Determina catidad de días que faltan para la fecha limite a partir de hoy
function ObtenerDiasrestantes($FechaInicial,$fecha_limite) {
  #echo $fecha_limite;
if ($fecha_limite<=$FechaInicial){
       $contador=0;
         return array ($contador);

}
require 'conexion.php';
$DíasFestivos  = array();
$sql='select * from  festivos_estandar';
$consulta =$mysqli->query($sql);
$i=0;
while ($row=$consulta->fetch_assoc()){
  $i++;
  $DíasFestivos[$i]=$row['festivo_estandar'];
}
#festivos privados
require 'conexion.php';
$DíasFestivos_privados  = array();
$sql2='select * from   festivos_privado';
$consulta2 =$mysqli->query($sql2);
$i2=0;
while ($row2=$consulta2->fetch_assoc()){
  $i2++;
  $DíasFestivos_privados[$i2]=$row2['festivos_privado'];
}

#fin festivos privados
    $FinDeSemana   = array("Sun","Sat");
    $contador=0;
    while ($FechaInicial <= $fecha_limite) {
     $FechaInicial2  = new DateTime($FechaInicial);
    if (in_array($FechaInicial2->format("m-d"), $DíasFestivos))  
                        {
          # $colores= 'día festivo'.$FechaInicial2->format("m-d-Y").'<br/>';
                        }
                        else{
    if (in_array($FechaInicial2->format("D"), $FinDeSemana))  {
# echo $colorws= 'día fin de semana'.$FechaInicial2->format("m-d").'<br/>';
    } else{
    if (in_array($FechaInicial2->format("Y-m-d"), $DíasFestivos_privados))  {
#echo $colorwsr= 'evento privado'.$FechaInicial2->format("Y-m-d").'<br/>';

}
else{
        #   $color= 'día laboral '.$FechaInicial2->format("m-d").'<br/>';
       $contador =$contador+1;
     }       }
                        }


 $FechaInicial=date('Y-m-d', strtotime('+1 day', strtotime($FechaInicial)));
}
return array ($contador-1);// en caso de que cuente  hoy como día entonces quitar -1
}
 
 
?>

