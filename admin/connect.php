<?php
$username = "root";
$password = "";
$hostname = "localhost"; 

$connect = mysql_connect($hostname, $username, $password) 
or die("Unable to connect to webdevserver");
//if($connect){echo "Connection successful to webdevserver";}


$selected = mysql_select_db("hostel", $connect) 
  or die("Could not upload file");
//if($selected){ echo "<br/>Connected to database uploadfile successful<br/><br/><br/>";}

?>