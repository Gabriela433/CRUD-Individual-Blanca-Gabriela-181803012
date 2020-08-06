/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;
import Config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author usuario
 */

public class ProductoBD {
    //Atributos de conexion
    Connection conexion = new Conexion().getConexion();
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
     //Consultas
    private static final String ListadoProductos= "SELECT Id_producto, Producto, Piezas, Precio, Presentacion, Color, cat_marca.Marca, Cantidad\n"
            + "FROM productos\n"
            + "JOIN cat_marca\n"
            + "ON productos.Marca = cat_marca.Id_marca";
    
    //
    
       private static final String busquedaProducto = "SELECT Producto, Piezas, Precio, Presentacion, Color, cat_marca.Marca, Cantidad FROM productos\n"
            + "JOIN cat_marca\n"
            + "ON productos.Marca = cat_marca.Id_marca\n"
            + "WHERE Id_producto = ?";
       
    private static final String agregarProducto = "INSERT INTO productos SET Producto = ?, Piezas = ?, Precio = ?, Presentacion = ?, Color = ?, Marca = ?, Cantidad = ?";

    private static final String editarProducto = "UPDATE productos SET Precio = ? WHERE Id_producto = ?";
    
    private static final String formu = "SELECT * FROM productos WHERE Id_producto = ?";
   
    private static final String eliminarProducto = "DELETE FROM productos WHERE Id_producto = ?";
    private static final String agregarCantidad = "INSERT INTO cantidad_disponible SET Id_producto = ?, Cantidad = ?";

     //Lista 
   
    public List<Producto> ListadoProductos() throws SQLException{
    List<Producto> productos = new ArrayList<>();
    this.stmt = this.conexion.prepareStatement(this.ListadoProductos);
    this.rs = this.stmt.executeQuery();
    while (this.rs.next()){
        productos.add(new Producto(this.rs.getInt("Id_producto"),this.rs.getString("Producto"),this.rs.getInt("Piezas"),this.rs.getString("Precio"),this.rs.getString("Presentacion"),this.rs.getString("Color"),this.rs.getString("Marca"),this.rs.getInt("Cantidad")));
    }
    return productos;
    }
   

   //Agregar producto en Index
    
    public boolean agregarProducto(Producto producto) throws SQLException{
        this.stmt = this.conexion.prepareStatement(this.agregarProducto);
        this.stmt.setString(1, producto.getProducto());
        this.stmt.setInt(2, producto.getPiezas());
        this.stmt.setString (3, producto.getPrecio());
        this.stmt.setString(4, producto.getPresentacion());
        this.stmt.setString(5, producto.getColor());
        this.stmt.setInt(6, producto.getId_marca());
        this.stmt.setInt(7, producto.getCantidad());
         if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
    
    
    
    
   public List<Producto> busquedaProducto(int Id_producto) throws SQLException {
        List<Producto> productoId = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(this.busquedaProducto);
        this.stmt.setInt(1, Id_producto);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            productoId.add(new Producto(this.rs.getString("Producto"),this.rs.getInt("Piezas"),this.rs.getString ("Precio"),this.rs.getString("Presentacion"),this.rs.getString("Color"),this.rs.getString("Marca"),this.rs.getInt("Cantidad")));
        }
        return productoId;
    }
   
   
//Editar Producto P

    public boolean editarProducto(Producto producto) throws SQLException{
        this.stmt = this.conexion.prepareStatement(this.editarProducto);
        this.stmt.setString (1, producto.getPrecio());
        this.stmt.setInt(2, producto.getId_producto());
    
        if(this.stmt.executeUpdate() == 1){
            return true;
        }else{
             return false;
        }
    }
    
    
    private static final String editarCantidad= "UPDATE productos SET Cantidad = ? WHERE Id_producto = ?";
    
    public boolean editarStock(Producto producto) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.editarCantidad);
        this.stmt.setInt(1, producto.getCantidad());
        this.stmt.setInt(2, producto.getId_producto());
        if (this.stmt.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    
      public String formu(Producto producto) throws SQLException{
        this.stmt = this.conexion.prepareStatement(this.formu); 
        this.stmt.setInt(1, producto.getId_producto());
        rs=this.stmt.executeQuery();
        
        if(rs.next()){
            String produc  = this.rs.getString("Precio");
            return produc;
        }else{
             return "";
        }
    }
      
      
     
      
      
      
      
    //Eliminar un producto del registtro INDEX
    public boolean eliminarProducto(Producto producto) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.eliminarProducto);
        
        stmt.setInt(1, producto.getId_producto());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
        
   
    
    }
        
    

    