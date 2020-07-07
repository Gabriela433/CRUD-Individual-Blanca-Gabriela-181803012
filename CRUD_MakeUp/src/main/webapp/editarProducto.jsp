<%-- 
    Document   : editarProducto
    Created on : 5 jul 2020, 21:40:21
    Author     : usuario
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!DOCTYPE html>
<html style="background-color: bisque" >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar un nuevo usuario</title>
    </head>
       <style>
    body{  background-image: url("img/1.jpg");
           background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
</html>

<%
    String titule = "Formulario Precio", producto = "", ref = "editarPrecio.jsp";
    
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/maquillaje", "root", "");
            stmt = conexion.prepareStatement("UPDATE productos SET Producto=?, Piezas=?, Precio=?, Tamaño=?, Color=?, Marca=? ");
            stmt.setString(1, request.getParameter("Producto"));
        stmt.setInt(2, Integer.parseInt(request.getParameter("Piezas")));
          stmt.setInt(3, Integer.parseInt(request.getParameter("Precio")));
        stmt.setString(4, request.getParameter("Tamaño"));
        stmt.setString(5, request.getParameter("Color"));
        stmt.setString(6, request.getParameter("Marca"));
            if (stmt.executeUpdate() == 1) {
%>
                <div class="alert alert-success" role="alert">
                    <h3 style="text-align:center">
                        <font> Se han actualizado los datos exitosamente! </font>
                        
                    </h3>
                </div>
                <%}

                } catch (Exception e) {%>
                    <form>
                        <div class="alert alert-success" role="alert">
                              <h2 align="center">Lo sentimos, los datos no han sido actuailzados, verifique su base de datos <br> <%=e.getMessage()%></h2>
                        </div>
                    </form>

                <%} finally {%>
                    <a class="btn btn-info btn-block" href="Index.jsp">Regresar </a>
                <%}
%>

    </body>

</html>