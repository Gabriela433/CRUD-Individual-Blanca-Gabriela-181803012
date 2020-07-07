
<%-- 
    Document   : Index
    Created on : 31 may 2020, 16:13:23
    Author     : usuario
--%>

<%@page import="java.sql.*"%>
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
            ps=conexion.prepareStatement("Select * from productos ");
            rs=ps.executeQuery();
           
            }
    
    catch (Exception e) {
        out.println(" Error: " + e);
    }

%>
<div>

    <table style="width:45%" class="container">

        <div class="container">
            <table class="table table-bordered">
                <thead class=" thead-dark">
                    <tr>
                        <td colspan="8"><h2>Productos</h2>
                       
                        <td><a class="btn btn-success btn-block" href="formularioProducto.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-file-earmark-plus-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M2 3a2 2 0 0 1 2-2h5.293a1 1 0 0 1 .707.293L13.707 5a1 1 0 0 1 .293.707V13a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V3zm7 2V2l4 4h-3a1 1 0 0 1-1-1zm-.5 2a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V11a.5.5 0 0 0 1 0V9.5H10a.5.5 0 0 0 0-1H8.5V7z"/>
                                </svg>Agregar registro</a></td>

                        <td><a class="btn btn-primary btn-block" href="Catalogo.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-book-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path d="M15.261 13.666c.345.14.739-.105.739-.477V2.5a.472.472 0 0 0-.277-.437c-1.126-.503-5.42-2.19-7.723.129C5.696-.125 1.403 1.56.277 2.063A.472.472 0 0 0 0 2.502V13.19c0 .372.394.618.739.477C2.738 12.852 6.125 12.113 8 14c1.875-1.887 5.262-1.148 7.261-.334z"/>
                                </svg>Ver catalogo</a></td>
                    </tr>
                    <tr>
                        <th scope="col"> Id producto </th>
                        <th scope="col"> Nombre</th>
                        <th scope="col"> Piezas</th>
                        <th scope="col"> Precio</th>
                        <th scope="col"> Tamaño</th>
                        <th scope="col"> Color</th>
                        <th scope="col"> Marca </th>
                    </tr>
                    <%          while (rs.next()) {
                    %>

                    <tr>
                        <td align="center" ><%= rs.getInt("Id_producto")%></td>
                        <td align="center" ><%= rs.getString("Producto")%></td>
                        <td align="center" ><%= rs.getInt("Piezas")%></td>
                        <td align="center" ><%= rs.getInt("Precio")%></td>
                        <td align="center" ><%= rs.getString("Tamaño")%></td>
                        <td align="center" ><%= rs.getString("Color")%></td>
                        <td align="center" ><%=rs.getString("Marca")%></td>

                        <td><a class="btn btn-info btn-block" href="formularioProducto.jsp?id=<%=rs.getInt("Id_producto")%>"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-tools" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M0 1l1-1 3.081 2.2a1 1 0 0 1 .419.815v.07a1 1 0 0 0 .293.708L10.5 9.5l.914-.305a1 1 0 0 1 1.023.242l3.356 3.356a1 1 0 0 1 0 1.414l-1.586 1.586a1 1 0 0 1-1.414 0l-3.356-3.356a1 1 0 0 1-.242-1.023L9.5 10.5 3.793 4.793a1 1 0 0 0-.707-.293h-.071a1 1 0 0 1-.814-.419L0 1zm11.354 9.646a.5.5 0 0 0-.708.708l3 3a.5.5 0 0 0 .708-.708l-3-3z"/>
                                <path fill-rule="evenodd" d="M15.898 2.223a3.003 3.003 0 0 1-3.679 3.674L5.878 12.15a3 3 0 1 1-2.027-2.027l6.252-6.341A3 3 0 0 1 13.778.1l-2.142 2.142L12 4l1.757.364 2.141-2.141zm-13.37 9.019L3.001 11l.471.242.529.026.287.445.445.287.026.529L5 13l-.242.471-.026.529-.445.287-.287.445-.529.026L3 15l-.471-.242L2 14.732l-.287-.445L1.268 14l-.026-.529L1 13l.242-.471.026-.529.445-.287.287-.445.529-.026z"/>
                                </svg> Editar registro </a> </td>
                        <td><a class="btn btn-warning btn-block" href="formularioPrecio.jsp?id=<%=rs.getInt("Id_producto")%>"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-upload" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M.5 8a.5.5 0 0 1 .5.5V12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V8.5a.5.5 0 0 1 1 0V12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V8.5A.5.5 0 0 1 .5 8zM5 4.854a.5.5 0 0 0 .707 0L8 2.56l2.293 2.293A.5.5 0 1 0 11 4.146L8.354 1.5a.5.5 0 0 0-.708 0L5 4.146a.5.5 0 0 0 0 .708z"/>
                                <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v8a.5.5 0 0 1-1 0v-8A.5.5 0 0 1 8 2z"/>
                                </svg> Editar Precio</a></td>
                        <td><a class="btn btn-danger btn-block" style="background-color: mediumvioletred"  href="eliminarProducto.jsp?id=<%=rs.getInt("Id_producto")%>"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
                                </svg> Eliminar registro </a> </td>


                    </tr>
                    <%}%>
            </table>
        </div>
    </body>
</html>
    
    