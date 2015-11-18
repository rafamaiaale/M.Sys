/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.codecompass.msys.control;

import br.senac.tads.pi3.codecompass.msys.DAO.GenericDAO;
import br.senac.tads.pi3.codecompass.msys.DAO.ProdutoDAO;
import br.senac.tads.pi3.codecompass.msys.model.Produto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rafael.malexandre
 */
@WebServlet(name = "CadastrarProduto", urlPatterns = {"/CadastrarProduto"})
public class CadastrarProduto extends HttpServlet {

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
        
        String mensagem=null;
        Integer codProduto = Integer.parseInt(request.getParameter("codP"));
        String nomeProduto = request.getParameter("nameP");
        String nomeFabricante = request.getParameter("fabP");
        String modeloProduto = request.getParameter("modelP");
        String tipoProduto = request.getParameter("tipoP");
        String corProduto = request.getParameter("corP");
        Double valorProduto = Double.parseDouble(request.getParameter("valP"));
        Integer qntProduto = Integer.parseInt(request.getParameter("quanP"));
        
        Produto produto = new Produto();
        
        produto.setCodProduto(codProduto);
        produto.setNomeProduto(nomeProduto);
        produto.setFabricanteProduto(nomeFabricante);
        produto.setModeloProduto(modeloProduto);
        produto.setTipoProduto(tipoProduto);
        produto.setCorProduto(corProduto);
        produto.setValorProduto(valorProduto);
        produto.setQntProduto(qntProduto);
        
        try{
            GenericDAO dao = new ProdutoDAO();
            if(dao.cadastrar(produto)){
                mensagem="Produto cadastrado com sucesso!!";
            }
            else{
                mensagem="Problemas ao cadastrar Produto";
            }
            request.setAttribute("mensagem", mensagem);
            RequestDispatcher rd = request.getRequestDispatcher("/MenuProduto.jsp");
            rd.forward(request, response);
        }
        catch (Exception ex){
            System.out.println("Problemas no Servlet ao cadastrar produto! Erro: " + ex.getMessage());
            ex.printStackTrace();
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
