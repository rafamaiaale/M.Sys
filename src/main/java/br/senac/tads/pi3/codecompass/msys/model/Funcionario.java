/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.codecompass.msys.model;

/**
 *
 * @author ricardo.oliveira5
 */
public abstract class Funcionario {

    public Funcionario(String Nome_Funcionario, String Login_Funcionario, String Senha_Funcionario, String Cargo_Funcionario, String Email_Funcionario, String Filial_Funcionario, int Situacao_Funcionario) {
        this.Nome_Funcionario = Nome_Funcionario;
        this.Login_Funcionario = Login_Funcionario;
        this.Senha_Funcionario = Senha_Funcionario;
        this.Cargo_Funcionario = Cargo_Funcionario;
        this.Email_Funcionario = Email_Funcionario;
        this.Filial_Funcionario = Filial_Funcionario;
        this.Situacao_Funcionario = Situacao_Funcionario;
    }
    
    private int ID_Funcionario;
    private String Nome_Funcionario;
    private String Login_Funcionario;
    private String Senha_Funcionario;
    private String Cargo_Funcionario;
    private String Email_Funcionario;
    private String Filial_Funcionario;
    private int Situacao_Funcionario;

    public int getID_Funcionario() {
        return ID_Funcionario;
    }

    public String getNome_Funcionario() {
        return Nome_Funcionario;
    }

    public String getLogin_Funcionario() {
        return Login_Funcionario;
    }

    public String getSenha_Funcionario() {
        return Senha_Funcionario;
    }

    public String getCargo_Funcionario() {
        return Cargo_Funcionario;
    }

    public String getEmail_Funcionario() {
        return Email_Funcionario;
    }

    public String getFilial_Funcionario() {
        return Filial_Funcionario;
    }

    public int getSituacao_Funcionario() {
        return Situacao_Funcionario;
    }

    public void setID_Funcionario(int ID_Funcionario) {
        this.ID_Funcionario = ID_Funcionario;
    }

    public void setNome_Funcionario(String Nome_Funcionario) {
        this.Nome_Funcionario = Nome_Funcionario;
    }

    public void setLogin_Funcionario(String Login_Funcionario) {
        this.Login_Funcionario = Login_Funcionario;
    }

    public void setSenha_Funcionario(String Senha_Funcionario) {
        this.Senha_Funcionario = Senha_Funcionario;
    }

    public void setCargo_Funcionario(String Cargo_Funcionario) {
        this.Cargo_Funcionario = Cargo_Funcionario;
    }

    public void setEmail_Funcionario(String Email_Funcionario) {
        this.Email_Funcionario = Email_Funcionario;
    }

    public void setFilial_Funcionario(String Filial_Funcionario) {
        this.Filial_Funcionario = Filial_Funcionario;
    }

    public void setSituacao_Funcionario(int Situacao_Funcionario) {
        this.Situacao_Funcionario = Situacao_Funcionario;
    }
    
}
