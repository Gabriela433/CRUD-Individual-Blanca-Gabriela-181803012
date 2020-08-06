<%-- 
    Document   : eliminarMarca
    Created on : 13 jul 2020, 20:33:59
    Author     : usuario
--%>

<%@page import="Dao.Marca"%>
<%@page import="Dao.Marca"%>
<%@page import="Dao.MarcaBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Marca</title>
    </head>
    <style>
    body{  background-image: url("img/1.jpg");
           background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
    <body>
        
        <%
            boolean executeUpdate;
            MarcaBD marca = new MarcaBD();
            executeUpdate = marca.eliminarMarca(new Marca(Integer.parseInt(request.getParameter("Id_marca"))));
            if (executeUpdate) {
        %>
        
        <br>
        <br>
        <div class="col">
            <div>
                <h2 style="text-align:center;"> La marca ha sido eliminada </h2>
            </div>
        </div>
        <%
        } else {
        %>
        <div class="col">
            <div>
               <h2 style="text-align:center;"> No se pudo eliminar la marca, intentelo de nuevo  </h2>
            </div>
        </div>
        <%
            }
        %>
        <br>
        <div class="col">
            <a  href="Catalogo.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
        </div>
        
    </body>
</html>