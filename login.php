<?php
    require_once 'conexao.php';
    session_start();

    $login = mysqli_real_escape_string($conn,$_POST['login']);
    $senha = mysqli_real_escape_string($conn,$_POST['senha']);
    $situacao = mysqli_real_escape_string($conn,$_POST['situacao']);

    $query = "SELECT * FROM usuarios WHERE login = '{$login}' and senha = md5('{$senha}') and situacao = '{$situacao}'";
    $result = mysqli_query($conn, $query);
    $row = mysqli_num_rows($result);

    if($row == 1){
        $_SESSION['logado'] = true;
        $_SESSION['login'] = $login;
        if ($situacao == "admin") {
            header('location:admin.php');
        }else{
            header('location:professor.php');
        }
    }else{
        header('location:index.php');
    }
?>
