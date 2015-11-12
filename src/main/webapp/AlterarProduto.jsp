<%-- 
    Document   : AlterarProduto
    Created on : 12/11/2015, 20:20:43
    Author     : Lucas Dantas
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

        <title>Alterar Produtos</title>

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
                        <a href="ListarProduto">Listar Produtos</a>
                    </li>
                    <li>
                        <a href="AlterarProduto.jsp">Atualizar Produtos</a>
                    </li>
                    <li>
                        <a href="index.jsp">Deslogar do sistema</a>
                    </li>
                </ul>
            </div>

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <h1 class="well">Alterar Produtos</h1>
                        <div class="col-md-12">
                            <form action="" method="post">
                                <div class="col-md-6">
                                    <input type="text" placeholder="Buscar Produto" class="form-control search-query">
                                </div>
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-info">Pesquisar</button>
                                </div>
                            </form>
                        </div>

                        <div class="spacer">
                        </div>

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


                        <form action="CadastrarProduto" method="post">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="nomeP"><b>Nome do Produto</b></label>
                                    <input type="text" class="form-control" id="nomeP" name="nameP" maxlength="255" required/>
                                </div>
                                <div class="row">  
                                    <div class="col-sm-6 form-group">
                                        <label for="codP"><b>Código do Produto</b></label>
                                        <input type="number" class="form-control" id="codP" name="codP" required autofocus/>
                                    </div>
                                    <div class="col-sm-6 form-group">
                                        <label for="fabP"><b>Fabricante</b></label>
                                        <input type="text" class="form-control" id="fab" name="fabP" maxlength="45"/>
                                    </div>	
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 form-group">
                                        <label for="model"><b>Modelo</b></label>
                                        <input type="text" class="form-control" id="modelP" name="modelP" maxlength="100"/>
                                    </div>	
                                    <div class="col-sm-6 form-group">
                                        <label for="quant"><b>Quantidade</b></label>
                                        <input type="number" class="form-control" id="quanP" name="quanP" required/>
                                    </div>	
                                </div>

                                <!-- <div class="row">
                                    <div class="col-sm-12 form-group">
                                        <label for="tipP"><b>Tipo do Produto</b></label>
                                        <select name="tipoP" class="form-control">
                                            <option value="default" selected="selected" disabled>Selecione</option>
                                            <option value="audio">Audio</option>
                                            <option value="cordas">Cordas</option>
                                            <option value="percurssao">Percurssão</option>
                                            <option value="tecla">Teclas</option>
                                        </select>
                                    </div>
                                </div> -->
                                <div class="row">
                                    <div class="col-sm-6 form-group">
                                        <label for="cor"><b>Cor</b></label>
                                        <input type="text" class="form-control" id="corP" name="corP" maxlength="20"/>
                                    </div>		
                                    <div class="col-sm-6 form-group">
                                        <label for="val"><b>Valor</b></label>
                                        <input type="number" class="form-control" id="valP" name="valP" min="0.01" step="0.01" required/>
                                    </div>	
                                </div>
                                <div class="form-group">

                                </div>
                                <button id="btS" class="btn btn-block btn-info" type="submit">Atualizar</button>
                                <!--<button id="btV" class="btn btn-block btn-danger"  type="submit" onClick="history.go(-1)">Voltar</button>	-->
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
