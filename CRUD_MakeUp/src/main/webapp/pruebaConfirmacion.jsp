<%-- 
    Document   : pruebaConfirmacion
    Created on : 5 jul 2020, 21:18:41
    Author     : usuario
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<body >
    <style>
    body{  background-image: url("img/1.jpg");
           background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
</body>
<%

    if (request.getParameter("id") != null) {

        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {

            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/maquillaje", "root", "");
            stmt = conexion.prepareStatement("DELETE FROM productos WHERE Id_producto=?");
            stmt.setString(1, request.getParameter("id"));
            stmt.executeUpdate();
        } catch (Exception e) {
            out.print(e.getMessage());
        }
    }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar producto</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body style="background-color: bisque">

        <div style="background-color:bisque"  class="alert alert-success" role="alert">
            <h1 class="text-center" > El registro ha sido eliminado </h1>

            <div><a class="btn btn-primary btn-block" style="background-color: mediumvioletred" href="Index.jsp"> Regresar</a></div>

        </div>
    </body>
</html>