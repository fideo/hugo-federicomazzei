---
author: fideo
date: "2011-10-08T10:08:40Z"
excerpt: ""
id: 670
post_format: []
status: publish
tags: []
title: Clase PHP para conectar con MySQL
type: post
url: /2011/10/clase-php-para-conectar-con-mysql.html
---
#### Crear un archivo que se llame mysql.php

```
<pre class="wp-block-preformatted">< ?php
class MySQL{
private $conexion;
private $total_consultas;
public function MySQL(){
if(!isset($this->conexion)){
$this->conexion = (mysql_connect("Servidor","usuario","password")) or die(mysql_error());
mysql_select_db("nombreBD",$this->conexion) or die(mysql_error());
}
}
public function consulta($consulta){
$this->total_consultas++;
$resultado = mysql_query($consulta,$this->conexion);
if(!$resultado){
echo 'MySQL Error: ' . mysql_error();
exit;
}
return $resultado;
}
public function fetch_array($consulta){
return mysql_fetch_array($consulta);
}
public function num_rows($consulta){
return mysql_num_rows($consulta);
}
public function getTotalConsultas(){
return $this->total_consultas;
}
}
?>
```

#### Acá tenemos un ejemplo de uso

```
<pre class="wp-block-preformatted"> < ?php
include("mysql.php");
$db = new MySQL();
$consulta = $db->consulta("SELECT id FROM mitabla1");
```

```
<pre class="wp-block-preformatted">if($db->num_rows($consulta)>0){
while($resultados = $db->fetch_array($consulta)){
echo "ID: ".$resultados['id']."
";
}
}
?>
```

Enjoy!!!
