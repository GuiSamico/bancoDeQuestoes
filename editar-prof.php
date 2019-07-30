<?php
    require_once 'conexao.php';

    $nome = $_POST['nome-prof'];
    $login = $_POST['login-prof'];
    $senha = $_POST['senha-prof'];

    $sql_query = "UPDATE usuarios SET login = '$login', senha = md5('$senha') WHERE nome = '$nome'";
    mysqli_query($conn, $sql_query);
    echo "<script>
            alert('Professor editado com sucesso');
            window.location.replace('editar-prof-form.php');
        </script>";
?>
