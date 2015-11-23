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

        <script type="text/javascript" src="MascaraValidacao.js"></script>
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
                    <!-- Alert --> 
                    <div class="alert alert-success" role="alert">Produto Atualizado com sucesso!</div>

                    <div class="alert alert-danger" role="alert">Erro ao Atualizar Produto, tente novamente</div>

                    <div class="row">
                        <h1 class="well">Alterar Produtos</h1>
                        <div class="col-md-12 well">
                            <form action="BuscarPorIdProduto" method="post">
                                <div class="col-md-6">
                                    <input type="number" name="idP" value="${produto.idProduto}" placeholder="Buscar Produto" class="form-control search-query" autofocus>
                                </div>
                                <div class="col-md-6">
                                    <button  type="submit" class="btn btn-default">Pesquisar</button>
                                </div>
                            </form>
                        </div>

                        <div class="spacer">
                        </div>

                        <form action="AlterarProduto" method="post">
                            <div class="col-md-12">
                                <div class="form-group col-md-6">
                                    <label for="nomeP"><b>Nome do Produto</b></label>
                                    <input type="text" class="form-control" value="${produto.nomeProduto}" id="nomeP" name="nameP" maxlength="255" required/>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="codP"><b>Código do Produto</b></label>
                                    <input type="number" class="form-control" readonly="readonly" id="codP" value="${produto.codProduto}" name="codP" required/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="fabP"><b>Fabricante</b></label>
                                    <input type="text" class="form-control" id="fab" value="${produto.fabricanteProduto}" name="fabP" maxlength="45" required/>
                                </div>	


                                <div class="form-group col-md-6">
                                    <label for="model"><b>Modelo</b></label>
                                    <input type="text" class="form-control" id="modelP" value="${produto.modeloProduto}" name="modelP" maxlength="100" required/>
                                </div>	
                                <div class="form-group col-md-6">
                                    <label for="quant"><b>Quantidade</b></label>
                                    <input type="number" class="form-control" id="quanP" value="${produto.qntProduto}" name="quanP" onblur="checkQuant(this.value)" required/>
                                </div>	


                                <div class="form-group col-md-6">
                                    <label for="cor"><b>Cor</b></label>
                                    <input type="text" class="form-control" value="${produto.corProduto}" id="corP" name="corP" maxlength="20" required/>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="tipoP"><b>Tipo do Produto</b></label>
                                    <select name="tipoP" class="form-control">
                                        <option value="default" selected="selected" disabled>Selecione</option>
                                        <option value="audio">Audio</option>
                                        <option value="cordas">Cordas</option>
                                        <option value="percurssao">Percurssão</option>
                                        <option value="tecla">Teclas</option>
                                    </select>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="val"><b>Valor</b></label>
                                    <input type="text" class="form-control" id="valP" value="${produto.valorProduto}" name="valP" onKeyPress="return(MascaraMoeda(this, '.', ',', event))" required/>  

                                </div>	
                            </div>
                            <div class="form-group">

                            </div>
                            <div class="col-md-12 spacer">
                                <div class="row">
                                    <button id="btS" class="btn btn-block btn-primary" type="submit">Atualizar</button>
                                    <!--<button id="btV" class="btn btn-block btn-danger"  type="submit" onClick="history.go(-1)">Voltar</button>	-->
                                </div>
                            </div>
                        </form>  
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
