<%-- 
    Document   : index
    Created on : Nov 11, 2015, 1:37:58 PM
    Author     : Shuyuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>M.Sys | Autenticação</title>
        <!-- Bootstrap Core CSS -->
        <link href="content/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="content/css/simple-sidebar.css" rel="stylesheet">
        <meta charset="utf-8">
        <title>M.Sys - Login</title>
    </head>
    <body>
        <form action="MenuProduto.jsp" method="post"> <!-- ALTERAR ACTION -->
            <h2>Autenticação de Usuário</h2>
            <input type="text" class="login" placeholder="Login:" required/>
            <input type="password" class="senha" placeholder="Senha:" required/>
            <button class="submit">Entrar</button>
        </form>

        <footer class="rodape"> M.Sys © 2015 - Todos os direitos reservados</footer>
    </body>
</html>
