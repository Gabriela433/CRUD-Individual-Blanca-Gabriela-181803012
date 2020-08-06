<%-- 
    Document   : formularioEliminarProducto
    Created on : 14 jul 2020, 0:44:14
    Author     : usuario
--%>
<%@page import="Dao.MarcaBD"%>
<%@page import="Dao.ProductoBD"%>
<%@page import="Dao.Marca"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Producto"%>


  <%
    int Id_producto = 0;
    if (request.getParameter("Id_producto") != null) {
        Id_producto = Integer.valueOf(request.getParameter("Id_producto"));
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario eliminar un registro </title>
    </head>
    <body>
  <style>
    body{  background-image: url("img/1.jpg");
           background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
        <br><br>

       <div>
            <div>
                <h2 style="text-align:center;" > ¿Seguro que desea eliminar el registro de forma permanente? </h2>
            </div>
        </div>
        
        <br>
        <form action="eliminarProducto.jsp" method="post" style="text-align: center">

            <div class="col">
                <input type="hidden" value="<%=Id_producto%>" class="form-control" name="Id_producto" readonly>
            </div>

             <div class ="col">
                <a href="Index.jsp" class="btn btn-info btn-block"> Cancelar </a </div>
                <br>
                <input type="submit" style="background-color: mediumvioletred" class="btn btn-block " value="Eliminar"><br>
               </div>

        </form>

    </body>
</html>
<%}%>