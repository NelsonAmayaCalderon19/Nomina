/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author NELSON
 */
public class Codtercero {
  private Integer codTercero;
  private String descripcion;

    public Codtercero() {
    }

    public Codtercero(Integer codTercero, String descripcion) {
        this.codTercero = codTercero;
        this.descripcion = descripcion;
    }

    public Integer getCodTercero() {
        return codTercero;
    }

    public void setCodTercero(Integer codTercero) {
        this.codTercero = codTercero;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
  
}
