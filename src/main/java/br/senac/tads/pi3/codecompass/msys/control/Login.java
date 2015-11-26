/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.codecompass.msys.control;

import br.senac.tads.pi3.codecompass.msys.DAO.LoginDAO;
import br.senac.tads.pi3.codecompass.msys.model.Funcionario;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author renan.lsilva3
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
        HttpSession sessao = request.getSession(false);
        if (sessao == null || sessao.getAttribute("usuario") == null) {
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
            return;
        }
        response.sendRedirect("/");
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
            String produtos = "PRD"; String produtosUrl = "MenuProduto.jsp";
            String vendas = "COM"; String vendasUrl = "MenuVenda.jsp";  
            String suporte = "T.I"; String suporteUrl = "MenuUsuario.jsp";  
        try {
            LoginDAO dao = new LoginDAO();
            String loginFuncionario = request.getParameter("login");
            String senhaFuncionario = request.getParameter("senha");
            
            Funcionario funcionario = dao.validar(loginFuncionario, senhaFuncionario);
            if (funcionario != null) {
                HttpSession sessao = request.getSession(false);
                if (sessao != null) {
                    // Força invalidação da sessão anterior.
                    sessao.invalidate();
                }
                sessao = request.getSession(true);
                sessao.setAttribute("funcionario", funcionario);
                if (funcionario.getPerfilFuncionario().equals(produtos)) {
                response.sendRedirect(produtosUrl);    
                }
                else if (funcionario.getPerfilFuncionario().equals(vendas)) {
                response.sendRedirect(vendasUrl);
                }
                else if (funcionario.getPerfilFuncionario().equals(suporte)) {
                response.sendRedirect(suporteUrl);    
                }                
                // FIM CASO SUCESSO
            }
            response.sendRedirect("index.jsp");
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    
}