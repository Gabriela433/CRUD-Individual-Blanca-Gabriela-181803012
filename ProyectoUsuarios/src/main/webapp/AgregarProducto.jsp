<%-- 
    Document   : AgregarProducto
    Created on : 5 jul 2020, 20:22:26
    Author     : usuario
--%>
<%@page import="Dao.Producto"%>
<%@page import="Dao.ProductoBD"%>
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
                <title>Agregar Producto</title>
            </head>
      
<%
    boolean executeUpdate;
    ProductoBD productos = new ProductoBD();
    executeUpdate = productos.agregarProducto(new Producto(request.getParameter("Producto"), Integer.parseInt(request.getParameter ("Piezas")), request.getParameter("Precio"), request.getParameter("Presentacion"), request.getParameter("Color"), Integer.parseInt(request.getParameter("Marca")), Integer.parseInt(request.getParameter ("Cantidad"))));
    
            if (executeUpdate) { //Compara si el executeUpdate fue exitoso
        %>
<div class="alert alert-success" role="alert">
    <h3 style="text-align:center;"> Se agrego exitosamente el registro a la base de datos </h3>
</div>
        <% 
          }
        %>
        
            <form action="Index.jsp" methode="GET" class="form">
                <div class="form-row">
                    <a href="Index.jsp" class ="btn btn-info btn-block"> Regresar a la base de datos</a
                </div>
            </form>
        </body>
</html>
