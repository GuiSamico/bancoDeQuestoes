<?php
    require_once '../conexao.php';

    $erros = array();
    $nome = mysqli_escape_string($conn,$_POST['nome-prof']);
    $login = mysqli_escape_string($conn,$_POST['login-prof']);
    $senha = mysqli_escape_string($conn,$_POST['senha-prof']);

    $sql = "INSERT INTO professor (nome, login, senha)";
    $sql.= "values";
    $sql.= "('$nome', '$login', md5('$senha'))";

    mysqli_query($conn,$sql);
        //limpar sessão
    session_unset();
    header('location:../admin.php');
?>
