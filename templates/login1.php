<?php
    $host="NovaTech.mysql.pythonanywhere-services.com";
    $usuario="NovaTech";
    $dbpass="tacosdechile";
    $dbname="NovaTech$default";

    $conn= mysqli_connect($host,$usuario,$dbpass,$dbname);

    if(!$conn){
        die("No hay conexion:".mysqli_connect_error());

    }
    $nombre= $_POST["txtusuario"];
    $pass= $_POST["txtpassword"];

    $query= mysqli_query($conn,"SELECT * FROM datos WHERE usuario = '$nombre' AND password = '$pass'");
    $nr =  mysqli_num_rows($query);

    if($nr == 1)
    {
        header("location:home.html");
        echo "Bienvenido:" .$nombre;
    }
    else if ($nr== 0)
    {
    echo "No ingreso";
    }


?>