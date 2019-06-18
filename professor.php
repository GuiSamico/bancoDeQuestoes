<?php
    require_once 'conexao.php';
    include 'login.php';
    if(!isset($_SESSION['logado'])):
        header('location:index.php');
    endif;
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Banco de Questões - Professor</title>
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
    <script src="jquery/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/prof.css">
    <script src="js/admin.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css?family=Anton|Arvo|Indie+Flower|Lobster|Pacifico|Josefin+Sans&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <nav id="nav">
            <ul>
                <img src="img/favicon.png" id="logo">
                <img src="img/tLogo.png" id="tLogo">


                <div class="pull-right">
                    <a href="logout.php"><img src="img/logout.png" id="login"></a>
                </div>
            </ul>
        </nav>
    </div>

    <div class="cad_assunto" id="assunto">
        <form class="formassunto" method="POST" action="cadastro/cad-assunto.php">
            <div class="title">
                <span>Cadastrar assunto</span>
            </div>
            <div class="form-group">
                <label for="assunto">Assunto</label>
                <input autocomplete="off" type="text" class="form-control" id="assunto" name="assunto">
            </div>
            <div class="form-group">
                <label for="disciplina">Disciplina</label>
                <input autocomplete="off" type="text" class="form-control" id="disciplina" name="disciplina">
            </div>
            <button type="submit" class="btn btn-secondary">Cadastrar</button>
        </form>
        <iframe class="frame_assunto" src="listagem-assunto.php" width="660px" height="400px"></iframe>
    </div>



    <div class="cad_questao" id="questao">
        <form class="formquestao" method="POST" action="cadastro/cad-questao.php">
            <div class="title">
                <span>Cadastrar questões</span>
            </div>
            <div class="form-group">
                <label for="enunciado">Enunciado</label>
                <textarea class="form-control" name="enunciado" id="enunciado" rows="3" cols="80"></textarea>
            </div>
            <div class="form-group">
                <label for="resposta">Resposta</label>
                <textarea class="form-control" name="resposta" id="resposta" rows="2" cols="80"></textarea>
            </div>
            <div class="form-group">
                <label for="alternativa1">Alternativa</label>
                <textarea class="form-control" name="alternativa1" id="alternativa1" rows="2" cols="80"></textarea>
            </div>
            <div class="form-group">
                <label for="alternativa2">Alternativa</label>
                <textarea class="form-control" name="alternativa2" id="alternativa2" rows="2" cols="80"></textarea>
            </div>
            <div class="form-group">
                <label for="alternativa3">Alternativa</label>
                <textarea class="form-control" name="alternativa3" id="alternativa3" rows="2" cols="80"></textarea>
            </div>
            <div class="form-group">
                <label for="disciplina">Disciplina</label>
                <input class="form-control" name="disciplina" id="disciplina">
            </div>
            <button type="submit" class="btn btn-secondary">Cadastrar</button>
        </form>

        <iframe class="frame_questao" src="listagem-questao.php" width="660px" height="400px"></iframe>
    </div>
</body>
</html>
