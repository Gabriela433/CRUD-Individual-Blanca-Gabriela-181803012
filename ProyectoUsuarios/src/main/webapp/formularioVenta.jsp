<%-- 
    Document   : formularioVenta
    Created on : 4 ago 2020, 10:04:27
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario vender producto</title>
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

        <h3 style="color: black; text-align: center">¿Cuantos productos quiere?</h3><br>

        <div class="container">
            <form action="venderProducto.jsp" method="post">
                
                <div class="col">
                    <input type="hidden" value="<%=request.getParameter("Id_producto")%>" name="Id_producto" class="form-control" readonly>
                </div>

                <div class="col">
                    <input type="number" class="form-control" placeholder="Cantidad" name="Cantidad" min="0" required>
                </div>

                <br>

                <div class="col">
                    <input type="submit" class="btn btn-success btn-block"   value="Agregar al carrito">
                </div>

                <br>

                <div class="col">
                    <a href="CompraVenta.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
                </div>

            </form>
        </div>

    </body>
</html>
