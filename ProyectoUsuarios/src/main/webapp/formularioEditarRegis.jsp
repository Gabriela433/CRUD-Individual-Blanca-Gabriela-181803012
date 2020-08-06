<%-- 
    Document   : formularioEditarRegis
    Created on : 14 jul 2020, 1:26:20
    Author     : usuario
--%>
<%@page import="Dao.Marca"%>
<%@page import="Dao.MarcaBD"%>
<%@page import="Dao.ProductoBD"%>
<%@page import="Dao.Producto"%>
<%@page import="java.util.List"%>
<%@page import="Dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title align="center">Agregar un nuevo Registro</title>
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
            int id = 0;
            
            if (request.getParameter("Id_producto") != null) {
                id = Integer.parseInt(request.getParameter("Id_producto"));
                String Precio = request.getParameter("Precio");
                
                ProductoBD producto = new ProductoBD();
                if (producto.editarProducto(new Producto(Precio,id)) == true) {%>  
        
     <div class="alert alert-success" role="alert">
    <h3 style="text-align:center;"> El precio ha sido modificado exitosamente </h3>
    </div>
        <br> <%}%>
        <div><a href="Index.jsp" class ="btn btn-info btn-block"> Regresar</a</div>
        <%}
        %>
    </body>
</html>
  