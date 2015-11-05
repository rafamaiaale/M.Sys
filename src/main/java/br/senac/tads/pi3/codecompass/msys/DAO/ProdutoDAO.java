/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.codecompass.msys.DAO;

import br.senac.tads.pi3.codecompass.msys.model.Produto;
import br.senac.tads.pi3.codecompass.msys.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProdutoDAO implements GenericDAO<Produto> {

    private Connection conn;

    public ProdutoDAO() throws Exception {
        try {
            this.conn = ConnectionFactory.getConnection(); //método q realiza a conexão
            System.out.println("Conectado com sucesso!");
        } catch (Exception ex) {
            throw new Exception("Problemas ao conectar no BD! Erro: " + ex.getMessage());
        }
    }

    @Override
    public Boolean cadastrar(Produto object) {
        Produto produto = (Produto) object;
        PreparedStatement stmt = null;
        String sql = "INSERT INTO Produto (Cod_Produto, Nome_Produto, Tipo_Produto, Cor_Produto, Valor_Produto, Fabricante_Produto, Modelo_Produto, Qnt_Produto)\n"
                + "values (?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, produto.getCod_Produto());
            stmt.setString(2, produto.getNome_Produto());
            stmt.setString(3, produto.getTipo_Produto());
            stmt.setString(4, produto.getCor_Produto());
            stmt.setDouble(5, produto.getValor_Produto());
            stmt.setString(6, produto.getFabricante_Produto());
            stmt.setString(7, produto.getModelo_Produto());
            stmt.setInt(8, produto.getQnt_Produto());
            stmt.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println("Problemas ao cadastrar Produto! Erro: " + ex.getMessage());
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
    public List<Produto> listar() {
        List<Produto> resultado = new ArrayList<Produto>();
        PreparedStatement stmt = null;
        ResultSet rs = null; //rs=coluna do banco

        String sql = "Select * from Produto";

        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Produto produto = new Produto();

                produto.setID_Produto(rs.getInt("ID_Produto"));
                produto.setNome_Produto(rs.getString("Nome_Produto"));
                produto.setTipo_Produto(rs.getString("Tipo_Produto"));
                produto.setCor_Produto(rs.getString("Cor_Produto"));
                produto.setValor_Produto(rs.getDouble("Valor_Produto"));
                produto.setFabricante_Produto(rs.getString("Fabricante_Produto"));
                produto.setModelo_Produto(rs.getString("Modelo_Produto"));
                produto.setQnt_Produto(rs.getInt("Qnt_Produto"));

                resultado.add(produto);

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

    @Override
    public Boolean alterar(Produto object) {
        Produto produto = (Produto) object;
        PreparedStatement stmt = null;
        String sql = "update produto set Nome_Produto=?, Tipo_Produto=?, Data_Produto=?, Cor_Produto=?, Valor__Produto=?, Marca__Produto=?, Modelo__Produto=? where ID_Produto=?;" ;

        try {
            stmt = conn.prepareStatement(sql);
            
            stmt.setInt(1, produto.getCod_Produto());
            stmt.setString(2, produto.getNome_Produto());
            stmt.setString(3, produto.getTipo_Produto());
            stmt.setString(4, produto.getCor_Produto());
            stmt.setDouble(5, produto.getValor_Produto());
            stmt.setString(6, produto.getFabricante_Produto());
            stmt.setString(7, produto.getModelo_Produto());
            stmt.setInt(7, produto.getQnt_Produto());
            
            
            stmt.executeUpdate();
            return true;
            
        } catch (SQLException ex) {
            System.out.println("Problemas ao alterar Produto! Erro: " + ex.getMessage());
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
