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
public class Comercial extends Funcionario{

    private String perfil = "cmr";
    
    public Comercial(String Nome_Funcionario, String Login_Funcionario, String Senha_Funcionario, String Cargo_Funcionario, String Email_Funcionario, String Filial_Funcionario, int Situacao_Funcionario, String perfil) {
        super(Nome_Funcionario, Login_Funcionario, Senha_Funcionario, Cargo_Funcionario, Email_Funcionario, Filial_Funcionario, Situacao_Funcionario);
        this.perfil = perfil;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }
    
    
    
}
