/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.codecompass.msys.DAO;

import br.senac.tads.pi3.codecompass.msys.model.Funcionario;
import br.senac.tads.pi3.codecompass.msys.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author renan.lsilva3
 */
public class LoginDAO {

    private Connection conn;

    public LoginDAO() throws Exception {
        try {
            this.conn = ConnectionFactory.getConnection(); //método q realiza a conexão
            System.out.println("Conectado com sucesso!");
        } catch (Exception ex) {
            throw new Exception("Problemas ao conectar no BD! Erro: " + ex.getMessage());
        }
    }

    public Funcionario validar(String loginFuncionario, String senhaFuncionario) {

        List<Funcionario> resultados = new ArrayList<Funcionario>();
        PreparedStatement stmt = null;
        ResultSet rs = null; //rs=coluna do banco

        String sql = "SELECT * FROM Funcionario WHERE Login_Funcionario ='" + loginFuncionario + "' AND  Senha_Funcionario ='" + senhaFuncionario + "'";

        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                int IdFuncionario = rs.getInt("ID_FUNCIONARIO");
                String NomeFuncionario = rs.getString("NOME_FUNCIONARIO");
                String LoginFuncionario = rs.getString("LOGIN_FUNCIONARIO");
                String SenhaFuncionario = rs.getString("Senha_Funcionario");
                String CargoFuncionario = rs.getString("Cargo_Funcionario");
                String EmailFuncionario = rs.getString("Email_Funcionario");
                String FilialFuncionario = rs.getString("Filial_Funcionario");
                String SituacaoFuncionario = rs.getString("Situacao_Funcionario");
                String PerfilFuncionario = rs.getString("Perfil_Funcionario");

                if (SenhaFuncionario.equals(senhaFuncionario)) {
                    Funcionario funcionario = new Funcionario();

                    funcionario.setIdFuncionario(IdFuncionario);
                    funcionario.setNomeFuncionario(NomeFuncionario);
                    funcionario.setLoginFuncionario(LoginFuncionario);
                    funcionario.setSenhaFuncionario(SenhaFuncionario);
                    funcionario.setCargoFuncionario(CargoFuncionario);
                    funcionario.setEmailFuncionario(EmailFuncionario);
                    funcionario.setFilialFuncionario(FilialFuncionario);
                    funcionario.setSituacaoFuncionario(SituacaoFuncionario);
                    funcionario.setPerfilFuncionario(PerfilFuncionario);

                    return funcionario;
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(Funcionario.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Funcionario.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Funcionario.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

        return null;
    }
}
