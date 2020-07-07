<%-- 
    Document   : Catalogo
    Created on : 5 jul 2020, 1:46:26
    Author     : usuario
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Catalogo</title>
    </head>
    <style>
    body{  background-image: url("img/1.jpg");
           background-attachment: fixed;
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
    <body>
       <h1 style="color:mediumvioletred;text-align:center;"> <i> <strong> Catalogo </strong> </i></h1>
        
            <%
    Connection conexion = null;
    ResultSet rs = null;
  
    try{
            String url= "jdbc:mysql://localhost/maquillaje";
            String Driver="com.mysql.jdbc.Driver";
            String user="root";
            String clave="";
            Class.forName(Driver);
            conexion=DriverManager.getConnection(url,user,clave);
            
            PreparedStatement ps;
            ps=conexion.prepareStatement("Select * from cat_marca ");
            rs=ps.executeQuery();
            }
    
    catch (Exception e) {
        out.println(" Error: " + e);
    }

%>

<div>
 <table style="width:45%" class="container">
    <div class="container">
        <table  class= "table table-striped table-dark table table-bordered container">
         
            <thead class="thead-dark">
                
                <tr>
                    <td colspan="3"><h2>Marcas</h2>
                       
                </tr>
                 
                <tr>
                    
                    <th class="bg-danger"> Id marca </th>
                    <th class="bg-danger"> Nombre de la marca</th>
                      <td><a class="btn btn-success btn-block" href="formularioProducto.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-file-earmark-plus-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M2 3a2 2 0 0 1 2-2h5.293a1 1 0 0 1 .707.293L13.707 5a1 1 0 0 1 .293.707V13a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V3zm7 2V2l4 4h-3a1 1 0 0 1-1-1zm-.5 2a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V11a.5.5 0 0 0 1 0V9.5H10a.5.5 0 0 0 0-1H8.5V7z"/>
                                </svg>Agregar marca</a></td>
                </tr>
                <%            while (rs.next()) {
                %>

                <tr>
                    <td align="center" ><%= rs.getInt("Id_marca")%></td>
                    <td align="center" ><%= rs.getString("Marca")%></td>
                             <td><a class="btn btn-danger btn-block" style="background-color: mediumvioletred"  href="eliminarMarca.jsp?id=<%=rs.getInt("Id_marca")%>"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
                                </svg> Eliminar marca </a> </td>
                </tr>
                <%}%>
        </table>

        <div class ="alert-danger" role="alert">
            <a href="Index.jsp" class="btn btn-info btn-block"> Regresar </a
        </div>

    </body>
</html>
