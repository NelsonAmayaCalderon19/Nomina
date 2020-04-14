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
public class Concepto {
 private String codConcepto;   
 private Integer tipo;
 private String codTercero;

    public Concepto() {
    }

    public Concepto(String codConcepto, Integer tipo, String codTercero) {
        this.codConcepto = codConcepto;
        this.tipo = tipo;
        this.codTercero = codTercero;
    }

    public String getCodConcepto() {
        return codConcepto;
    }

    public void setCodConcepto(String codConcepto) {
        this.codConcepto = codConcepto;
    }

    public Integer getTipo() {
        return tipo;
    }

    public void setTipo(Integer tipo) {
        this.tipo = tipo;
    }

    public String getCodTercero() {
        return codTercero;
    }

    public void setCodTercero(String codTercero) {
        this.codTercero = codTercero;
    }
 
}
