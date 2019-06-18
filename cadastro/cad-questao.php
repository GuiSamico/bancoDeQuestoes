<?php
    require_once '../conexao.php';

    $erros = array();
    $enunciado = mysqli_escape_string($conn,$_POST['enunciado']);
    $resposta = mysqli_escape_string($conn,$_POST['resposta']);
    $alt1 = mysqli_escape_string($conn,$_POST['alternativa1']);
    $alt2 = mysqli_escape_string($conn,$_POST['alternativa2']);
    $alt3 = mysqli_escape_string($conn,$_POST['alternativa3']);
    $disciplina = mysqli_escape_string($conn,$_POST['disciplina']);

    $sql = "INSERT INTO questoes (enunciado, resposta, alt1, alt2, alt3, disciplina)";
    $sql.= "values";
    $sql.= "('$enunciado','$resposta','$alt1','$alt2','$alt3','$disciplina')";

    mysqli_query($conn,$sql);
        //limpar sessão
    session_unset();
    header('location:../professor.php');
?>
