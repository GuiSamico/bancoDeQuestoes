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
    <title>Banco de Questões - Editar Professor</title>
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
    <script src="jquery/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/admin.css">
</head>
<body style="overflow-y:hidden">
    <div class="container">
        <div>
            <a href="admin.php" title="voltar"><img src="img/voltar.png" style="position:absolute;top:10px;left:30px; width:30px;"></a>

            <form class="formprof" method="POST" action="editar-prof.php" style="margin-top:-50px;margin-left:260px;">
                <div class="title">
                    <span>Editar professor</span>
                </div>
                <div class="form-group">
                    <label for="nome">Professor (Qual professor deseja alterar)</label>
                    <select required class="form-control" id="nome-prof" name="nome-prof">
                    <?php
                        $sql = "SELECT * FROM usuarios WHERE situacao = 'prof'";
                        $resultado = mysqli_query($conn, $sql);
                        while($row = mysqli_fetch_array($resultado)):
                    ?>
                        <option value="<?php echo $row['nome'];?>">
                            <?php echo $row['nome'];?>
                        </option>
                    <?php
                        endwhile;
                    ?>
                    </select>
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
        </div>
    </div>
</body>
</html>
