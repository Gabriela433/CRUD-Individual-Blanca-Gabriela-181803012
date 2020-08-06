<%-- 
    Document   : venderProducto
    Created on : 4 ago 2020, 10:08:33
    Author     : usuario
--%>

<%@page import="Dao.ProductoBD"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Venta de productos</title>
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
            int Id_producto = 0;
            int cantidadSolicitada;
            int cantidadCantidad = 0;
            if (request.getParameter("Id_producto") != null && request.getParameter("Cantidad") != null) {
                Id_producto = Integer.parseInt(request.getParameter("Id_producto"));
                cantidadSolicitada = Integer.parseInt(request.getParameter("Cantidad"));
                List<Producto> producto = new ProductoBD().busquedaProducto(Id_producto);
                for (Producto i : producto) {
                    cantidadCantidad = i.getCantidad();
                }
                if (cantidadSolicitada <= cantidadCantidad) {
                    Producto Cantidad = new Producto();
                    cantidadCantidad = Cantidad.resta(cantidadCantidad, cantidadSolicitada);
        %>
        
        <br>
        <br>

        <div class="col">
            <div style="text-align: center">
                <h2> ¿Seguro que quiere comprar este articulo? </h2>
            </div>
             <br>
        </div>
        <form action="productoVendido.jsp" method="GET">
            <div class="col">
                <input type="hidden" class="form-control" value="<%=Id_producto%>" name="Id_producto" readonly>
            </div>
            <div class="col">
                <input type="hidden" class="form-control" value="<%=cantidadCantidad%>" name="cantidadCantidad" readonly>
            </div>
            <div class="col">
                <input type="submit" class="btn btn-success btn-block"   value="Comprar"/>
                <a class="btn btn-danger btn-block" href="CompraVenta.jsp">Cancelar</a>
            </div>
        </form>
            
        <%} else {%>

        <br>
        <div class="col">
            <div class="alert alert-danger" role="alert">
                Lo sentimos ha rebasado el limite con el que contamos en existencia
                <br><br>Solo tenemos <%=cantidadCantidad%> piezas
            </div>
        </div>

        <div class="col">
            <a  href="CompraVenta.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
        </div>


        <%
            }
        %>


    </body>
</html>
<%}%>
