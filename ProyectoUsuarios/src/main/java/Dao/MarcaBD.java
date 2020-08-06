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
public class MarcaBD {
      //Atributos de conexion
    Connection conexion = new Conexion().getConexion();
    PreparedStatement stmt = null;
    ResultSet rs = null;
     
    
    private static final String listadoMarca = "SELECT * from cat_marca";
    private static final String buscarMarca = "SELECT * FROM cat_marca WHERE Id_marca = ?";
    private static final String agregarMarca = "INSERT INTO cat_marca SET Marca = ?";
    private static final String eliminarMarca = "DELETE FROM cat_marca WHERE Id_marca = ?";
    
  
    public List<Marca> listadoMarca() throws SQLException{
    List<Marca> marca=new ArrayList<>();
    this.stmt = this.conexion.prepareStatement(this.listadoMarca);
    this.rs = this.stmt.executeQuery();
    while (this.rs.next()){
        marca.add(new Marca(this.rs.getInt("Id_marca"),this.rs.getString("Marca")));
    }
    return marca;
    }
    
    public boolean agregarMarca(Marca marca) throws SQLException{
        this.stmt = this.conexion.prepareStatement(this.agregarMarca);
      
        this.stmt.setString(1, marca.getMarca());
        
        if(this.stmt.executeUpdate() == 1){
            return true;
        }else{
             return false;
        }
    }
    
    public List<Marca> BuscarMarcaId(int id) throws SQLException {
        List<Marca> marcaId = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(this.buscarMarca);
        this.stmt.setInt(1, id);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            marcaId.add(new Marca(this.rs.getString("Marca")));
        }
        return marcaId;
    }
    
   
    
    public boolean eliminarMarca(Marca marca) throws SQLException {
        this.stmt = this.conexion.prepareStatement(this.eliminarMarca);
        stmt.setInt(1, marca.getId_marca());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
    
    
}