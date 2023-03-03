<?php

if (!empty($_POST)) {

    $dados = $_POST;

    $campo01 = $dados['utilizador'];

    $email = $dados['email'];

    $password = md5($dados['password']);

    $tempo = time();

    $distritos = $dados['distritos'];

    //CRIA UM FICHEIRO
    $ficheiro = fopen("ficheiro/" . $tempo . "-nome_do_ficheiro.txt", "w");
    fwrite($ficheiro, "Texto escrito manual ou de um string como o campo01 que é " . $campo01 . "\nO campo email é:" . $email);
    fclose($ficheiro);

    include("base_dados.php");


    $conn = conectar_bd();
    //INSERT INTO `teste` (`id`, `email`, `pass`, `utilizador`, `timestamp`, `distritos`) 
    inserir_registo($conn, $email, $password, $campo01,  $tempo, $distritos);

    fechar_bd($conn);
} else {

    echo "Tentativa de acesso indevida.";
}

//INSERT INTO `teste` (`id`, `email`, `descricao`, `pass`, `utilizador`, `timestamp`, `distrito`) 
//VALUES (NULL, 'aaa@ddd', 'aaaa', 'aaa', 'aaa', NOW(), 'Lisboa');