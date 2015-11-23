<%-- 
    Document   : RelatorioFilial
    Created on : 23/11/2015, 20:48:01
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
        <title>Relatório dos Produtos mais vendidos por Filial</title>
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

            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <h3 class="well">Quantidade de produtos vendidos por Filial</h3>
                        <div class="col-md-12 well">
                            <form action="" method="post">
                                <div class="col-md-6">
                                    <input type="text" name="idF" value="" placeholder="Nome da Filial" class="form-control search-query" autofocus>
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

                                    <th>ID</th>
                                    <th>Cod</th>
                                    <th>Nome do Produto</th>
                                    <th>Fabricante</th>
                                    <th>Tipo</th>
                                    <th>Cor</th>
                                    <th>Valor</th>
                                    <th>Modelo</th>
                                    <th>Quantidade</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>


                            <c:forEach items="${produtos}" var="produto">
                                <tr>
                                    <td><c:out value="${produto.idProduto}" /></td>
                                <td><c:out value="${produto.codProduto}" /></td>
                                <td><c:out value="${produto.nomeProduto}" /></td>
                                <td><c:out value="${produto.fabricanteProduto}" /></td>
                                <td><c:out value="${produto.tipoProduto}" /></td>
                                <td><c:out value="${produto.corProduto}" /></td>
                                <td><c:out value="${produto.valorProduto}" /></td>
                                <td><c:out value="${produto.modeloProduto}" /></td>
                                <td><c:out value="${produto.qntProduto}" /></td>
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
