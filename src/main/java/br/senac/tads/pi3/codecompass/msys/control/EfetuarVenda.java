/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.codecompass.msys.control;

import br.senac.tads.pi3.codecompass.msys.DAO.GenericDAO;
import br.senac.tads.pi3.codecompass.msys.DAO.VendasDAO;
import br.senac.tads.pi3.codecompass.msys.model.Vendas;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "EfetuarVenda", urlPatterns = {"/EfetuarVenda"})
public class EfetuarVenda extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Integer qntProduto = Integer.parseInt(request.getParameter("qntP"));
        Integer qntSolicitada = Integer.parseInt(request.getParameter("Quantidade"));

        String mensagem = null;

        if (qntSolicitada < qntProduto) {

            Double valorProduto = Double.parseDouble(request.getParameter("valorP"));
            String dtVendaStr = "2010-01-01";
            int idProduto = Integer.parseInt(request.getParameter("idProduto"));
            int idFuncionario = 1;
            Double valorVenda = valorProduto * qntSolicitada;

            DateFormat formatadorData = new SimpleDateFormat("dd/MM/yyyy");
            Date dtVenda = null;
            try {
                dtVenda = formatadorData.parse(dtVendaStr);
            } catch (ParseException ex) {
                dtVenda = new Date();
            }

            Vendas venda = new Vendas();

            venda.setDataVendas(dtVenda);
            venda.setIdFuncionario(idProduto);
            venda.setIdProduto(idProduto);
            venda.setValorVendas(valorVenda);

            try {
                VendasDAO dao = new VendasDAO();
                if (dao.cadastrar(venda)) {
                    mensagem = "Produto vendido com sucesso!!";

                } else {
                    mensagem = "Problemas ao cadastrar Produto";
                }

                request.setAttribute("mensagem", mensagem);
                RequestDispatcher rd = request.getRequestDispatcher("/RetirarDoEstoque");
                rd.forward(request, response);
            } catch (Exception ex) {
                System.out.println("Problemas no Servlet ao cadastrar produto! Erro: " + ex.getMessage());
                ex.printStackTrace();
            }

        } else {
            mensagem = "Esta quantidade não possui em estoque";
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
