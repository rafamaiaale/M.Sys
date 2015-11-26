<%-- 
    Document   : RelatorioFilial
    Created on : 23/11/2015, 20:48:01
    Author     : lucas.dndomingues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
        <title>Relatório dos Produtos mais vendidos por Filial</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <!-- Vendas -->
                    <li class="sidebar-brand">
                        <a href="CarregarFuncionariosVenda">Gestão de Vendas</a>
                    </li>
                    <li>
                        <a href="CadastrarVenda.jsp">Cadastrar Vendas</a>
                    </li>
                    <li>
                        <a href="CarregarVendas">Relatório de Filial</a>
                    </li>
                    <li>
                        <a href="CarregarVendas2">Relatório de Produto</a>
                    </li>
                    <li>
                        <a href="index.jsp">Deslogar do Sistema</a>
                    </li>
                </ul>
            </div>

            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <h3 class="well">Quantidade de produtos vendidos por Filial</h3>
                        <div class="col-md-12 well">
                            <form action="CarregarVendasPorFilial" method="post">
                                <div class="col-md-6">
                                    <select name="filial" class="form-control" required>
                                        <option value="SP">São Paulo</option>
                                        <option value="RJ">Rio de Janeiro</option>
                                        <option value="RE">Recife</option>
                                        <option value="MG">Minas Gerais</option>
                                        <option value="ES">Espirito Santo</option>  
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <button  type="submit" class="btn btn-default">Buscar Produtos</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr>
                </div>
                <div id="page-content-wrapper">
                    <div class="container-fluid">                 
                        <table class="table table-striped table-hover table-users">
                            <thead>
                                <tr>

                                    <th>Nome do Funcionario</th>
                                    <th>Filial</th>
                                    <th>Nome do Produto</th>
                                    <th>Tipo do Produto</th>
                                    <th>Quantidade de Saída</th>
                                    <th>Valor da Venda</th>
                                    <th>Data da Venda</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>


                                <c:forEach items="${vendas}" var="vendas">
                                    <tr>
                                        <td><c:out value="${vendas.nomeFuncionario}" /></td>
                                        <td><c:out value="${vendas.filialFuncionario}" /></td>
                                        <td><c:out value="${vendas.nomeProduto}" /></td>
                                        <td><c:out value="${vendas.tipoProduto}" /></td>
                                        <td><c:out value="${vendas.qntVendas}" /></td>
                                        <td><c:out value="R$ ${vendas.valorVendas}" /></td>
                                        <td><c:out value="${vendas.dataVendas}" /></td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
