/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

/**
 *
 * @author usuario
 */
public class Producto {
    private int Id_producto;
    private String Producto;
    private int Piezas;
    private String  Precio;
    private String Presentacion;
    private String Color;
    
    private int Id_marca;
    private String Marca;
    
    private int Cantidad;

    public Producto () {
    }
    
    
       public Producto(int Id_producto) {
        this.Id_producto = Id_producto;
    }
       
       
           //Listar a los productos
    public Producto(int Id_producto, String Producto, int Piezas, String  Precio, String Presentacion, String Color, String  Marca, int Cantidad) {
        this.Id_producto = Id_producto;
        this.Producto = Producto;
        this.Piezas = Piezas;
        this.Precio = Precio;
        this.Presentacion = Presentacion;
        this.Color = Color;
        this.Marca = Marca;
        this.Cantidad = Cantidad;
    }
  
  
    //Agregar productos 
    public Producto(String Producto,int Piezas, String  Precio, String Presentacion, String Color, int Id_marca, int Cantidad) {
        this.Producto = Producto;
        this.Piezas = Piezas;
        this.Precio = Precio;
        this.Presentacion = Presentacion;
        this.Color = Color;
        this.Id_marca = Id_marca;
        this.Cantidad = Cantidad;
    }
    
     //Buscar 
    public Producto(String Producto, int Piezas, String  Precio, String Presentacion, String Color, String Marca, int Cantidad) {
     this.Producto = Producto;
        this.Piezas = Piezas;
        this.Precio = Precio;
        this.Presentacion = Presentacion;
        this.Color = Color;
        this.Id_marca = Id_marca;
        this.Cantidad = Cantidad;
    }
    
    
    
    
       //Restar productos 
    public int resta(int cantidadCantidad, int cantidadSolicitada){
        
        int resta = cantidadCantidad - cantidadSolicitada;
       return resta;
    }
    
    
    
    public Producto( String Precio, int Id_producto){
        this.Precio = Precio;
        
        this.Id_producto = Id_producto;
    }
    
   
    
    
    public int getId_producto() {
        return this.Id_producto;
    }

    public void setId_producto(int Id_producto) {
        this.Id_producto = Id_producto;
    }

    public String getProducto() {
        return this.Producto;
    }

    public void setProducto (String Producto) {
        this.Producto = Producto;
    }

    public int getPiezas() {
        return this.Piezas;
    }

    public void setPiezas (int Piezas) {
        this.Piezas = Piezas;
    }
    
    public String  getPrecio() {
        return this.Precio;
    }

    public void setPrecio (String  Precio) {
        this.Precio = Precio;
    }
    
    public String getPresentacion() {
        return this.Presentacion;
    }

    public void setPresentacion(String Presentacion) {
        this.Presentacion = Presentacion;
    }

    
    public String getColor() {
        return this.Color;
    }

    public void setColor(String Color) {
        this.Color = Color;
    }
    
    public int getId_marca() {
        return this.Id_marca;
    }

    public void setId_marca(int Id_marca) {
        this.Id_marca = Id_marca;
    }

    public String getMarca() {
        return this.Marca;
    }

    public void setMarca(String Marca) {
        this.Marca = Marca;
    }
    
    
    public int getCantidad() {
        return this.Cantidad;
    }

    public void setCantidad (int Cantidad) {
        this.Cantidad = Cantidad;
    }

}