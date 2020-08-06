<%-- 
    Document   : eliminarProducto
    Created on : 5 jul 2020, 0:00:40
    Author     : usuario
--%>
<%@page import="Dao.Producto"%>
<%@page import="Dao.ProductoBD"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
      <style>
    body{  background-image: url("img/1.jpg");
           background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Eliminar registro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
     
    <body>
           <%
            boolean executeUpdate;
            ProductoBD producto = new ProductoBD();
            executeUpdate = producto.eliminarProducto(new Producto(Integer.parseInt(request.getParameter("Id_producto"))));
            if (executeUpdate) {
        %>
        <br>
        <div >
            <h3 class="text-center" >El registro se ha eliminado exitosamente </h3>
        </div>
         <%
        } 
        %>
        <br>
        <div >
         <a href="Index.jsp" class="btn btn-info btn-block"> Regresar</a> 
         <br>
        </div>
    </body>
</html>