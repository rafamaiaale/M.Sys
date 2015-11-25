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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
        String sql = "INSERT INTO VENDAS(VALOR_VENDA, DATA_VENDA, QNT_VENDA, ID_PRODUTO, ID_FUNCIONARIO) values (?, ?, ?, ?, ?)";

        try {
            stmt = conn.prepareStatement(sql);
            stmt.setDouble(1, venda.getValorVendas());
            stmt.setDate(2, new java.sql.Date(venda.getDataVendas().getTime()));
            stmt.setInt(3, venda.getQntVendas());
            stmt.setLong(4, venda.getIdProduto());
            stmt.setLong(5, venda.getIdFuncionario());

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

    public List<Vendas> relatorio() {

        List<Vendas> resultado = new ArrayList<Vendas>();
        PreparedStatement stmt = null;
        ResultSet rs = null; //rs=coluna do banco

        String sql = "SELECT C.NOME_FUNCIONARIO, C.FILIAL_FUNCIONARIO, B.NOME_PRODUTO, B.TIPO_PRODUTO, A.VALOR_VENDA, A.QNT_VENDA, A.DATA_VENDA FROM VENDAS A\n"
                + "INNER JOIN PRODUTO B ON A.ID_PRODUTO=B.ID_PRODUTO\n"
                + "INNER JOIN FUNCIONARIO C ON A.ID_FUNCIONARIO=C.ID_FUNCIONARIO";

        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Vendas venda = new Vendas();

                venda.setNomeFuncionario(rs.getString("NOME_FUNCIONARIO"));
                venda.setFilialFuncionario(rs.getString("FILIAL_FUNCIONARIO"));
                venda.setNomeProduto(rs.getString("NOME_PRODUTO"));
                venda.setTipoProduto(rs.getString("TIPO_PRODUTO"));
                venda.setValorVendas(rs.getDouble("VALOR_VENDA"));
                venda.setDataVendas(rs.getDate("DATA_VENDA"));
                venda.setQntVendas(rs.getInt("QNT_VENDA"));

                resultado.add(venda);

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
    
    public List<Vendas> relatorioPorFilial(String filial) {

        List<Vendas> resultado = new ArrayList<Vendas>();
        PreparedStatement stmt = null;
        ResultSet rs = null; //rs=coluna do banco

        String sql = "SELECT C.NOME_FUNCIONARIO, C.FILIAL_FUNCIONARIO, B.NOME_PRODUTO, B.TIPO_PRODUTO, A.VALOR_VENDA, A.QNT_VENDA, A.DATA_VENDA FROM VENDAS A\n"
                + "INNER JOIN PRODUTO B ON A.ID_PRODUTO=B.ID_PRODUTO\n"
                + "INNER JOIN FUNCIONARIO C ON A.ID_FUNCIONARIO=C.ID_FUNCIONARIO WHERE C.FILIAL_FUNCIONARIO = '" + filial + "'";

        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Vendas venda = new Vendas();

                venda.setNomeFuncionario(rs.getString("NOME_FUNCIONARIO"));
                venda.setFilialFuncionario(rs.getString("FILIAL_FUNCIONARIO"));
                venda.setNomeProduto(rs.getString("NOME_PRODUTO"));
                venda.setTipoProduto(rs.getString("TIPO_PRODUTO"));
                venda.setValorVendas(rs.getDouble("VALOR_VENDA"));
                venda.setDataVendas(rs.getDate("DATA_VENDA"));
                venda.setQntVendas(rs.getInt("QNT_VENDA"));

                resultado.add(venda);

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

}
