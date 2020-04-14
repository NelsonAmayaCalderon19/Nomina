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
        <link href="css/style_actualizar.css" rel="stylesheet">
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
<script src="js/actualizar.js" type="text/javascript"></script>
    </body>
</html>
