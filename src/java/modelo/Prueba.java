/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import modelo.*;
import modelDAO.*;
import config.*;
import java.sql.Date;
import java.sql.SQLException;
import javax.swing.JOptionPane;
/**
 *
 * @author NELSON
 */
public class Prueba {
    public static void main(String[] args) throws SQLException{
        
        Conexion conexion = Conexion.getConexion();
        Empleado m= new Empleado();
        EmpleadoDAO mdao = new EmpleadoDAO();
String cod = JOptionPane.showInputDialog("Digite el Codigo del Empleado a Buscar");
    m.setCodigo(cod);
     m = mdao.buscar(m);
        System.out.println("Cedula: "+m.getCedula());
        System.out.println("Nombre: "+m.getNombre());
        System.out.println("Fecha de Nacimiento: "+m.getFechaNacimiento());
        System.out.println("Fecha de Ingreso: "+m.getFechaIngreso());
        System.out.println("Fecha de Retiro: "+m.getFechaRetiro());
        
        
        m.setCodigo("48434");
        m.setCedula("203283734");
        m.setNombre("Pedro");
        m.setFechaNacimiento(Date.valueOf("2021-01-01"));
        m.setFechaIngreso(Date.valueOf("2021-04-14"));
        m.setFechaRetiro(Date.valueOf("2022-01-19"));    
        mdao.insertar(m);
        
               
       
    }
}
