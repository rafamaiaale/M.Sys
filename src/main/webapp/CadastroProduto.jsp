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

        <link href="style.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>

        <!-- Sidebar -->
        <div id="wrapper">
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <li class="sidebar-brand">
                        <a href="MenuProduto.jsp">
                            Menu - Produto
                        </a>
                    </li>
                    <li>
                        <a href="CadastroProduto.jsp">Cadastrar Produto</a>
                    </li>
                    <li>
                        <a href="ListaProduto.jsp">Pesquisar Produto</a>
                    </li>
                    <li>
                        <a href="#">Atualizar Produto</a>
                    </li>
                    <li>
                        <a href="index.jsp">Deslogar do sistema</a>
                    </li>

                </ul>
            </div>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="col-md-12">
                        <div class="row">   
                            <form class="cadastro" action="CadastrarProduto" method="post">

                                <legend><b><h1>Cadastro de Produto</h1></b></legend>
                                <div>
                                    <label for="codP"><b>Código do Produto</b></label>
                                    <input type="text" class="form-control" id="codP" name="codP"/>
                                </div>
                                <div>
                                    <label for="nomeP"><b>Nome do Produto</b></label>
                                    <input type="text" class="form-control" id="nomeP" name="nameP"/>
                                </div>
                                <div>
                                    <label for="fabP"><b>Fabricante</b></label>
                                    <input type="text" class="form-control" id="fab" name="fabP" />
                                </div>
                                <div>
                                    <label for="model"><b>Modelo</b></label>
                                    <input type="text" class="form-control" id="modelP" name="modelP" />
                                </div>
                                <div>
                                    <label for="tipP"><b>Tipo do Produto</b></label>
                                    <select name="tipoP" class="form-control">
                                        <option value="default" selected="selected">Selecione</option>
                                        <option value="audio">Audio</option>
                                        <option value="cordas">Cordas</option>
                                        <option value="percurssao">Percurssão</option>
                                        <option value="tecla">Teclas</option>
                                    </select>
                                </div>

                                <div>
                                    <label for="cor"><b>Cor</b></label>
                                    <input type="text" class="form-control" id="corP" name="corP" />
                                </div>
                                <div>
                                    <label for="val"><b>Valor</b></label>
                                    <input type="text" class="form-control" id="valP" name="valP" />
                                </div>
                                <div>
                                    <label for="quant"><b>Quantidade</b></label>
                                    <input type="text" class="form-control" id="quanP" name="quanP" />
                                </div>

                                <hr>
                                <button id="btS" class="btn btn-info" type="submit">Salvar</button>
                                <button id="btV" class="btn btn-danger"  type="submit" onClick="history.go(-1)">Voltar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="content/js/jquery.js"></script>
        <script src="content/js/bootstrap.min.js"></script>

    </body>
</html>
