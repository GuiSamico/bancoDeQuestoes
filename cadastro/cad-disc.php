<?php
    require_once '../conexao.php';

    $erros = array();
    $nome = mysqli_escape_string($conn,$_POST['nome-disc']);

    $sql = "INSERT INTO disciplina (nome)";
    $sql.= "values";
    $sql.= "('$nome')";

    mysqli_query($conn,$sql);
        //limpar sessão
    session_unset();
    header('location:../admin.php');
?>
