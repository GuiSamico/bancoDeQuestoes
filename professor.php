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
                <input required autocomplete="off" type="text" class="form-control" id="assunto" name="assunto">
            </div>
            <div class="form-group">
                <label for="disciplina">Disciplina</label>
                <input required autocomplete="off" type="text" class="form-control" id="disciplina" name="disciplina">
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
                <label for="enunciado">Enunciado (com os itens)</label>
                <textarea required class="form-control" name="enunciado" id="enunciado" rows="3" cols="80"></textarea>
            </div>
            <div class="form-group">
                <label for="resposta">Resposta</label>
                <textarea required class="form-control" name="resposta" id="resposta" rows="2" cols="80"></textarea>
            </div>
            <div class="form-group">
                <label for="disc">Disciplina</label>
                <select required class="disc" name="disc">
                    <?php
                        $sql = "SELECT * FROM disciplina";
                        $resultado = mysqli_query($conn, $sql);
                        while($row = mysqli_fetch_array($resultado)):
                    ?>
                    <option value="<?php echo $row['nome']; ?>"><?php echo $row['nome']; ?></option>
                    <?php
                        endwhile;
                    ?>
                </select>
            </div>
            <div class="form-group">
                <label for="assun">Assunto</label>
                <select required class="assun" name="assun">
                    <?php
                        $sql1 = "SELECT * FROM assunto";
                        $resultado1 = mysqli_query($conn, $sql1);
                        while($row1 = mysqli_fetch_array($resultado1)):
                    ?>
                    <option value="<?php echo $row1['nome']; ?>"><?php echo $row1['nome']; ?></option>
                    <?php
                        endwhile;
                    ?>
                </select>
            </div>
            <button type="submit" class="btn btn-secondary">Cadastrar</button>
        </form>

        <iframe class="frame_questao" src="listagem-questao.php" width="660px" height="400px"></iframe>
    </div>


    <span id="p">Provas</span>
    <div class="cards">
        <a href="provaMat.php" id="c1" target="_blank">
        <div class="card mb-3" style="max-width: 310px; max-height:103px">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="img/cardMat.jpg" class="card-img" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">Matemática</h5>
                        <p class="card-text">Provas de matemática.</p>
                        <p class="card-text"><small class="text-muted"></small></p>
                    </div>
                </div>
            </div>
        </div>
        </a>

        <a href="provaLing.php" id="c2" target="_blank">
        <div class="card mb-3" style="max-width: 310px; max-height:103px">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="img/cardLing.jpg" class="card-img" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">Linguagens</h5>
                        <p class="card-text">Provas de português e literatura.</p>
                        <p class="card-text"><small class="text-muted"></small></p>
                    </div>
                </div>
            </div>
        </div>
        </a>

        <a href="provaHum.php" id="c3" target="_blank">
        <div class="card mb-3" style="max-width: 310px; max-height:103px">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="img/cardHum.jpg" class="card-img" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">C. Humanas</h5>
                        <p class="card-text">Provas de história, geografia.</p>
                        <p class="card-text"><small class="text-muted"></small></p>
                    </div>
                </div>
            </div>
        </div>
        </a>

        <a href="provaNat.php" id="c4" target="_blank">
        <div class="card mb-3" style="max-width: 310px; max-height:103px">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="img/cardNat.png" class="card-img" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">C. da Natureza</h5>
                        <p class="card-text">Provas de biologia, física e química.</p>
                        <p class="card-text"><small class="text-muted"></small></p>
                    </div>
                </div>
            </div>
        </div>
        </a>

    </div>
</body>
</html>
