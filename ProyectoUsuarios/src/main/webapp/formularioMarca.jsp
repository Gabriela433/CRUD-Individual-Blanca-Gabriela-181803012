<%-- 
    Document   : formularioMarca
    Created on : 8 jul 2020, 14:46:12
    Author     : usuario
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
       
    </head>
    <style>
    body{  background-image: url("img/1.jpg");
           background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
    <body >
        <div>
           <br> <h2 class="text-center"> Agregar marca </h2>
        </div>
        
            <div class="container">
                <div class="form-group">
                    <form  action="agregarMarca.jsp" method="GET">
                         
                            <br>
                          
                            <div class="form-row">
                                <input type="text"  class="form-control" placeholder="Marca" name="Marca" required/><br>
                            </div>
                            
                             <br>
                            <div class="form-row">
                                <a href="Catalogo.jsp" class="btn btn-info btn-block"> Regresar</a> 
                                <input type="submit" style="background-color: mediumvioletred" class="btn btn-success  btn-block " value="Enviar"><br>
                            </div>
                    </form>
                </div>
            </div>
    </body>
</html>
