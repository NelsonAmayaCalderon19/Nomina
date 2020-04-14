/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import modelo.Empleado;

/**
 *
 * @author NELSON
 */
public class Conexion {
    private Statement statement;
    private PreparedStatement ps;
    private Connection con=null;
    private static Conexion base;
    private String db="nomina";
    private String url="jdbc:mysql://localhost/" +db;
    private String user="root";
    private String pass="";
    
    public Conexion(){      
      try{
            Class.forName("org.gjt.mm.mysql.Driver");
            con=DriverManager.getConnection(this.url, this.user, this.pass);
        }catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, e);
        }
         
    }
    

    public static Conexion getConexion(){
        if(base == null){
           base = new Conexion(); 
        }
        return base;
    }
    
    public void cerrarConexion(){
        try{
            con.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    public Empleado query(String query) throws SQLException{
      Empleado m = new Empleado();
         statement = base.con.createStatement();
        ResultSet res = statement.executeQuery(query);
        while(res.next()){
        m.setCodigo(res.getString(1));
        m.setCedula(res.getString(2));
        m.setNombre(res.getString(3));
        m.setFechaNacimiento(res.getDate(4));
        m.setFechaIngreso(res.getDate(5));
        m.setFechaRetiro(res.getDate(6));
        }
        return m;
    }
    public void delete(String deleteQuery) throws SQLException{
    statement = base.con.createStatement();
        int resdelete = statement.executeUpdate(deleteQuery);
    }
    public int insert(String insertQuery) throws SQLException{
        statement = base.con.createStatement();
        int res = statement.executeUpdate(insertQuery);
        return res;
    }
    
    public int actualizar(String actQuery) throws SQLException{
       Empleado m = new Empleado();
    ps = base.con.prepareStatement(actQuery);
        int resact = ps.executeUpdate();
        
        return resact;
    }
  
}
