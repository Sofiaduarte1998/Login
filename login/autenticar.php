<?php

if (!empty($_POST)) {
    $dados = $_POST;

    $campo01 = $dados['utilizador'];

    $password = md5($dados['password']);

    include("../base_dados.php");

    $conn = conectar_bd();

    consultar_autenticar($conn, $campo01, $password);
    fechar_bd($conn);
}
