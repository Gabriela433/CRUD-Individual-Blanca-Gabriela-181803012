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
public class Marca {
    private int Id_marca;
    private String Marca;

    public Marca() {
    }
    
     public Marca (String Marca) {
        this.Marca = Marca;
    }

     public Marca(int Id_marca) {
        this.Id_marca = Id_marca;
    }

    public Marca(int Id_marca, String Marca) {
        this.Id_marca = Id_marca;
        this.Marca = Marca;
    }

    public int getId_marca() {
        return this.Id_marca;
    }

    public void setId_Marca(int Id_marca) {
        this.Id_marca = Id_marca;
    }

    public String getMarca() {
        return this.Marca;
    }

    public void setMarca(String marca) {
        this.Marca = marca;
    }
}