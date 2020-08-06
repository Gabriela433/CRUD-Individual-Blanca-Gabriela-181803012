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


public class CantidadBD {

    //Atributos de conexion
    Connection conexion = new Conexion().getConexion();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    //Consultas
    private static final String listadoCantidad = "SELECT * from cant_venta";

    //Busqueda
    private static final String buscarCantidad = "SELECT * FROM cant_venta WHERE Id_producto = ?";

    //Agregar cantidad
    private static final String agregarCantidad = "INSERT INTO cant_venta SET Id_producto = ?, Cantidad = ?";

    //Editar cantidad
    private static final String editarCantidad = "UPDATE cant_venta SET Cantidad = ? WHERE Id_producto = ?";

    //Listar
    public List<Cantidad> listadoCantidad() throws SQLException {
        List<Cantidad> cantidades = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(this.listadoCantidad);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            cantidades.add(new Cantidad(this.rs.getInt("Id_producto"), this.rs.getInt("Cantidad")));
        }
        return cantidades;
    }

    //Buscar
    public Cantidad BuscarCantidadId(int Id_producto) throws SQLException {

        Cantidad obtenida = null;

        this.stmt = this.conexion.prepareStatement(this.buscarCantidad);
        this.stmt.setInt(1, Id_producto);
        this.rs = this.stmt.executeQuery();
        if (this.rs.next()) {
            obtenida = new Cantidad(this.rs.getInt("Id_producto"), this.rs.getInt("Cantidad"));
        }
        return obtenida;
    }

    //Agregar
    public boolean agregarCantidad(Cantidad cantidad) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.agregarCantidad);

        this.stmt.setInt(1, cantidad.getId_producto());
        this.stmt.setInt(2, cantidad.getCantidad());

        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }

    //Editar
    public boolean editarCantidad(Cantidad cantidad) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.editarCantidad);
        this.stmt.setInt(1, cantidad.getCantidad());
        this.stmt.setInt(2, cantidad.getId_producto());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }

  

}
