
window.onload = function(){
     var campo = $('#ingreso').val();
     if((campo=='')){
  var fecha = new Date();
  var mes = fecha.getMonth()+1;
  var dia = fecha.getDate();
  var ano = fecha.getFullYear();
  if(dia<10)
    dia='0'+dia; 
  if(mes<10)
    mes='0'+mes 
  document.getElementById('ingreso').value=ano+"-"+mes+"-"+dia;
}
};
                 function validarFormulario(){
 
    var txtCodigo = document.getElementById('codigo').value;
    var txtNombre = document.getElementById('nombre').value;
    var txtCedula = document.getElementById('cedula').value;
    var txtNacimiento = document.getElementById('nacimiento').value;
    var txtIngreso = document.getElementById('ingreso').value;
    var txtRetiro = document.getElementById('retiro').value;
    if(txtCodigo == null || txtCodigo.length == 0){
        document.getElementById("codigo").focus();
                alertify.alert("Advertencia!","No Puede dejar el Campo Código Vacio");     
      return false;     
    }
    if(txtCedula == null || txtCedula.length == 0 || isNaN(txtCedula)){
        document.getElementById("cedula").focus();
                alertify.alert("Advertencia!","Cedula no Válida, ¡Solo Números!");     
      return false;     
    }
    if(txtNombre == null || txtNombre.length == 0 || /^\s+$/.test(txtNombre)){
        document.getElementById("nombre").focus();
                alertify.alert("Advertencia!","Nombre no Aceptado, ¡Solo Letras!"); 
      return false;
    }
    if(txtNacimiento == null || txtNacimiento.length == 0 ){
        document.getElementById("nacimiento").focus();
                alertify.alert("Advertencia!","Fecha de Nacimiento no Válida"); 
      return false;
    }
    if(txtIngreso == null || txtIngreso.length == 0){
        document.getElementById("ingreso").focus();
                alertify.alert("Advertencia!","Fecha de Ingreso no Válida"); 
      return false;
    }
    if(txtRetiro == null || txtRetiro.length == 0){
        document.getElementById("retiro").focus();
                alertify.alert("Advertencia!","Fecha de Retiro no Válida"); 
      return false;
    }
                 }


