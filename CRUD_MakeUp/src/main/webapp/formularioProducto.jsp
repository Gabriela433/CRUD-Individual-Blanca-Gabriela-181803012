<%-- 
    Document   : formularioProducto
    Created on : 4 jul 2020, 23:12:58
    Author     : usuario
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    String titulo = "Agregar producto", Producto = "", Piezas = "", Precio = "", Tamaño = "", Color = "", Marca = "",action = "AgregarProducto.jsp";
    int id = 0;
    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        titulo = "Editar producto";
        action = "editarProducto.jsp";
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
            Piezas = rs.getString("Piezas");
            Precio = rs.getString("Precio");
            Tamaño = rs.getString("Tamaño");
            Color = rs.getString("Color");
            Marca = rs.getString("Marca");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
%>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Make up</title>
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
           <br> <h2 class="text-center"> <%=titulo%></h2>
        </div>
        
            <div class="container">
                <div class="form-group">
                    <form  action="<%=action%>" method="GET">
                         
                            <% if (id != 0) {%>
                            <input type="hidden" class="form-control"  name="Id_producto" value="<%=id%>"/><br>

                            <% }%>
                                <br>
                            <div class="form-row">
                                <input type="int" value="<%=Producto%>" class="form-control" placeholder="Producto" name="Producto" required/><br>
                            </div>
                                <br>
                            <div class="form-row">
                                 <input type="int"  value="<%=Piezas%>" class="form-control" placeholder="Piezas" name="Piezas" required/><br>
                            </div>
                            <br>
                            <div class="form-row">
                                 <input type="int" value="<%=Precio%>" class="form-control" placeholder="Precio" name="Precio" required/><br>
                            </div>
                            <br>
                            <div class="form-row">
                                 <input  type="int"  value="<%=Tamaño%>" class="form-control" placeholder="Tamaño" name="Tamaño" required/><br/>
                            </div>
                             <br>
                            <div class="form-row">
                                <input type="int" value="<%=Color%>" class="form-control" placeholder="Color" name="Color" required/><br>
                            </div>
                            
                             <br>
                          
                            <div class="form-row">
                                <input type="int"  value="<%=Marca%>" class="form-control" placeholder="Marca" name="Marca" required/><br>
                            </div>
                            
                            
                            
                             <br>
                            <div class="form-row">
                                <a href="Index.jsp" class="btn btn-info btn-block"> Regresar</a> 
                                <input type="submit" style="background-color: mediumvioletred" class="btn btn-success  btn-block " value="Enviar"><br>
                            </div>
                    </form>
                </div>
            </div>
    </body>
</html>