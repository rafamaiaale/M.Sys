<%-- 
    Document   : Menu.jsp
    Created on : 30/10/2015, 20:21:01
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


        <title>Gestão de Produtos</title>

        <!-- Bootstrap Core CSS -->
        <link href="content/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="content/css/simple-sidebar.css" rel="stylesheet">

    </head>
    <body>
        
         <!-- Sidebar -->
        <div id="wrapper">
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <li class="sidebar-brand">
                        <a href="#">
                            Menu - Produto
                        </a>
                    </li>
                    <li>
                        <a href="#">Dashboard - Funcionario</a>
                    </li>
                    <li>
                        <a href="#">Cadastrar Produto</a>
                    </li>
                    <li>
                        <a href="#">Buscar Produto</a>
                    </li>
                    <li>
                        <a href="#">Editar Produto</a>
                    </li>
                    <li>
                        <a href="#">Deslogar do sistema</a>
                    </li>
                </ul>
            </div>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>Simple Sidebar</h1>
                            <p>Testando menu com bootstrap</p>
                            <p></code>M.sys | Web Solutions</p>
                            <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Testar Menu</a>
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