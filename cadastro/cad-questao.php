<?php
    require_once '../conexao.php';

    $erros = array();
    $enunciado = mysqli_escape_string($conn,$_POST['enunciado']);
    $resposta = mysqli_escape_string($conn,$_POST['resposta']);

    $sql = "INSERT INTO questoes (questao, resposta)";
    $sql.= "values";
    $sql.= "('$enunciado','$resposta')";

    mysqli_query($conn,$sql);
        //limpar sessão
    session_unset();
    header('location:../professor.php');
?>
