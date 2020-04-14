<%-- 
    Document   : buscar
    Created on : 14/04/2020, 06:53:40 AM
    Author     : NELSON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
        <title>Buscar Empleado</title>
                <style>
            *{
                padding: 0px;
                margin:0px;
            }
 
 
            body{
                 background-image: url("https://previews.123rf.com/images/scanrail/scanrail1302/scanrail130200021/18022330-financiaci%C3%B3n-de-las-empresas-impuestos-contabilidad-estad%C3%ADstica-y-anal%C3%ADtica-concepto-de-oficina-de-investig.jpg");
    	background-size: cover;
    	background-repeat: no-repeat;
    	height: 100%;
                justify-content: center;
                text-align: center;
                margin-top: 2%;
            }
            #campo{
                width: 250px;
            }
            label,#campo,input{
                display: inline;
            }
            label{
                color: red;
                font-size: 30px;
                font-family: times new roman;
            }
        </style>
    </head>
    <body>
        <form class="empleado" action="Control?menu=Empleado" method="POST" id="data" >
            <label><b>Buscar:</b> </label><input type="text" class="form-control" id="campo" name="campo" />
        <input type="submit" class="btn btn-primary" value="Buscar" id="consultar" name="accion" />
        </form>
    </body>
</html>
