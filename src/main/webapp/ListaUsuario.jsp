<%-- 
    Document   : ListaUsuario
    Created on : 15/11/2015, 21:17:31
    Author     : Lucas Dantas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="refresh" content="25"/> <!--PARA TESTE--> 
        <title>Listar Usuários</title>


        <!-- Bootstrap Core CSS -->
        <link href="content/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="content/css/simple-sidebar.css" rel="stylesheet">

        <link href="style.css" rel="stylesheet"> 
    </head>
    <body>
        <!-- Sidebar -->
        <div id="wrapper">
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <li class="sidebar-brand">
                        <a href="MenuUsuario.jsp">Menu - Usuário</a>
                    </li>
                    <li>
                        <a href="CadastroUsuario.jsp">Cadastrar Usuário</a>
                    </li>
                    <li>
                        <a href="ListaUsuario.jsp">Listar Usuários</a>
                    </li>
                    <li>
                        <a href="AlterarUsuario.jsp">Atualizar Usuários</a>
                    </li>
                    <li>
                        <a href="index.jsp">Deslogar do sistema</a>
                    </li>
                </ul>
            </div>

            <!-- Alert -->
            <div class="alert alert-success" role="alert">Busca efetuada com sucesso!</div>

            <div class="alert alert-danger" role="alert">Erro ao listar usuários, tente novamente</div>

            <!-- Page Content -->

            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <h2>Usuários Cadastrados</h2>
                    <hr>                   
                    <table class="table table-striped table-hover table-users">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nome</th>
                                <th>Login</th>
                                <th>E-mail</th>
                                <th>Filial - UF</th>
                                <th>Tipo do Usuário</th>
                                <th>Ativo</th>
                                <th>Departamento</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>CodeCompass</td>
                                <td>Admin</td>
                                <td>codecompass@admin.com</td>
                                <td>SP</td>
                                <td>admin</td>
                                <td>1</td>
                                <td>Comercial</td>
 
                                <td><a class="btn btn-default" href="#">Editar</a></td>
                                <td><a class="btn btn-danger" href="#">Deletar</a></td>
                            </tr>

                        <c:forEach items="${funcionarios}" var="funcionarios">
                            <tr>
                            <td><c:out value="${funcionarios.idFuncionario}" /></td>
                            <td><c:out value="${funcionarios.nomeFuncionario}" /></td>
                            <td><c:out value="${funcionarios.loginFuncionario}" /></td>
                            <td><c:out value="${funcionarios.cargoFuncionario}" /></td>
                            <td><c:out value="${funcionarios.emailFuncionario}" /></td>
                            <td><c:out value="${funcionarios.filialFuncionario}" /></td>
                            <td><c:out value="${funcionarios.situacaoFuncionario}" /></td>
                            <td><c:out value="${funcionarios.perfilFuncionario}" /></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
