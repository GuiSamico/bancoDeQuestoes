<?php
    require_once '../conexao.php';

    $erros = array();
    $nome = mysqli_escape_string($conn,$_POST['assunto']);
    $disciplina = mysqli_escape_string($conn,$_POST['disciplina']);

    $sql = "INSERT INTO assunto (nome, disciplina)";
    $sql.= "values";
    $sql.= "('$nome','$disciplina')";

    mysqli_query($conn,$sql);
        //limpar sessão
    session_unset();
    header('location:../professor.php');
?>
