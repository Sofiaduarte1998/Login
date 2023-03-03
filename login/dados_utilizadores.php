<?php

session_start();


//Função isset:verifica se uma variavel/array está ou nao definida
if (isset($_SESSION['autenticacao'])) {
    //Existe variavel de sessao 
    //echo "Sim, existe variaveis de sessao definida";

    //session_destroy();//pode-se colocar numa pagina de lougout que pode destruir.
}



?>


<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dados do utilizador</title>
</head>

<body>
    <h1>Informação dos utilizadores</h1>
    <?php
    //conectar um uma base de dados um numero escolhido ao acaso 
    include("../base_dados.php");

    $conn = conectar_bd();

    $id = 20;
    $dados = dados_utilizador($conn, $id);
    //Dados do utlizador 

    foreach ($dados as $ddados_utilizador) {

        echo "<p>ID: " . $dados['id'] . "</p>";
        echo "<p>User: " . $dados['utilizador'] . "</p>";
        echo "<p>E-mail: " . $dados['email'] . "</p>";
        echo "<p>Descricao: " . $dados['descricao'] . "</p>";
        echo "<p>Distritos: " . $dados['distritos'] . "</p>"; //erro

        $distritos = obter_nome_distrito($conn, $dado['distritos']); //erro

        echo "<p>Nome do Distrito: " . $distrito['distritos'] . "</p>"; //erro
        echo "<p>Pass MD5: " . $dado['pass'] . "</p>";
        echo "<p>Timestamp: " . $dado['timestamp'] . "</p>";

        echo "<p>Data: " . date("d-m-Y H:i:s", $dado['timestamp']); //erro


        echo "<p>Dia: " . date("d", $dado['timestamp']) . "</p>";
        echo "<p>Mês: " . date("m", $dado['timestamp']) . "</p>";
        echo "<p>Ano: " . date("Y", $dado['timestamp']) . "</p>";

        echo "<p>Hora: " . date("H", $dado['timestamp']) . "</p>";
        echo "<p>Minutos: " . date("i", $dado['timestamp']) . "</p>";
        echo "<p>Segundos: " . date("s", $dado['timestamp']) . "</p>";
    }

    fechar_bd($conn);

    $_SESSION['id_utilizador'] = $dado['id'];

    ?>
    <form method="POST" action="editar_uti.php">
        <input type="submit" value="Atualizar dados">
    </form>


    <form id="filme" method="post" action="./api.php" method="post">
        <label for="filme">Nome do Filme:</label>
        <input type="text" value="">
        <input type="submit" value="OMDB Search">
    </form>
    <?php
    include("../login/api.php");
    ?>



</body>

</html>