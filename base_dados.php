<?php
//----1.Ligação com a base de dados----
function conectar_bd()
{

    $servername = "localhost";

    $username = "root";

    $password = "";


    $database = "sofia"; //nome da bd

    $conn = new mysqli($servername, $username, $password, $database);



    if ($conn->connect_error) { //ligação à bd

        die("A conexão à BD falhou: " . $conn->connect_error);
    } else {

        //echo "A ligação foi bem sucedida.";

    }
    return $conn;
}


//-----2.FUNÇÃO PARA INSERIR REGISTOS NA BD-----
function inserir_registo($conn, $campo01, $email, $password, $timestamp, $distritos)
{
    $sql = "SELECT * FROM  `teste` WHERE `email`LIKE '$email' LIMIT 1;";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_num_rows($result);


    //$fiche = fopen("xtop.txt", "w");
    //fwrite($fiche, $sql);
    //fclose($fiche);
    if ($row) {
        // echo "Utilizador válido;";

        echo 0;
    } else {
        $sql = "INSERT INTO `teste` (`email`, `pass`, `utilizador`, `timestamp`,`distrito_id`) 
     VALUES ('$email','$password','$campo01','$timestamp','$distritos');";
        $result = mysqli_query($conn, $sql);
        echo 1; // "Crendenciais de autentticação invalidas";
    }

    //INSERT INTO `teste` (`id`, `email`, `pass`, `utilizador`, `timestamp`, `distritos`) VALUES (NULL, 'sssddd@hotmail.com', '12345', 'sssdddd', NOW(), '');
    echo "O nr de registo (id) deste formulário é: " . $conn->insert_id;
}




//----3.Função para validar a autenticação---

function consultar_autenticar($conn, $campo01, $password)
{
    $sql = "SELECT * FROM  `teste` WHERE `utilizador`LIKE '$campo01' AND `pass` LIKE '$password';";

    $result = mysqli_query($conn, $sql);

    $num_row = mysqli_num_rows($result);
    if ($num_row) {
        // echo "Utilizador válido;";

        session_start();

        $row = mysqli_fetch_array($result);

        $_SESSION['autenticacao'] = 1;
        $_SESSION['user_id'] = $row['id'];

        echo 1; // "Crendenciais de autentticação validas";

    } else {
        echo 0; // "Crendenciais de autentticação invalidas";
    }
}

//---4.Função para os dados distritos----
function distritos($conn)
{

    $sql = "SELECT * FROM `distritos`;";

    $result = mysqli_query($conn, $sql);

    //Retonrar o resultado da consulta
    return $result;
}

//------5.Nova função Consultar todos os dados da tabela distritos ----
function obter_nome_distrito($conn, $id)
{
    $sql = "SELECT * FROM `distritos` WHERE `id` = '$id';";

    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result);

    //Retonrar o resultado da consulta
    return $row;
    //$sql = "SELECT * FROM `distritos` WHERE `id` = '$id_distritos';";

}

//---6.Função distritos
function dados_utilizador($conn, $id) //consulta_de_dados
{

    $sql = "SELECT * FROM `teste` WHERE `id` = '$id';";

    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result);

    return $row;
}
//---Função para os dados utilizadores retornando diversas linhas só atraves do foreach é que dá 

//UPDATE `distritos` SET `id` = '1' WHERE `distritos`.`id` = 0;


//---7.Função para os dados utilizadores duplicação-retornar apenas uma linha 
function dados_utilizador_c_registo_unico($conn, $id)
{

    $sql = "SELECT * FROM `teste` WHERE `id` = '$id'";

    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result);

    return $row;
}



//---8.Função para atualizar dados na BD    
function alterar_dados($conn, $campo01, $mail, $id_distrito, $timestamp, $id_utilizador)
{

    $sql = "UPDATE `teste` SET `utilizador` = '$campo01', `email` = '$mail', `distrito_id` = '$id_distrito', `timestamp` = '$timestamp' WHERE `id` = '$id_utilizador';";

    $result = mysqli_query($conn, $sql);

    return $result;
}


function fechar_bd($conn)
{

    mysqli_close($conn);
}


//INSERT INTO `teste` (`id`, `email`, `descricao`, `pass`, `utilizador`, `timestamp`) VALUES (NULL, 'sofiadua@hotmail.com', '', 'nnnn', '', NOW());


//Função para validar o email
/*
function email($conn, $email, $password)
{
    $sql = "SELECT * FROM  `teste` WHERE `email`= '$email' LIMIT 1;";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_num_rows($result);
    if ($row) {
        echo "Utilizador válido;";
    } else {
        echo "Utilizador invalido";
    }
}*/