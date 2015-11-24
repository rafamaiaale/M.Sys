/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.codecompass.msys.model;

import java.util.Date;


public class Vendas {

    public Vendas() {
    }
    
    private int idVendas;
    private double valorVendas;
    private Date dataVendas;
    private int idProduto;
    private int idFuncionario;

    public int getIdVendas() {
        return idVendas;
    }

    public void setIdVendas(int idVendas) {
        this.idVendas = idVendas;
    }

    public double getValorVendas() {
        return valorVendas;
    }

    public void setValorVendas(double valorVendas) {
        this.valorVendas = valorVendas;
    }

    public Date getDataVendas() {
        return dataVendas;
    }

    public void setDataVendas(Date dataVendas) {
        this.dataVendas = dataVendas;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public int getIdFuncionario() {
        return idFuncionario;
    }

    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }

    
    
    
}
