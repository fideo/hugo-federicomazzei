---
author: fideo
date: "2008-05-21T16:10:11Z"
excerpt: ""
id: 137
post_format: []
status: publish
tags: []
title: Averiguar la edad con PHP
type: post
url: /2008/05/averiguar-la-edad-con-php.html
---
Supongamos que uno quiere publicar la edad de nuestros clientes y el dato que tenemos es la fecha de nacimiento, esta función que esta acá debajo es muy útil.

*Enjoy!!!*

&lt;?  
function Edad($dob){  
// El formato es dd/mm/yy  
list($d,$m,$y)=explode(“/”,$dob);  
//si el formato de la fecha lo tienen como 12-05-2008 reemplacen “/” por “-”  
$hoy=mktime(0,0,0,date(“d”),date(“m”),date(“Y”));  
$cumple=mktime(0,0,0,”$d”,”$m”,”$y”);  
$age=intval(($hoy-$cumple)/(60\*60\*24\*365));  
return $age;  
}  
echo Edad(“02/12/73”); //edad del cliente  
?&gt;

Otra manera de averiguar la edad.

&lt;?  
//fecha actual  
$dia=date(j);  
$mes=date(n);  
$ano=date(Y);

//fecha de nacimiento  
$dianaz=2;  
$mesnaz=6;  
$anonaz=1983;

//si el mes es el mismo pero el dia inferior aun no ha cumplido años, le quitaremos un año al actual  
if (($mesnaz == $mes) &amp;&amp; ($dianaz &gt; $dia)) {  
$ano=($ano-1); }

//si el mes es superior al actual tampoco abra cumplido años, por eso le quitamos un año al actual  
if ($mesnaz &gt; $mes) {  
$ano=($ano-1);}

//ya no habria mas condiciones, ahora simplemente restamos los años y mostramos el resultado como su edad  
$edad=($ano-$anonaz);  
print $edad;  
?&gt;
