<%-- 
    Document   : eliminarProducto
    Created on : 5 jul 2020, 0:00:40
    Author     : usuario
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int id = 0;
    String Producto = "";
    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/maquillaje", "root", "");
            stmt = conexion.prepareStatement("SELECT * FROM productos WHERE Id_producto=?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            rs.next();
            Producto = rs.getString("Producto");
            id = rs.getInt("Id_producto");
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    }
%>


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
         <title>Confirmacion para eliminar el registro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
     
    <body>
        <br>
        <div >
            <h3 class="text-center" >¿Esta seguro que quiere eliminar el registro? <%out.print(Producto);%></h3>
        </div>
        <br>
         <a href="Index.jsp" class="btn btn-info btn-block"> Cancelar</a> 
         <br>
        <div><a class="btn btn-danger btn-block" style="background-color: mediumvioletred" href="pruebaConfirmacion.jsp?id=<%out.print(id);%>">Eliminar</a></div>
    </body>
</html>
