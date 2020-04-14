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
       
        <title>Registrar Empleado</title>
        <style>
            *{
                padding: 0px;
                margin:0px;
            }
            body{
                justify-content: center;
                text-align: center;
            }
            h4,input,i{
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
            }
            #campos{
                height: 85%;
                justify-content: left;
                text-align: left;
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
            a{
                text-decoration: none;
                padding: 8px;
                width: 100px;
                color:white;
            }
            #registrar{
                padding: 5px;
                width: 100px;
            }

        </style>
    </head>
    <body>
        <div id="contenido">
            <div id="campos">
        <form class="empleado" action="Control?menu=Empleado" method="POST" id="data" >
        <h1>Registro de Empleados</h1>
        <h4>Codigo: </h4><input type="text" value="${empleado.getCodigo()}" class="form-control" id="codigo" name="codigo" /><br>
        <h4>Cedula: </h4><input type="text" value="${empleado.getCedula()}" class="form-control" id="cedula" name="cedula" /><br>
        <h4>Nombre: </h4><input type="text" value="${empleado.getNombre()}" class="form-control" id="nombre" name="nombre" /><br>
        <h4>Fecha Nacimiento: </h4><input type="date" value="${empleado.getFechaNacimiento()}" class="form-control" id="nacimiento" name="nacimiento" /><i class="icono fa fa-calendar"></i><br>
        <h4>Fecha Ingreso: </h4><input type="date" value="${empleado.getFechaIngreso()}" class="form-control" id="ingreso" name="ingreso" /><i class="icono fa fa-calendar"></i><br>
        <h4>Fecha Retiro: </h4><input type="date" value="${empleado.getFechaRetiro()}" class="form-control" id="retiro" name="retiro" /><i class="icono fa fa-calendar"></i><br>
        </div>
        <div id="botones">
        <input type="submit" class="btn btn-primary" value="Registrar" id="registrar" name="accion" />
        <a href="index.jsp" class="btn btn-warning">Volver</a>
        <div>
        </form>
        </div>
    </body>
</html>
