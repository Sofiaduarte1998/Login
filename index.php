<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Formulário com jQuery</title>
</head>

<body>


    <form>

        <p><label>Nome</label>
            <input type="text" name="utilizador" id="campo01">
        </p>

        <p><label>Email</label>
            <input type="text" name="email">
        </p>

        <p><label>Password</label>
            <input type="password" name="password">
        </p>
        <p>
            <label>Distritos</label>
            <?php

            include("base_dados.php");

            $conn = conectar_bd(); //conectaçao com a base de dados

            $distritos = distritos($conn); //conectaçao com a base de dados

            //Para retornar o valor de um array
            //print_r($distritos);
            //var_dump($distritos);

            ?>
            <select name="distritos">
                <?php
                //SELECT * FROM `distritos` WHERE 1
                //Ciclo repetitivo para array's
                foreach ($distritos as $distrito) { ?>
                    <option value="<?php echo $distrito['id'] ?>">
                        <?php echo $distrito['distritos']; ?>
                    </option>
                <?php } ?>

            </select>

        </p>


        <input type="submit" value="Enviar">

    </form>

    <p id="resultado"></p>

    <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>

    <script type="text/javascript" src="js/custom.js"></script>

</body>

</html>