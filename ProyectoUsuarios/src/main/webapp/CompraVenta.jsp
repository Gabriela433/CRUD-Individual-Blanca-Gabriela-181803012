<%-- 
    Document   : vender
    Created on : 4 ago 2020, 8:38:37
    Author     : usuario
--%>

<%@page import="Dao.ProductoBD"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html>
 <head>
      <title> Make up</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <style>
    body{  background-image: url("img/1.jpg");
           background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
  
    <body>
      

        <h1 style="color:mediumvioletred;text-align:center;"> <i> <strong> Make up </strong> </i></h1>
  <br>

    <%
    List<Producto> productos = new ProductoBD().ListadoProductos();
    
%>


    
<div>

    <table style="width:35%" class="container">

        <div class="container">
            <table class="table table-bordered">
                <thead class=" thead-dark">
                    <tr>
                        <td style="text-align:center;" colspan="3"><h2 style="color:black;text-align:center;"><strong> Los registros de los productos para venta y compra son: </strong> </i></h2>
                          
                        <td><a class="btn btn-primary btn-block" href="Index.jsp">Regresar al menu</a></td>
                    </tr>
                    <tr style="text-align:center;">
                        <th scope="col"> Id producto </th>
                        <th scope="col"> Producto</th>
                        <th scope="col"> Cantidad</th>
              
                    </tr>
                    <%      for (Producto i : productos) {%>

                    <tr>
                        <th scope="row" style="text-align:center;"><%=i.getId_producto()%></th>
                        <td style="text-align:center;"><%=i.getProducto()%></td>
                        <td style="text-align:center;"><%=i.getCantidad()%></td>
                
                        
                      
                 
                               <%if (i.getCantidad() > 0) {%>
                        <td> <a href="formularioVenta.jsp?Id_producto=<%=i.getId_producto()%>" class="btn btn-success btn-block">Vender producto</a></td>
                        <%}%>
                    </tr>
                    <%
                        }
                    %>   
                    </tr>
                    
            </table>
        </div>
    </body>
</html>

