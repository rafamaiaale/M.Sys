<%-- 
    Document   : ListaUsuario
    Created on : 15/11/2015, 21:17:31
    Author     : Lucas Dantas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <a href="MenuProduto.jsp">Menu - Produto</a>
                    </li>
                    <li>
                        <a href="CadastroProduto.jsp">Cadastrar Produtos</a>
                    </li>
                    <li>
                        <a href="ListaUsuario.jsp">Listar Usuários</a>
                    </li>
                    <li>
                        <a href="AlterarUsuario.jsp">Atualizar Produtos</a>
                    </li>
                    <li>
                        <a href="index.jsp">Deslogar do sistema</a>
                    </li>
                </ul>
            </div>
            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    
                    <!-- Alert -->
                    <div class="alert alert-success" role="alert">Busca efetuada com sucesso!</div>

                    <div class="alert alert-danger" role="alert">Erro ao listar usuários, tente novamente</div>

                    <div class="row">
                        <h1 class="well">Listar Usuário</h1>
                        <div class="col-md-12">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
