/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.codecompass.msys.DAO;

import br.senac.tads.pi3.codecompass.msys.model.Produto;
import br.senac.tads.pi3.codecompass.msys.model.Vendas;
import br.senac.tads.pi3.codecompass.msys.util.ConnectionFactory;
import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class VendasDAO {

    private Connection conn;

    public VendasDAO() throws Exception {
        try {
            this.conn = ConnectionFactory.getConnection(); //método q realiza a conexão
            System.out.println("Conectado com sucesso!");
        } catch (Exception ex) {
            throw new Exception("Problemas ao conectar no BD! Erro: " + ex.getMessage());
        }
    }
    
    public Boolean cadastrar(Vendas object) {
        Vendas venda = (Vendas) object;
        PreparedStatement stmt = null;
        String sql = "INSERT INTO VENDAS(VALOR_VENDA, DATA_VENDA, ID_PRODUTO, ID_FUNCIONARIO) values (?, ?, ?, ?)";

        try {
            stmt = conn.prepareStatement(sql);
            stmt.setDouble(1, venda.getValorVendas());
            stmt.setDate(2, new java.sql.Date(venda.getDataVendas().getTime()));
            stmt.setLong(3, venda.getIdProduto());
            stmt.setLong(4, venda.getIdFuncionario());

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
    
    public Boolean alterar(Vendas object, int qnt) {
        Vendas venda = (Vendas) object;
        PreparedStatement stmt = null;
        String sql = "update produto set Qnt_Produto=? where Id_Produto=?";

        try {
            stmt = conn.prepareStatement(sql);

            stmt.setInt(1, qnt);
            stmt.setInt(2, venda.getIdProduto());
            
            stmt.executeUpdate();
            System.out.println("Passou Aqui");
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
