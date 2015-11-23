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
        <title>Gestão de Produtos</title>


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
                        <a href="MenuProdutos.jsp">Menu - Produto</a>
                    </li>
                    <li>
                        <a href="CadastroProdutos.jsp">Cadastrar Produto</a>
                    </li>
                    <li>
                        <a href="ListarProdutos">Listar Produto</a>
                    </li>
                    <li>
                        <a href="AlterarProdutos.jsp">Atualizar Produto</a>
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
                    <h2>Produtos Cadastrados</h2>
                    <hr>                   
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
                                    <td><a class="btn btn-default" href="BuscarPorIdProduto" id="botaoEditar">Editar</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
