<%-- 
    Document   : productoVendido
    Created on : 4 ago 2020, 12:05:39
    Author     : usuario
--%>

<%@page import="Dao.Producto"%>
<%@page import="Dao.ProductoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto vendido</title>
    </head>
    <body>

        <%
            boolean executeUpdate;
            ProductoBD producto = new ProductoBD();
            executeUpdate = producto.editarCantidad(new Producto(Integer.parseInt(request.getParameter("Cantidad")),Integer.parseInt(request.getParameter("Id_producto"))));
            if (executeUpdate) {
        %>

        <br>
        <br>
        <div class="col">
            <div class="alert alert-success" role="alert">
                Su venta se ha realizado exitosamente!
            </div>
        </div>
        <%
        } else {
        %>
        <div class="col">
            <div class="alert alert-danger" role="alert">
                No se pudo completar la compra, intentelo de nuevo
            </div>
        </div>
        <%
            }
        %>
        <br>
        <div class="col">
            <a  href="CompraVenta.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
        </div>

    </body>
</html>