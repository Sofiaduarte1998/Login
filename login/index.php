<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Página de autenticação</title>
</head>

<body>
    <form>
        <h1>Login</h1>
        <p>
            <label>Utilizador</label>
            <input type="text" name="utilizador">
        </p>

        <p>
            <label>Password</label>
            <input type="password" name="password">
        </p>

        <input type="submit" value="Autenticar">

    </form>

    <p id="resultado_de_autenticacao"></p>

    <script src="https://code.jquery.com/jquery-3.6.3.js"
        integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>

    <script src="js/custom.js"></script>

</body>

</html>