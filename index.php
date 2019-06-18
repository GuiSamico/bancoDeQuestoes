<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Banco de Questões</title>
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
    <script src="jquery/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="jquery/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="js/jquery.cycle2.min.js"></script>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/index.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Anton|Arvo|Indie+Flower|Lobster|Pacifico|Josefin+Sans&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <nav id="nav">
            <ul>
                <img src="img/favicon.png" id="logo">
                <img src="img/tLogo.png" id="tLogo">

                <div class="pull-right">
                    <a href="#"><img src="img/login.png" id="login" data-toggle="modal" data-target="#myModalcad"></a>
                </div>
                <!-- Inicio Modal -->
    			<div class="modal fade" id="myModalcad" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    				<div class="modal-dialog" role="document">
    					<div class="modal-content">
    						<div class="modal-header">
    							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    							<h4 class="modal-title text-center" id="myModalLabel">Login Administrador</h4>
    						</div>
    						<div class="modal-body">
    							<form method="POST" action="login.php">
    								<div class="form-group">
    									<label for="recipient-name" class="control-label">Login:</label>
    									<input name="login-admin" type="text" class="form-control">
    								</div>
    								<div class="form-group">
    									<label for="message-text" class="control-label">Senha</label>
    									<input name="senha-admin" class="form-control" type="password"></input>
    								</div>
    								<div class="modal-footer">
    									<button type="submit" class="btn btn-success" name="login_admin">Acessar admin</button>
    								</div>
    							</form>
    						</div>

                            <div class="modal-header">
    							<button type="button" class="close" data-dismiss="modal"></button>
    							<h4 class="modal-title text-center" id="myModalLabel" style="left:-300px;">Login Professor</h4>
    						</div>
                            <div class="modal-body">
    							<form method="POST" action="login.php">
    								<div class="form-group">
    									<label for="recipient-name" class="control-label">Login:</label>
    									<input name="login-prof" type="text" class="form-control">
    								</div>
    								<div class="form-group">
    									<label for="message-text" class="control-label">Senha</label>
    									<input name="senha-prof" class="form-control" type="password"></input>
    								</div>
    								<div class="modal-footer">
    									<button type="submit" class="btn btn-success" name="login_prof">Acessar professor</button>
    								</div>
    							</form>
    						</div>
    					</div>
    				</div>
    			</div>
    			<!-- Fim Modal -->


                <!-- <a href="login.php"></a> -->
            </ul>
        </nav>
        <div class="cycle-slideshow"
            data-cycle-fx="scrollHorz"
            data-cycle-speed="200"
            >
            <img class="imgCar" src="img/imgCar1.jpg">
            <img class="imgCar" src="img/imgCar2.jpg">
            <img class="imgCar" src="img/imgCar3.jpg">
        </div>

        <div class="mensagem">
            <h1 id="bemvindo">Bem vindo</h1>
            <span id="bemvindo2">ao melhor site de banco de questões.</span>
            <p><span id="bemvindo3">Aqui você encontrará questões variadas, com assuntos e disciplinas diferentes.</span><p>
            <span id="bemvindo4">Faça login, e elabore sua prova!</span>
        </div>

        <div class="cards">
            <span id="p">Provas</span>
            <a href="provaMat.php">
            <div class="card mb-3" style="max-width: 310px; max-height:103px" id="c1">
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

            <a href="provaLing.php">
            <div class="card mb-3" style="max-width: 310px; max-height:103px" id="c2">
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

            <a href="provaHum.php">
            <div class="card mb-3" style="max-width: 310px; max-height:103px" id="c3">
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

            <a href="provaNat.php">
            <div class="card mb-3" style="max-width: 310px; max-height:103px" id="c4">
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

        <div class="footer">

        </div>
    </div>
</body>
</html>
