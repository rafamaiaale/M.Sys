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
        String sql = "INSERT INTO Funcionario (Nome_Funcionario, Login_Funcionario, Senha_Funcionario, "
                + "Cargo_Funcionario, Email_Funcionario, Filial_Funcionario, Situacao_Funcionario, Perfil_Funcionario)\n"
                + "values (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, usuario.getID_Funcionario());
            stmt.setString(1, usuario.getNome_Funcionario());
            stmt.setString(2, usuario.getLogin_Funcionario());
            stmt.setString(3, usuario.getSenha_Funcionario());
            stmt.setString(4, usuario.getCargo_Funcionario());
            stmt.setString(5, usuario.getEmail_Funcionario());
            stmt.setString(6, usuario.getFilial_Funcionario());
            stmt.setInt(7, usuario.getSituacao_Funcionario());
            stmt.setString(8, usuario.getPerfil_Funcionario());
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

        String sql = "Select * from Produto";

        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Funcionario funcionario = new Funcionario();

                funcionario.setID_Funcionario(rs.getInt("ID_Funcionario"));
                funcionario.setNome_Funcionario(rs.getString("Nome_Funcionario"));
                funcionario.setLogin_Funcionario(rs.getString("Login_Funcionario"));
                funcionario.setSenha_Funcionario(rs.getString("Senha_Funcionario"));
                funcionario.setCargo_Funcionario(rs.getString("Cargo_Funcionario"));
                funcionario.setEmail_Funcionario(rs.getString("Email_Funcionario"));
                funcionario.setFilial_Funcionario(rs.getString("Marca_Produto"));
                funcionario.setSituacao_Funcionario(rs.getInt("Situacao_Funcionario"));
                funcionario.setPerfil_Funcionario(rs.getString("Perfil_Funcionario"));

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

        String sql = "Select * from Produto where ID_Produto = " + id;

        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
//                Funcionario produto = new Funcionario();
//
//                produto.setID_Produto(rs.getInt("ID_Produto"));
//                produto.setCod_Produto(rs.getInt("Cod_Produto"));
//                produto.setNome_Produto(rs.getString("Nome_Produto"));
//                produto.setFabricante_Produto(rs.getString("Fabricante_Produto"));
//                produto.setTipo_Produto(rs.getString("Tipo_Produto"));
//                produto.setCor_Produto(rs.getString("Cor_Produto"));
//                produto.setValor_Produto(rs.getDouble("Valor_Produto"));
//                produto.setModelo_Produto(rs.getString("Modelo_Produto"));
//                produto.setQnt_Produto(rs.getInt("Qnt_Produto"));
//
//                resultado.add(produto);

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
            stmt.setInt(1, funcionario.getID_Funcionario());
            stmt.setString(1, funcionario.getNome_Funcionario());
            stmt.setString(2, funcionario.getLogin_Funcionario());
            stmt.setString(3, funcionario.getSenha_Funcionario());
            stmt.setString(4, funcionario.getCargo_Funcionario());
            stmt.setString(5, funcionario.getEmail_Funcionario());
            stmt.setString(6, funcionario.getFilial_Funcionario());
            stmt.setInt(7, funcionario.getSituacao_Funcionario());
            stmt.setString(8, funcionario.getPerfil_Funcionario());
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
