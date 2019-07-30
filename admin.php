<?php
    require_once 'conexao.php';
    session_start();
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
    <title>Banco de Questões - Admin</title>
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
    <script src="jquery/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/admin.js" charset="utf-8"></script>
    <link href="https://fonts.googleapis.com/css?family=Anton|Arvo|Indie+Flower|Lobster|Pacifico|Josefin+Sans&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <nav id="nav">
            <ul>
                <img src="img/favicon.png" id="logo">
                <img src="img/tLogo.png" id="tLogo">


                <!-- <div class="btn-group">
                    <button class="dropdown">Buscar</button>
                    <ul class="dropdown-menu">
                        <li><a href="buscarProf.php">Professores</a></li>
                        <li><a href="buscarDisc.php">Disciplinas</a></li>
                        <li><a href="buscarAssu.php">Assuntos</a></li>
                        <li><a href="buscarQues.php">Questões</a></li>
                        <li><a href="buscarProv.php">Prova</a></li>
                    </ul>
                </div> -->

                <div class="pull-right">
                    <a href="logout.php"><img src="img/logout.png" id="login"></a>
                </div>
            </ul>
        </nav>
    </div>

    <div class="cad_prof" id="prof">
        <form class="formprof" method="POST" action="cadastro/cad-prof.php">
            <div class="title">
                <span>Cadastrar professor</span>
            </div>
            <div class="form-group">
                <label for="nome">Nome</label>
                <input required autocomplete="off" type="text" class="form-control" id="nome-prof" name="nome-prof">
            </div>
            <div class="form-group">
                <label for="login">Login</label>
                <input required autocomplete="off" type="text" class="form-control" id="login-prof" name="login-prof">
            </div>
            <div class="form-group">
                <label for="senha">Senha</label>
                <input required autocomplete="off" type="password" class="form-control" id="senha-prof" name="senha-prof">
            </div>
            <button type="submit" class="btn btn-secondary">Cadastrar</button>
        </form>
        <a href="editar-prof-form.php"><button id="edit_prof" class="btn btn-secondary">Editar dados</button></a>
        <iframe class="frame_prof" src="listagem-prof.php" width="660px" height="400px"></iframe>

    </div>

    <div class="cad_disc" id="disc">
        <form class="formdisc" method="POST" action="cadastro/cad-disc.php">
            <div class="title">
                <span>Cadastrar disciplinas</span>
            </div>
            <div class="form-group">
                <label for="nome">Nome</label>
                <input required autocomplete="off" type="text" class="form-control" id="nome-disc" name="nome-disc">
            </div>
            <button type="submit" class="btn btn-secondary">Cadastrar</button>
        </form>

        <iframe class="frame_disc" src="listagem-disc.php" width="660px" height="400px"></iframe>
        <span style="position:absolute;left:700px;
        margin-top:30px;">Obs: as provas possuem as mesma disciplinas do ENEM, todas estão cadastradas.</span>
    </div>
</body>
</html>
