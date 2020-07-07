<%-- 
    Document   : AgregarProducto
    Created on : 5 jul 2020, 20:22:26
    Author     : usuario
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <html style="background-color: bisque">
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
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        //Declarar el driver para la conexion a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/maquillaje", "root", "");
        stmt = conexion.prepareStatement("INSERT INTO productos SET Producto=?, Piezas=?, Precio=?, Tamaño=?, Color=?, Marca=? ");
        stmt.setString(1, request.getParameter("Producto"));
        stmt.setInt(2, Integer.parseInt(request.getParameter("Piezas")));
          stmt.setInt(3, Integer.parseInt(request.getParameter("Precio")));
        stmt.setString(4, request.getParameter("Tamaño"));
        stmt.setString(5, request.getParameter("Color"));
        stmt.setString(6, request.getParameter("Marca"));
        if (stmt.executeUpdate() == 1) {
%>
<div>
    <h3 style="text-align:center; background-color: bisque">
        <font COLOR="teal">Se agrego exitosamente el registro a la base de datos</font>
    </h3>
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
<%
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>
