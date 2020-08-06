<%-- 
    Document   : editarCantidad
    Created on : 4 ago 2020, 17:00:55
    Author     : usuario
--%>

<%@page import="Dao.CantidadBD"%>
<%@page import="Dao.Cantidad"%>
<%@page import="java.sql.*"%>
<%@page import="Config.Conexion"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title align="center">Agregar cantidad disponible de un producto</title>
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
            String id_producto = request.getParameter("id");
            String cantidad = request.getParameter("Cantidad");
            if (id_producto != null && cantidad != null) {
                CantidadBD cantidadBD = new CantidadBD();
                if (cantidadBD.editarCantidad(new Cantidad(Integer.parseInt(id_producto), Integer.parseInt(cantidad)))) {%>      
        <div class="alert alert-success" role="alert">
            <h2 align="center">Se actualizó exitosamente el stock</h2>
        </div>
        <br> 
        <% }%>
        <div><a class="btn btn-success btn-block" href="Index.jsp">Regresar</a></div>
        <%}%>
    </body>
</html>



