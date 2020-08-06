<%-- 
    Document   : eliminarDirecto
    Created on : 8 jul 2020, 15:35:26
    Author     : usuario
--%>

<%@page import="Dao.Marca"%>
<%@page import="Dao.MarcaBD"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%
    int Id_marca = 0;
    if (request.getParameter("Id_marca") != null) {
        Id_marca = Integer.valueOf(request.getParameter("Id_marca"));
%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Eliminar Marca</title>
    </head>
    <style>
    body{  background-image: url("img/1.jpg");
           background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
    <body>

        <br><br>

        <div>
            <div>
                <h2 style="text-align:center;" > ¿Desea eliminar la marca de forma permanente? </h2>
            </div>
        </div>
        <br>
        <form action="eliminarMarca.jsp" method="post" style="text-align: center">

            <div class="col">
                <input type="hidden" value="<%=Id_marca%>" class="form-control" name="Id_marca" readonly>
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