/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelDAO.EmpleadoDAO;
import modelo.Empleado;

/**
 *
 * @author NELSON
 */
public class Control extends HttpServlet {
String codigo,cedula,nombre,nacimiento,ingreso,retiro="";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        
        
        request.setCharacterEncoding("UTF-8");
        
        String accion = request.getParameter("accion");
        String menu = request.getParameter("menu");   
        Empleado m = new Empleado();
        EmpleadoDAO mdao = new EmpleadoDAO();
         if(menu.equalsIgnoreCase("Empleado")){
            switch (accion){
                case "Registrar":
                    codigo = request.getParameter("codigo");
                    cedula = request.getParameter("cedula");
                    nombre = request.getParameter("nombre");
        nacimiento = request.getParameter("nacimiento");
        ingreso = request.getParameter("ingreso");
        retiro = request.getParameter("retiro");
          Date date=Date.valueOf(nacimiento);
 Date date2=Date.valueOf(ingreso);
  Date date3=Date.valueOf(retiro);
                m.setCodigo(codigo);
                m.setCedula(cedula);
		m.setNombre(nombre);
		m.setFechaNacimiento(date);
		m.setFechaIngreso(date2);
		m.setFechaRetiro(date3);
                mdao.insertar(m);
		request.getRequestDispatcher("/index.jsp").forward(request, response);

                    break;
                case "Buscar":
                    String cod = request.getParameter("campo");                   
		m.setCodigo(cod);
                m = mdao.buscar(m);
                
                if(m.getCedula()!=null){
                    request.setAttribute("empleado", m);
                request.getRequestDispatcher("actualizar.jsp").forward(request, response);
                }else{
                   request.getRequestDispatcher("buscar.jsp").forward(request, response);
                }
                    break;
                    case "Actualizar":
                        codigo = request.getParameter("codigo");
        retiro = request.getParameter("retiro");                  
                m.setCodigo(codigo); 
                 Date date_act=Date.valueOf(retiro);
		m.setFechaRetiro(date_act);               
                mdao.actualizar(m);
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                        break;
                   
                default:
                    throw new AssertionError();
            }   
            //request.getRequestDispatcher("registrar.jsp").forward(request, response);
            }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
