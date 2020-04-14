/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import config.Conexion;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Empleado;

/**
 *
 * @author NELSON
 */
public class EmpleadoDAO {
    Conexion con = null;
    
    public EmpleadoDAO() {
        
        con = Conexion.getConexion();
    }
    
    public void insertar(Empleado empleado){
        String sql="insert into empleado (codigo,cedula,nombre,fechanacimiento,fechaingreso,fecharetiro) values('"+empleado.getCodigo()+"','"+empleado.getCedula()+"','"+empleado.getNombre()+"','"+empleado.getFechaNacimiento()+"','"+empleado.getFechaIngreso()+"','"+empleado.getFechaRetiro()+"')";
        try {
            con.insert(sql);
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Empleado buscar(Empleado empleado){
        Empleado m = new Empleado();
        String sql="select * from empleado where codigo='"+empleado.getCodigo()+"'";
        try {
          m = con.query(sql);
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return m;
    }
    public void actualizar(Empleado empleado){
String sql = "update empleado set fecharetiro='"+empleado.getFechaRetiro()+"' where codigo='"+empleado.getCodigo()+"'";
try {
          con.actualizar(sql);
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
}
}
