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

public class FuncionarioDAO implements GenericDAO<Funcionario> {

    private Connection conn;

    public FuncionarioDAO() throws Exception {
        try {
            this.conn = ConnectionFactory.getConnection(); //método q realiza a conexão
            System.out.println("Conectado com sucesso!");
        } catch (Exception ex) {
            throw new Exception("Problemas ao conectar no BD! Erro: " + ex.getMessage());
        }
    }

    @Override
    public Boolean cadastrar(Funcionario object) {
        Funcionario usuario = (Funcionario) object;
        PreparedStatement stmt = null;
        String sql = "INSERT INTO Funcionario (NOME_FUNCIONARIO, LOGIN_FUNCIONARIO, SENHA_FUNCIONARIO, CARGO_FUNCIONARIO, EMAIL_FUNCIONARIO, FILIAL_FUNCIONARIO, SITUACAO_FUNCIONARIO, PERFIL_FUNCIONARIO)\n"
                + "values (?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getNomeFuncionario());
            stmt.setString(2, usuario.getLoginFuncionario());
            stmt.setString(3, usuario.getSenhaFuncionario());
            stmt.setString(4, usuario.getCargoFuncionario());
            stmt.setString(5, usuario.getEmailFuncionario());
            stmt.setString(6, usuario.getFilialFuncionario());
            stmt.setString(7, usuario.getSituacaoFuncionario());
            stmt.setString(8, usuario.getPerfilFuncionario());
            stmt.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println("Problemas ao cadastrar Usuario! Erro: " + ex.getMessage());
            ex.printStackTrace();
            return false;
        } finally {
            try {
                ConnectionFactory.closeConnection(conn, stmt);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar os parâmetros de conexão! Erro: " + ex.getMessage());
                ex.printStackTrace();
            }
        }
    }

    @Override
    public List<Funcionario> listar() {
        List<Funcionario> resultado = new ArrayList<Funcionario>();
        PreparedStatement stmt = null;
        ResultSet rs = null; //rs=coluna do banco

        String sql = "Select * from Funcionario";

        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Funcionario funcionario = new Funcionario();

                funcionario.setIdFuncionario(rs.getInt("ID_FUNCIONARIO"));
                funcionario.setNomeFuncionario(rs.getString("NOME_FUNCIONARIO"));
                funcionario.setLoginFuncionario(rs.getString("LOGIN_FUNCIONARIO"));
                funcionario.setSenhaFuncionario(rs.getString("Senha_Funcionario"));
                funcionario.setCargoFuncionario(rs.getString("Cargo_Funcionario"));
                funcionario.setEmailFuncionario(rs.getString("Email_Funcionario"));
                funcionario.setFilialFuncionario(rs.getString("Filial_Funcionario"));
                funcionario.setSituacaoFuncionario(rs.getString("Situacao_Funcionario"));
                funcionario.setPerfilFuncionario(rs.getString("Perfil_Funcionario"));

                resultado.add(funcionario);

            }
        } catch (Exception ex) {
            System.out.println("Problemas as listar Produtos! Erro: " + ex.getMessage());
            ex.printStackTrace();
        } finally {
            try {
                ConnectionFactory.closeConnection(conn, stmt);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar os parâmetros de conexão! Erro: " + ex.getMessage());
                ex.printStackTrace();
            }

        }

        return resultado;
    }

    
    public List<Funcionario> buscarPorID(Integer id) {
        List<Funcionario> resultado = new ArrayList<Funcionario>();
        PreparedStatement stmt = null;
        ResultSet rs = null; //rs=coluna do banco

        String sql = "Select * from Funcionario where ID_Funcionario = " + id;

        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Funcionario funcionario = new Funcionario();

                funcionario.setIdFuncionario(rs.getInt("ID_Funcionario"));
                funcionario.setNomeFuncionario(rs.getString("Nome_Funcionario"));
                funcionario.setLoginFuncionario(rs.getString("Login_Funcionario"));
                funcionario.setSenhaFuncionario(rs.getString("Senha_Funcionario"));
                funcionario.setCargoFuncionario(rs.getString("Cargo_Funcionario"));
                funcionario.setEmailFuncionario(rs.getString("Email_Funcionario"));
                funcionario.setSituacaoFuncionario(rs.getString("Situacao_Funcionario"));
                funcionario.setPerfilFuncionario(rs.getString("Perfil_Funcionario"));

                resultado.add(funcionario);

            }
        } catch (Exception ex) {
            System.out.println("Problemas as listar Produtos! Erro: " + ex.getMessage());
            ex.printStackTrace();
        } finally {
            try {
                ConnectionFactory.closeConnection(conn, stmt);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar os parâmetros de conexão! Erro: " + ex.getMessage());
                ex.printStackTrace();
            }

        }

        return resultado;
    }
    
    public Boolean alterar(Funcionario object) {
        Funcionario funcionario = (Funcionario) object;
        PreparedStatement stmt = null;
        String sql = "update funcionario set Nome_Funcionario=?, Login_Funcionario=?, Senha_Funcionario=?,"
                + "Cargo_Funcionario=?, Email_Funcionario=?, Filial_Funcionario=?, Situacao_Funcionario=?,"
                + "Perfil_Funcionario=? where ";

        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, funcionario.getIdFuncionario());
            stmt.setString(1, funcionario.getNomeFuncionario());
            stmt.setString(2, funcionario.getLoginFuncionario());
            stmt.setString(3, funcionario.getSenhaFuncionario());
            stmt.setString(4, funcionario.getCargoFuncionario());
            stmt.setString(5, funcionario.getEmailFuncionario());
            stmt.setString(6, funcionario.getFilialFuncionario());
            stmt.setString(7, funcionario.getSituacaoFuncionario());
            stmt.setString(8, funcionario.getPerfilFuncionario());
            stmt.executeUpdate();
            return true;

        } catch (SQLException ex) {
            System.out.println("Problemas ao alterar Funcionario! Erro: " + ex.getMessage());
            ex.printStackTrace();
            return false;
        } finally {
            try {
                ConnectionFactory.closeConnection(conn, stmt);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar os parâmetros de conexão! Erro: " + ex.getMessage());
                ex.printStackTrace();
            }
        }
    }

}
