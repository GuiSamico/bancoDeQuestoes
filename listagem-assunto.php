<?php
    require_once 'conexao.php';
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="jquery/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="jquery/ajax.js"></script>
    <link rel="stylesheet" href="css/datatable.css">
    <script src="js/datatable.js"></script>
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
    <script>
        $(document).ready( function () {
            $('#tabela').DataTable({
                "language": {
                    "lengthMenu": "Mostrando _MENU_ registros por página",
                    "zeroRecords": "Nada encontrado",
                    "info": "Mostrando página _PAGE_ de _PAGES_",
                    "infoEmpty": "Nenhum registro disponível",
                    "infoFiltered": "(filtrado de _MAX_ registros no total)",
                    "paginate":{
                        "next": "próximo",
                        "previous": "anterior"
                    },
                    "search": "Filtrar"
                }
            });
        });
    </script>
</head>
<body>
<div class="container" style="position:relative;top:30px;">
        <table id="tabela" class="table table-bordered table-hover">
            <thead>
                <tr class="th">
                    <th>Nome</th>
                    <th>Disciplina</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $sql = "SELECT * FROM assunto";
                    $resultado = mysqli_query($conn, $sql);
                    while($row = mysqli_fetch_array($resultado)):
                ?>
                <tr>
                    <td><?php echo utf8_encode($row['nome'])?></td>
                    <td><?php echo utf8_encode($row['disciplina'])?></td>
                </tr>
                <?php
                    endwhile;
                ?>
            </tbody>
        </table>
    </div>
</body>
</html>
</body>
</html>
