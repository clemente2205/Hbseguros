
function MenuCotizador()
{
  $("#imagenFondo").css('opacity', '0.1');
    $("#menuCotizador").show();
}
function MenuCatalogos()
{
  $("#imagenFondo").css('opacity', '1');
  $("#menuCotizador").hide();
}
function MenuSeguimiento(){
    $("#menuCotizador").hide();
}
function MenuCartera(){
    $("#menuCotizador").hide();
}
function MenuDasboard(){
    $("#menuCotizador").hide();
}
function MenuSeguimiento(){
    $("#menuCotizador").hide();
}
function MenuPolizas(){
    $("#menuCotizador").hide();
}
function MenuCobranza(){
    $("#menuCotizador").hide();
}
function MenuNotificaciones(){
    $("#menuCotizador").hide();
}
function Salir()
{
  localStorage.clear();
  console.log(localStorage.getItem("nombre"));
  window.location.href ="../paginas/Login.html";
 /* $("#idUsuario").text("");
  $("#contrasenaUsuario").text("");
  $(".principalLogin").css('display','block');  
  $(".principalLogin").css('display','flex');   
  $(".contenedorPrincipal").css('display','none'); 
  */
}
function FormularioAutomoviles()
{
  llenarComboTipoPersona();
  llenarComboTipoGenero(); 
    llenarModeloCombo();
    llenarEdadCombo();
    ocultarTiposCoberturas();
    $("#FomularioVehiculos").show();
    $("#FomularioMotocicletas").hide();
}
function FormularioMotocicletas()
{
    $("#FomularioVehiculos").hide();
    $("#FomularioMotocicletas").show();
}

$(document).ready(function () {
  $("#navMenuVehiculos").click(function () {
    $(".navM").addClass("smallM");
    if (!$(".nav").hasClass("small")) {
      $(".nav").addClass("small");
    } else {
      $(".nav").removeClass("small");
    }
  });
  $("#navMenuSafeTrans").click(function () {
    ocultarBotonesMenu();
  });
  $("#navMenuViajes").click(function () {
    ocultarBotonesMenu();
  });
  $("#navMenuMaquinaria").click(function () {
    ocultarBotonesMenu();
  });
  $("#navMenuAsi").click(function () {
    ocultarBotonesMenu();
  });
  $("#navMenuGastosMedicos").click(function () {
    $(".nav").addClass("small");
    if (!$(".navM").hasClass("smallM")) {
      $(".navM").addClass("smallM");
    } else {
      $(".navM").removeClass("smallM");
    }
  });
  $("#navMenuSlip").click(function () {
    ocultarBotonesMenu();
  });

  function ocultarBotonesMenu() {
    $(".nav").addClass("small");
    $(".navM").addClass("smallM");
  }
});

function llenarComboTipoPersona()
{
  $.ajax({
    type: "GET",
    url: 'https://localhost:7124/TipoPersonas', 
    dataType: "json",
    success: function(data){
      $.each(data.response,function(key, registro) {
        console.log(registro);
        $("#tipoPersona").append('<option value='+registro.idTipoPersona+'>'+registro.tipoPersona+'</option>');
      });   
      $("#tipoPersona").selectpicker('refresh');     
    },
    error: function(data) {
      alert('error');
    }
  });
}


function llenarComboTipoGenero()
{
  $.ajax({
    type: "GET",
    url: 'https://localhost:7124/TipoGenero', 
    dataType: "json",
    success: function(data){
      $.each(data.response,function(key, registro) {
        console.log(registro);
        $("#sexo").append('<option value='+registro.idTipoGenero+'>'+registro.tipoGenero+'</option>');
      });   
      $("#sexo").selectpicker('refresh');     
    },
    error: function(data) {
      alert('error');
    }
  });
}
function llenarModeloCombo()
{
    var n = (new Date()).getFullYear()
    for(var i = n; i >=1900;i--){
    $("#modeloAnoAuto").append($("<option>", {
          value: i,
          text: i
        }));
    }
    $("#modeloAnoAuto").selectpicker('refresh');
}

function llenarEdadCombo()
{
    for(var j = 18; j <=75;j++){

        $("#edadAsegurado").append($("<option>", {
            value: j,
            text: j
            }));
    }
    $("#edadAsegurado").selectpicker('refresh');
}

$('#codigoPostal').on('input', function () { 
    this.value = this.value.replace(/[^0-9]/g,'');
});

function ocultarTiposCoberturas()
{
  $("#divDeducibleDanosMateriales").hide();
  $("#divDeducibleRoboTotal").hide();
  $("#divGastosmedicosocupantes").hide();
  $("#divResponsabilidadcivildanosterceros").hide();
  $("#divAutoAgencia").hide();
  $("#divAutoSustituto").hide();
  $("#divEliminacionDeduciblePerdidaTotalRobo").hide();
  $("#divEliminacionDeduciblePerdidaTotalDanos").hide();
  $("#DivRinesLLantas").hide();
  $("#divAccidentesAutomovilisticosConductor").hide();
  $("#divEquipoEspecial").hide();
  $("#divRoboParcial").hide();
  $("#divResponsabilidadCivilCompPersonas").hide();
  $("#divExtensionRC").hide();
  $("#divCADE").hide();
}

$(document).on('change', '#tipoCobertura', function(event) {

  var tipoCobertura = $("#tipoCobertura option:selected").val();
  
  //Cobertura Ampliada
  if (tipoCobertura == 1)
  {
    ocultarTiposCoberturas();
    $("#divDeducibleDanosMateriales").show();
    $("#divDeducibleRoboTotal").show();
    $("#divGastosmedicosocupantes").show();
    $("#divResponsabilidadcivildanosterceros").show();
    $("#divAutoAgencia").show();
    $("#divAutoSustituto").show();
    $("#divEliminacionDeduciblePerdidaTotalRobo").show();
    $("#divEliminacionDeduciblePerdidaTotalDanos").show();
    $("#DivRinesLLantas").show();
    $("#divAccidentesAutomovilisticosConductor").show();
    $("#divEquipoEspecial").show();
    $("#divRoboParcial").show();
    $("#divResponsabilidadCivilCompPersonas").show();
    $("#divExtensionRC").show();
    $("#divCADE").show();

  }
  //Cobertura limitada
  else if(tipoCobertura == 2)
  {
    ocultarTiposCoberturas();
    $("#divDeducibleRoboTotal").show();
    $("#divGastosmedicosocupantes").show();
    $("#divResponsabilidadcivildanosterceros").show();
    $("#divAutoSustituto").show();
    $("#divEliminacionDeduciblePerdidaTotalRobo").show();
    $("#divAccidentesAutomovilisticosConductor").show();
    $("#divEquipoEspecial").show();
    $("#divRoboParcial").show();
    $("#divResponsabilidadCivilCompPersonas").show();
    $("#divExtensionRC").show();
  }
  else
  {
    ocultarTiposCoberturas();
  $("#divGastosmedicosocupantes").show();
  $("#divResponsabilidadcivildanosterceros").show();
  $("#divAccidentesAutomovilisticosConductor").show();
  $("#divResponsabilidadCivilCompPersonas").show();
  $("#divExtensionRC").show();
}
  
});