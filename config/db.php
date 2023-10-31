<?php 

  $con = mysqli_connect("localhost","root","","patient_database");

  if(!$con){
    die("Connection Error");

  }

  print("Connected successfully");

?>