      
                 function validarFormulario(){
    var txtRetiro = document.getElementById('retiro').value;
    if(txtRetiro == null || txtRetiro.length == 0){
        document.getElementById("retiro").focus();
                alertify.alert("Advertencia!","Fecha de Retiro no Válida"); 
      return false;
    }
                 }


