<?php
    require_once 'conexao.php';
    include 'login.php';
    if(!isset($_SESSION['logado'])):
        header('location:index.php');
    endif;
    $sql = "SELECT * FROM questoes where id = 1";
    $resultado = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($resultado);
    $enunciado = $row['enunciado'];

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Banco de Questões - Prova</title>
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
    <script src="jquery/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/admin.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css?family=Anton|Arvo|Indie+Flower|Lobster|Pacifico|Josefin+Sans&display=swap" rel="stylesheet">
</head>
<body>
    <div class="header" style="position:relative;top:30px;left:200px;width:900px;">
        <img src="img/favicon.png" style="width:50px;">
            Nome:_________________________________________________<br><br>
            Professor:__________________________________________________<br><br>
            Data:____/____/________ Série:_________________ Turma:________________
    </div>
</body>
</html>
