/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Date;

/**
 *
 * @author NELSON
 */
public class Liquidacion {
    private Integer id;
    private Integer codModelo;
    private String codConcepto;
    private String codEmpleado;
    private Integer numProceso;
    private Double valor;
    private Date fecha;

    public Liquidacion() {
    }

    public Liquidacion(Integer id, Integer codModelo, String codConcepto, String codEmpleado, Integer numProceso, Double valor, Date fecha) {
        this.id = id;
        this.codModelo = codModelo;
        this.codConcepto = codConcepto;
        this.codEmpleado = codEmpleado;
        this.numProceso = numProceso;
        this.valor = valor;
        this.fecha = fecha;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCodModelo() {
        return codModelo;
    }

    public void setCodModelo(Integer codModelo) {
        this.codModelo = codModelo;
    }

    public String getCodConcepto() {
        return codConcepto;
    }

    public void setCodConcepto(String codConcepto) {
        this.codConcepto = codConcepto;
    }

    public String getCodEmpleado() {
        return codEmpleado;
    }

    public void setCodEmpleado(String codEmpleado) {
        this.codEmpleado = codEmpleado;
    }

    public Integer getNumProceso() {
        return numProceso;
    }

    public void setNumProceso(Integer numProceso) {
        this.numProceso = numProceso;
    }

    public Double getValor() {
        return valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
}
