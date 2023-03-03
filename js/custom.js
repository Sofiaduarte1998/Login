//Envio de Formulário
jQuery("form").submit(function (event) {
  event.preventDefault();

  var dados = jQuery(this).serializeArray();
  //console.log(dados);
  /* Obter valor de um campo específico do formulário
		var campo01 = $('#campo01').val();
		alert(campo01);*/

  $.ajax({
    url: "ficheiro.php",
    data: dados,
    type: "POST",
    success: function (data) {
      console.log(data);

      //window.setInterval(function () {
      ///  window.location.href = "dados_utilizador.php";
      //}, 5000);
      //console.log(data);
      $("#resultado").html("<p>Formulário enviado com sucesso</p>");
      $("form")[0].reset();
    },
    error: function (data) {
      //caso a excusão do ajax deu erro
    },
  });
});
/*

if (data == 1) {
        $("#resultado_De_autenticacao").html(
          "As credenciais introduzidas são validas.Aguarde..."
        );
        $("form")[0].reset();
      } else {
        $("#resultado_De_autenticacao").html(
          "As credenciais introduzidas são validas.Aguarde..."
        );
      }



*/
