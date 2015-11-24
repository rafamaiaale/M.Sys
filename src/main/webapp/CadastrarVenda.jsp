<%-- 
    Document   : CadastrarVenda
    Created on : 23/11/2015, 19:42:10
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
        <!-- Bootstrap Core CSS -->
        <link href="content/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="content/css/simple-sidebar.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">

        <script type="text/javascript" src="MascaraValidacao.js"></script>
        <title>Registro de Vendas</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <!-- Vendas -->
                    <li class="sidebar-brand">
                        <a href="MenuVenda.jsp">Gestão de Vendas</a>
                    </li>
                    <li>
                        <a href="CadastrarVenda.jsp">Cadastrar Vendas</a>
                    </li>
                    <li>
                        <a href="">Relatório de vendas</a>
                    </li>
                    <li>
                        <a href="RelatorioFilial.jsp">Relatório de Filial</a>
                    </li>
                    <li>
                        <a href="RelatorioProduto.jsp">Relatório de Produto</a>
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
                        <h3 class="well">Registrar Vendas</h3>
                        <div class="col-md-12 well">
                            <form action="BuscarProdutoPorIdVenda" method="post">
                                <div class="col-md-6">
                                    <input type="text" name="idP" placeholder="Buscar um Produto" class="form-control search-query" autofocus>
                                </div>
                                <div class="col-md-6">
                                    <button  type="submit" class="btn btn-default">Buscar Produto</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr>
                    <form action="EfetuarVenda" method="post">
                        <div class="col-md-12">
                            <div class="form-group col-md-6">
                                <label for="nomeP"><b>Nome do Produto</b></label>
                                <input type="text" class="form-control" id="nomeP" readonly="readonly" value="${produto.nomeProduto}" name="nameP" maxlength="255" required autofocus/>
                            </div>
                            <div class="col-md-6">
                                <label for="nomeP"><b>ID Do Produto</b></label>
                                <input type="text" name="idProduto" readonly="readonly" value="${produto.idProduto}" placeholder="Buscar um Produto" class="form-control search-query" autofocus>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="fabP"><b>Fabricante</b></label>
                                <input type="text" class="form-control" id="fab" readonly="readonly" value="${produto.fabricanteProduto}" name="fabP" maxlength="45" required/>
                            </div>	
                            <div class="col-md-6 form-group">
                                <label for="model"><b>Modelo</b></label>
                                <input type="text" class="form-control" id="modelP" name="modelP" readonly="readonly" value="${produto.modeloProduto}" maxlength="100" required/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="model"><b>Valor</b></label>
                                <input type="text" class="form-control" id="valorP" name="valorP" readonly="readonly" value="${produto.valorProduto}" maxlength="100" required/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="model"><b>Quantidade em Estoque</b></label>
                                <input type="text" class="form-control" id="qntP" name="qntP" readonly="readonly" value="${produto.qntProduto}" maxlength="100" required/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="model"><b>Quantidade Solicitada</b></label>
                                <input type="number" placeholder="Quantidade" class="form-control" name="Quantidade" maxlength="100" required/>
                            </div>

                            <div class="form-group">
                            </div>
                            <div class="col-md-12 spacer">
                                <div class="row">
                                    <button id="btS" class="btn btn-block btn-primary" type="submit">Salvar Venda</button>
                                    <button id="btV" class="btn btn-block btn-danger" type="submit" onclick="javascript:window.location = 'MenuVenda.jsp'">Cancelar</button>	
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="content/js/jquery.js"></script>
        <script src="content/js/bootstrap.min.js"></script>
    </body>
</html>
