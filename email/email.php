<?php

if (!empty($_POST)) {
    $dados = $_POST;
    $email = $dados['email'];
    $password = md5($dados['password']);
    include("../base_dados.php");

    $conn = conectar_bd();
    consultar_autenticar($conn, $email, $password);
    fechar_bd($conn);
}
