<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Editar o Utilizador</title>
</head>

<body>

    <?php
    //$variavel_array = array("cabeçalho 1" => "valor 01", "cabeçalho 2" => "valor 02");
    //print_r($variavel_array);
    //echo "<br><br>O valor da key cabecalho01 é de: " . $variavel_de_array['Cabecalho01'] . "<br><br>";


    //conectar um uma base de dados um numero escolhido ao acaso 
    include("../base_dados.php");
    $conn = conectar_bd();

    //$id = 20; //testar na pase de dados o numero 
    $id = $_SESSION['id_utilizador'];
    //echo "variavel de sessão:" . $id;

    $dado = dados_utilizador_c_registo_unico($conn, $id);
    //print_r($dados_utilizador_c_registo_unico);
    //var_dump($dados_utilizador_c_registo_unico);




    ?>
    <form id="atualizar" method="post">

        <p>
            <label>Nome</label>
            <input type="text" name="utilizador" id="campo01" value="<?php echo $dado['utilizador']; ?>">
        </p>

        <p><label>Email</label>
            <input type="text" name="email" value="<?php echo $dado['email']; ?>">
        </p>

        <p><label>Password</label>
            <input type=" password" name="password" value="<?php echo $dado['pass']; ?>">
        </p>
        <p>
            <label>Distritos</label>
            <?php

            //include("base_dados.php");

            $conn = conectar_bd(); //conectaçao com a base de dados


            $distritos = distritos($conn); //conectaçao com a base de dados

            //Para retornar o valor de um array
            //print_r($distritos);
            //var_dump($distritos);
            // echo "ID do distritos:" . $dados_utilizador['distritos'];
            //$nome_do_distrito($conn, $dados_utilizador['distrito'])

            ?>
            <select name="distrito">
                <?php
                //SELECT * FROM `distritos` WHERE 1
                //Ciclo repetitivo para array's
                foreach ($distritos as $distrito) { ?>
                <option value="<?php echo $distritos['id'] ?>" <?php if ($distritos['id'] == $dados_utilizador['distritos']) {
                                                                        echo "selected";
                                                                    } ?>>
                    <?php echo $distrito['distritos']; ?>
                </option>
                <?php } ?>

            </select>

        </p>


        <input type="submit" value="Atualizar">

    </form>

    <p id="resultado"></p>

    <script src="https://code.jquery.com/jquery-3.6.3.js"
        integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>

    <script type="text/javascript" src="js/custom.js"></script>


</body>

</html>