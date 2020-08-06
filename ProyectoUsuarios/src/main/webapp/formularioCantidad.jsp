

<%@page import="Config.Conexion"%>
<%@page import="Dao.ProductoBD"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Producto"%>
<%

    int Id_producto = 0;
    if (request.getParameter("Id_producto") != null) {
        Id_producto = Integer.parseInt(request.getParameter("Id_producto"));
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario editar cantidad </title>
    </head>
        <style>
    body{  background-image: url("img/1.jpg");
           background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
    <body>

        <br>
        <br>

        <h3 style="color: black; text-align: center">Editar cantidad</h3><br>

        <div class="container">

             <form action="editarCantidad.jsp" method="GET" >
                <div class="form-group"> 
                    <% if (Id_producto != 0) {%>
                    <div>
                        <input type="hidden" class="form-control"  name="Id_producto" value="<%=Id_producto%>"/>
                    </div>
                    <div>
                        <input type="int" class="form-control" placeholder="Cantidad" name="Cantidad" required><br>
                    </div>

                    <br>
                    <div>
                        <input type="submit"  class="btn btn-success  btn-block " value="Enviar"/><br>
                    </div>
                    <div class="col">
                     <a  href="Index.jsp" class="btn btn-primary btn-block">Index</a>
                     </div>
                    <% }%>
                </div>
            </form>
        </div>
    </body>
</html>