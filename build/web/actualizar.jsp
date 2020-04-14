<%-- 
    Document   : registrar
    Created on : 14/04/2020, 06:53:50 AM
    Author     : NELSON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery-1.12.0.js"></script> 
        <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
        <title>Registrar Empleado</title>
        <style>
            *{
                padding: 0px;
                margin:0px;
            }
            body{
                background-image: url("https://lh3.googleusercontent.com/proxy/iXpBL9dtQ-cr8RfiVVfu08fQd6u0Cc2xklyTh-D2p7FOLeypT-IIX5QD5j7KDIMcR4rPalGsuoF1OAmk7F2CICSFAddCoZx4saNkCvXpneWf8jOqlaK4");
    	background-size: cover;
    	background-repeat: no-repeat;
    	height: 100%;
                justify-content: center;
                text-align: center;
            }
            
            #tit_codigo,#codigo{
                display: inline;
            }
            #tit_cedula,#cedula{
                display: inline;
            }
            #tit_nombre,#nombre{
                display: inline;
            }
             #tit_nacimiento,#nacimiento{
                display: inline;
            }
             #tit_ingreso,#ingreso{
                display: inline;
            }
             #tit_retiro,#retiro{
                display: inline;
            }
            #contenido{
                justify-content: center;
                text-align: center;
                border: 1px solid gray;
                margin: 0px auto;
                margin-top: 20px;
                padding: 10px;
                width: 40%;
                height: auto;
                background-color: white;
            }
            #campos{
                height: 85%;
                justify-content: center;
                text-align: right;
            }
            #botones{
                margin-top: 5px;
            height: 15%;
            justify-content: center;
                text-align: center;
            }
            .icono{
                color: gray;
                font-size: 2em;
            }
            #volver{
                text-decoration: none;
                padding: 5px;
                width: 100px;
                color:white;
            }
            #registrar{
                padding: 5px;
                width: 100px;
            }
            #codigo,#cedula,#nombre{
                width:65%;
            }
            #nacimiento,#ingreso,#retiro{
                width:50%;
            }
            h1{
                text-align: center;
                color: red;
            }
            i{
                margin-left: 3px;
            }
            
        </style>
    </head>
    <body>
        <div id="contenido">
            <div id="campos">
        <form class="empleado" action="Control?menu=Empleado" method="POST" id="data" >
        <h1>Registro de Empleados</h1>
        <h4 id="tit_codigo">Codigo: </h4><input type="text" value="${empleado.getCodigo()}" class="form-control" id="codigo" name="codigo"  readonly=""/><br><br>
        <h4 id="tit_cedula">Cedula: </h4><input type="text" value="${empleado.getCedula()}" class="form-control" id="cedula" name="cedula" readonly="" /><br><br>
        <h4 id="tit_nombre">Nombre: </h4><input type="text" value="${empleado.getNombre()}" class="form-control" id="nombre" name="nombre" readonly=""/><br><br>
        <h4 id="tit_nacimiento">Fecha Nacimiento: </h4><input type="date" value="${empleado.getFechaNacimiento()}" class="form-control" id="nacimiento" name="nacimiento" readonly=""/><i class="icono fa fa-calendar"></i><br><br>
        <h4 id="tit_ingreso">Fecha Ingreso: </h4><input type="date" max="" value="${empleado.getFechaIngreso()}" class="form-control" id="ingreso" name="ingreso" readonly=""/><i class="icono fa fa-calendar"></i><br><br>
        <h4 id="tit_retiro">Fecha Retiro: </h4><input type="date" value="${empleado.getFechaRetiro()}" class="form-control" id="retiro" name="retiro" /><i class="icono fa fa-calendar"></i><br><br>
        </div>
        <div id="botones">
        <input type="submit" class="btn btn-info" value="Actualizar" onclick="return validarFormulario()" id="registrar" name="accion" />
        <a href="buscar.jsp" class="btn btn-warning" id="volver">Volver</a>
        <div>
        </form>
        </div>
        <script>
                 function validarFormulario(){
    var txtRetiro = document.getElementById('retiro').value;
    if(txtRetiro == null || txtRetiro.length == 0){
        document.getElementById("retiro").focus();
                alertify.alert("Advertencia!","Fecha de Retiro no Válida"); 
      return false;
    }
                 }

        </script>
    </body>
</html>
