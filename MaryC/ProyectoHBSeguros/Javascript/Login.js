function ValidarCamposVacios()
{
    $("#idError").text("");
    if($("#idUsuario").val() === "")
    {
        $("#idError").text("El campo usuario se encuentra vacío.");
        $("#idUsuario").focus();
       return false;
    }
    if($("#contrasenaUsuario").val() === "")
    {
        $("#idError").text("El campo contraseña se encuentra vacío.");
        $("#contrasenaUsuario").focus();
        return false;
    }
    //validar usuario
    //Llamar Api que valida usurio

    ObtenerUsuario($("#idUsuario").val() ,$("#contrasenaUsuario").val())
    
}

function ObtenerUsuario(user, pass)
{
    var url = "https://localhost:7124/api/UsuarioLogin/Obtener/"+user+"/"+pass;
    console.log(url)
  $.ajax({
    type: "GET",
    url: url, 
    dataType: "json",
    success: function(data){
        $.each(data.response,function(key, itemData) {
            localStorage.setItem( key, itemData );
          });  
          $("#idUsuario").text("");
    $("#contrasenaUsuario").text("");

    window.location.href ="../paginas/Principal.html";
    },
    error: function(data) {
      alert('error');
      return false;
    }
  });
}