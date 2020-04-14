<%-- 
    Document   : index
    Created on : 14/04/2020, 06:38:54 AM
    Author     : NELSON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       
        <title>Nomina Empleado</title>
                <style>
            *{
                padding: 0px;
                margin:0px;
            }
            body{
                background-image: url("https://paynext.com.mx/wp-content/uploads/2019/05/todo-sobre-un-software-de-n%C3%B3mina_imgdest.jpg");
    	background-size: cover;
    	background-repeat: no-repeat;
    	height: 100%;
                margin-top: 10%;
                display: flex;
                justify-content: center;
                align-items: center;
  
            }
            a{
                margin-left: 10px;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <a href="buscar.jsp" class="btn btn-primary">Buscar Empleado</a>
        <a href="registrar.jsp" class="btn btn-success">Registrar Empleado</a>
        
    </body>
</html>
