/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.codecompass.msys.model;

import java.sql.Date;

/**
 *
 * @author rafael.malexandre
 */
public class Produto {

    public Produto(int ID_Produto, int Cod_Produto, String Nome_Produto, String Tipo_Produto, Date Data_Produto, String Cor_Produto, double Valor_Produto, String Marca_Produto, String Modelo_Produto) {
        this.ID_Produto = ID_Produto;
        this.Cod_Produto = Cod_Produto;
        this.Nome_Produto = Nome_Produto;
        this.Tipo_Produto = Tipo_Produto;
        this.Data_Produto = Data_Produto;
        this.Cor_Produto = Cor_Produto;
        this.Valor_Produto = Valor_Produto;
        this.Marca_Produto = Marca_Produto;
        this.Modelo_Produto = Modelo_Produto;
    }

    private int ID_Produto;
    private int Cod_Produto;
    private String Nome_Produto;
    private String Tipo_Produto;
    private Date Data_Produto;
    private String Cor_Produto;
    private double Valor_Produto;
    private String Marca_Produto;
    private String Modelo_Produto;

    public Produto() {
    }

    public int getID_Produto() {
        return ID_Produto;
    }

    public void setID_Produto(int ID_Produto) {
        this.ID_Produto = ID_Produto;
    }

    public int getCod_Produto() {
        return Cod_Produto;
    }

    public void setCod_Produto(int Cod_Produto) {
        this.Cod_Produto = Cod_Produto;
    }

    public String getNome_Produto() {
        return Nome_Produto;
    }

    public void setNome_Produto(String Nome_Produto) {
        this.Nome_Produto = Nome_Produto;
    }

    public String getTipo_Produto() {
        return Tipo_Produto;
    }

    public void setTipo_Produto(String Tipo_Produto) {
        this.Tipo_Produto = Tipo_Produto;
    }

    public Date getData_Produto() {
        return Data_Produto;
    }

    public void setData_Produto(Date Data_Produto) {
        this.Data_Produto = Data_Produto;
    }

    public String getCor_Produto() {
        return Cor_Produto;
    }

    public void setCor_Produto(String Cor_Produto) {
        this.Cor_Produto = Cor_Produto;
    }

    public double getValor_Produto() {
        return Valor_Produto;
    }

    public void setValor_Produto(double Valor_Produto) {
        this.Valor_Produto = Valor_Produto;
    }

    public String getMarca_Produto() {
        return Marca_Produto;
    }

    public void setMarca_Produto(String Marca_Produto) {
        this.Marca_Produto = Marca_Produto;
    }

    public String getModelo_Produto() {
        return Modelo_Produto;
    }

    public void setModelo_Produto(String Modelo_Produto) {
        this.Modelo_Produto = Modelo_Produto;
    }

}
