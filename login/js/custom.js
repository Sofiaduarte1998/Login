jQuery("form#autenticar").submit(function (event) {
  event.preventDefault();

  var dados = jQuery(this).serializeArray();

  $.ajax({
    url: "autenticar.php",
    data: dados,
    type: "POST",
    success: function (data) {
      if (data == 1) {
        //Provocar um atraso de x miléssimo de segundos a excutar o que está dentro desta função
        window.setTimeout(function () {
          window.location.href = "dados_utilizadores.php";
        }, 5000); //5 segundos

        $("#resultado").html(
          "As credencias introduzidas são validas, Aguarde..."
        );

        //Desativar o botão
        //$("#botao_autenticar")[0].disabled = true;
        //$("form")[0].reset();
      } else {
        $("#resultado_de_autenticacao").html(
          "As credenciais introduzidas são invalidas"
        );
      }
    },
    error: function (data) {},
  });
});

jQuery("form#autenticar").submit(function (event) {
  event.preventDefault();

  var dados = jQuery(this).serializeArray();

  $.ajax({
    url: "autenticar.php",
    data: dados,
    type: "POST",
    success: function (data) {
      console.log(data);
      if (data == 1) {
        //Provocar um atraso de x miléssimo de segundos a excutar o que está dentro desta função
        window.setTimeout(function () {
          window.location.href = "dados_utilizadores.php";
        }, 5000); //5 segundos

        $("#resultado").html(
          "As credencias introduzidas são validas, Aguarde..."
        );

        //Desativar o botão
        //$("#botao_autenticar")[0].disabled = true;
        //$("form")[0].reset();
      } else {
        $("#resultado_de_autenticacao").html(
          "As credenciais introduzidas são invalidas"
        );
      }
    },
    error: function (data) {},
  });
});
jQuery("#filme").submit(function (event) {
  event.preventDefault();

  var dados = jQuery(this).serializeArray();

  $.ajax({
    url: "api.php",
    data: dados,
    type: "POST",
    success: function (data) {
      console.log(data);
      if (data == 1) {
        //Provocar um atraso de x miléssimo de segundos a excutar o que está dentro desta função
        window.setTimeout(function () {
          window.location.href = "dados_utilizadores.php";
        }, 5000); //5 segundos

        $("#resultado").html(
          "As credencias introduzidas são validas, Aguarde..."
        );

        //Desativar o botão
        //$("#botao_autenticar")[0].disabled = true;
        //$("form")[0].reset();
      } else {
        $("#resultado_de_autenticacao").html(
          "As credenciais introduzidas são invalidas"
        );
      }
    },
    error: function (data) {},
  });
});
