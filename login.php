<?php
    require_once 'conexao.php';
    session_start();
    //admin
    if(isset($_POST['login_admin'])):
        $erros = array();
        $login = mysqli_real_escape_string($conn,$_POST['login-admin']);
        $senha = mysqli_real_escape_string($conn,$_POST['senha-admin']);

        $query = "SELECT login FROM admin WHERE login = '{$login}' and senha = md5('{$senha}')";
        $result = mysqli_query($conn, $query);
        $row = mysqli_num_rows($result);

        if($row == 1){
            $_SESSION['logado'] = true;
            $_SESSION['login'] = $login;
            header('location:admin.php');
            exit();
        }else{
            $_SESSION['nao_autenticado'] = true;
            header('location:index.php');
            exit();
        }
    endif;

    //secretaria
    if(isset($_POST['login_prof'])):
        $erros = array();
        $login = mysqli_real_escape_string($conn,$_POST['login-prof']);
        $senha = mysqli_real_escape_string($conn,$_POST['senha-prof']);

        $query = "SELECT login FROM professor WHERE login = '{$login}' and senha = md5('{$senha}')";
        $result = mysqli_query($conn, $query);
        $row = mysqli_num_rows($result);

        if($row == 1){
            $_SESSION['logado'] = true;
            $_SESSION['login'] = $login;
            header('location:professor.php');
            exit();
        }else{
            $_SESSION['nao_autenticado'] = true;
            header('location:index.php');
            exit();
        }
    endif;


?>
