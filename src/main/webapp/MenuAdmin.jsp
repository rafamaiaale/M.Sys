<%-- 
    Document   : MenuAdmin
    Created on : 16/11/2015, 20:07:07
    Author     : lucas.dndomingues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="style.css" rel="stylesheet" type="text/css"/>


        <title>Acesso - Painel Administrativo</title>

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

                    <!-- Produtos -->
                    <li class="sidebar-brand">
                        <a href="MenuAdmin.jsp">Painel Administrativo</a>
                    </li>
                    <li>
                        <a href="#">Relatório de Produtos</a>
                    </li>
                    <li>
                        <a href="#">Relatório de Vendas</a>
                    </li>
                    <li>
                        <a href="index.jsp">Deslogar do Sistema</a>
                    </li>
                </ul>
            </div>
            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- <a href="#menu-toggle" class="btn btn-default glyphicon glyphicon-list" id="menu-toggle"></a> -->

                            <div class="jumbotron">
                                <h1>Olá, Bem vindo!</h1>
                                <div class="panel panel-default">
                                    <div class="panel-body" id="menu-toggle">
                                        <h3><span class="label label-default">Painel Administrativo</span></h3>
                                    </div>
                                </div>
                                <hr>
                                <h6>M.Sys ©2015 - Todos os Direitos Reservados</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery -->
        <script src="content/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="content/js/bootstrap.min.js"></script>

        <!-- Menu Toggle Script -->
        <script>
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });
        </script>
    </body>
</html>