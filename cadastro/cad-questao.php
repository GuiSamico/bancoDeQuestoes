<?php
    require_once '../conexao.php';

    $erros = array();
    $enunciado = mysqli_escape_string($conn,$_POST['enunciado']);
    $resposta = mysqli_escape_string($conn,$_POST['resposta']);
    $disciplina = mysqli_escape_string($conn,$_POST['disc']);
    $assunto = mysqli_escape_string($conn,$_POST['assun']);

    $sql = "INSERT INTO questoes (questao, resposta, disciplina, assunto)";
    $sql.= "values";
    $sql.= "('$enunciado','$resposta','$disciplina','$assunto')";

    mysqli_query($conn,$sql);
        //limpar sessão
    session_unset();
    header('location:../professor.php');
?>
