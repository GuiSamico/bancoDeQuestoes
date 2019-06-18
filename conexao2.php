<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "marwin";


$conn = mysqli_connect($servername, $username, $password, $dbname);
    //testar conexao
    if(mysqli_connect_error()):
        echo "Falha na conexão: " .mysqli_connect_error();
    else:
    //echo "Conexão com sucesso";
    endif;


?>
