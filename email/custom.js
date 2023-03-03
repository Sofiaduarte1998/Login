jQuery("form").submit(function (event) {
  event.preventDefault();

  var dados = jQuery(this).serializeArray();
  $.ajax({
    url: "email.php",
    data: dados,
    type: "POST",
    success: function (data) {
      console.log(data);

      $("#resultado").html("");

      $("form")[0].reset();
    },
    error: function (data) {},
  });
});
