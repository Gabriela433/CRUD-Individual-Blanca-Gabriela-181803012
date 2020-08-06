<%-- 
    Document   : formularioProducto
    Created on : 4 jul 2020, 23:12:58
    Author     : usuario
--%>
<%@page import="Dao.Producto"%>
<%@page import="Dao.ProductoBD"%>
<%@page import="Dao.MarcaBD"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Marca"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String titulo = "Agregar Registro", Precio = "", action="AgregarProducto.jsp";
    int id = 0;
   if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        titulo = "Editar Precio";
        action = "formularioEditarRegis.jsp";
        ProductoBD Producto = new ProductoBD(); 
        Precio = Producto.formu(new Producto(id));
    }
%>

<%
    List<Marca> marca = new MarcaBD().listadoMarca();
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
      <h1 class="text-center"><%=titulo%></h1>
        <div class="container">
            <form action="<%=action%>" method="GET" >
                <div class="form-group">   
                    <% if (id != 0) {%>
                                    <div>
                        <input type="hidden" class="form-control"  name="Id_producto" value="<%=id%>"/>
                    </div>
                    <% }%>
                    <%if (id == 0) {%>
                                <br>
                            <div class="form-row">
                                <input type="text"  class="form-control" placeholder="Producto" name="Producto" required/><br>
                            </div>
                                <br>
                            <div class="form-row">
                                 <input type="int"  class="form-control" placeholder="Piezas" name="Piezas"  required/><br>
                            </div>
                                <br>
                          
                            <div class="form-row">
                                 <input type="text" class="form-control" placeholder="Presentacion" name="Presentacion" required/><br/>
                            </div>
                                <br>
                            <div class="form-row">
                                <input type="text" class="form-control" placeholder="Color" name="Color" required/><br>
                                </div>
                                <br>
                               
                                <% }%>
                                <br>
                            <div class="form-row">
                                 <input type="text"  class="form-control" placeholder="Precio" name="Precio" required/><br>
                            </div>
                                 <br>
                           
                                 
                          <%if (id == 0) {%>
                          
                            <div class="form-row">
                                 <input type="text"  class="form-control" placeholder="Cantidad" name="Cantidad" required/><br>
                            </div> 
                          
                          <br>
                            <div class="form-row">
                    <select class="form-control" name="Marca" required>
                        <option value=""> Seleccione una marca</option>
                          <%           for (Marca mark : marca){ %>
                        <option value="<%=mark.getId_marca()%>"><%=mark.getMarca()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                     <% }%>
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
