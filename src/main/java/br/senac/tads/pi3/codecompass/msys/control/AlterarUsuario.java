/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.codecompass.msys.control;

import br.senac.tads.pi3.codecompass.msys.DAO.FuncionarioDAO;
import br.senac.tads.pi3.codecompass.msys.DAO.GenericDAO;
import br.senac.tads.pi3.codecompass.msys.model.Funcionario;
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
 * @author user
 */
@WebServlet(name = "AlterarUsuario", urlPatterns = {"/AlterarUsuario"})
public class AlterarUsuario extends HttpServlet {

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

        String mensagem = null;
        String nomeFuncionario = request.getParameter("name");
        String loginFuncionario = request.getParameter("login");
        String senhaFuncionario = request.getParameter("password");
        String emailFuncionario = request.getParameter("email");
        String cargoFuncionario = request.getParameter("cargo");
        String filialFuncionario = request.getParameter("filial");
        String perfilFuncionario = request.getParameter("perfil");
        String situacaoFuncionario = request.getParameter("situacao");
        
        Funcionario func = new Funcionario();
        
        func.setNomeFuncionario(nomeFuncionario);
        func.setLoginFuncionario(loginFuncionario);
        func.setSenhaFuncionario(senhaFuncionario);
        func.setEmailFuncionario(emailFuncionario);
        func.setCargoFuncionario(cargoFuncionario);
        func.setFilialFuncionario(filialFuncionario);
        func.setPerfilFuncionario(perfilFuncionario);
        func.setSituacaoFuncionario(situacaoFuncionario);
        
        try{
            GenericDAO dao = new FuncionarioDAO();
            if(dao.alterar(func)){
                mensagem="Funcionario cadastrado com sucesso!!";
            }
            else{
                mensagem="Problemas ao cadastrar Funcionario";
            }
            request.setAttribute("mensagem", mensagem);
            RequestDispatcher rd = request.getRequestDispatcher("/MenuUsuario.jsp");
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
