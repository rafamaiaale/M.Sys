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
                        <a href="MenuProduto.jsp">Menu - Produto</a>
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
                            <tr>
                                <td>1</td>
                                <td>30</td>
                                <td>Violão aço cutaway </td>
                                <td>Tagima</td>
                                <td>Corda</td>
                                <td>Preto</td>
                                <td>R$ 450</td>
                                <td>T635</td>
                                <td>10</td>

                                <td><a class="btn btn-default" href="#">Editar</a></td>
                                <td><a class="btn btn-danger" href="#">Deletar</a></td>
                            </tr>

                            <c:forEach items="${produtos}" var="produto">
                                <tr>
                                    <td><c:out value="${produto.ID_Produto}" /></td>
                                    <td><c:out value="${produto.cod_Produto}" /></td>
                                    <td><c:out value="${produto.nome_Produto}" /></td>
                                    <td><c:out value="${produto.fabricante_Produto}" /></td>
                                    <td><c:out value="${produto.tipo_Produto}" /></td>
                                    <td><c:out value="${produto.cor_Produto}" /></td>
                                    <td><c:out value="${produto.valor_Produto}" /></td>
                                    <td><c:out value="${produto.modelo_Produto}" /></td>
                                    <td><c:out value="${produto.qnt_Produto}" /></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
