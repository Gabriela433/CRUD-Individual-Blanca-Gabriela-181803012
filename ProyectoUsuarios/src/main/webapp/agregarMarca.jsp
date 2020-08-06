<%-- 
    Document   : agregarMarca
    Created on : 8 jul 2020, 14:52:36
    Author     : usuario
--%>
<%@page import="Dao.Marca"%>
<%@page import="Dao.MarcaBD"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <html>
            <head>
                 <style>
    body{  background-image: url("img/1.jpg");
           background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
                <title>Agregar Marca</title>
            </head>
      
<%
    boolean executeUpdate;
    MarcaBD Marca = new MarcaBD();
    executeUpdate = Marca.agregarMarca(new Marca(request.getParameter("Marca")));
     if (executeUpdate){
%>
<div >
    <h2 style="text-align:center;" > Se agregó exitosamente la marca a la base de datos </h2>
</div>
        <% 
          }
        %>
        <br>
            <div class ="alert-danger" role="alert">
                <a href="Catalogo.jsp" class="btn btn-info btn-block"> Regresar </a </div>
            </div>
            
        </body>
</html>
