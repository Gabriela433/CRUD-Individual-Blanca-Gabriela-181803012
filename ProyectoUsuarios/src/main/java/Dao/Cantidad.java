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
public class Cantidad {

    private int Id_producto;
    private int Cantidad;

    public Cantidad(int Id_producto, int Cantidad) {
        this.Id_producto = Id_producto;
        this.Cantidad = Cantidad;
    }

    public Cantidad(int Id_producto) {
        this.Id_producto = Id_producto;
    }

    public int getId_producto() {
        return Id_producto;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setId_producto(int Id_producto) {
        this.Id_producto = Id_producto;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

}
