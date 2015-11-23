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
        <!-- Bootstrap Core CSS -->
        <link href="content/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="content/css/simple-sidebar.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">

        <script type="text/javascript" src="MascaraValidacao.js"></script>
        <title>Gestão de Produtos</title>
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
            <!-- /#sidebar-wrapper -->
            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <!-- Alert --> 
                    <div class="alert alert-success" role="alert">Cadastro Efetuado com sucesso!</div>
                    <div class="alert alert-danger" role="alert">Erro ao cadastrar Produto, tente novamente</div>

                    <div class="container">
                        <h1 class="well">Cadastro de Produto</h1>
                        <div class="col-lg-12 well">

                            <form action="CadastrarProduto" method="post">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="nomeP"><b>Nome do Produto</b></label>
                                        <input type="text" class="form-control" id="nomeP" name="nameP" maxlength="255" required autofocus/>
                                    </div>
                                    <div class="row">  
                                        <div class="col-sm-6 form-group">
                                            <label for="codP"><b>Código do Produto</b></label>
                                            <input type="number" class="form-control" id="codP" name="codP" required/>
                                        </div>
                                        <div class="col-sm-6 form-group">
                                            <label for="fabP"><b>Fabricante</b></label>
                                            <input type="text" class="form-control" id="fab" name="fabP" maxlength="45" required/>
                                        </div>	
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 form-group">
                                            <label for="model"><b>Modelo</b></label>
                                            <input type="text" class="form-control" id="modelP" name="modelP" maxlength="100" required/>
                                        </div>	
                                        <div class="col-sm-6 form-group">
                                            <label for="quant"><b>Quantidade</b></label>
                                            <input type="number" class="form-control" id="quanP" name="quanP" onblur="checkQuant(this.value)" required/>
                                        </div>	
                                    </div>
                                    <div class="row">
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
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 form-group">
                                            <label for="cor"><b>Cor</b></label>
                                            <input type="text" class="form-control" id="corP" name="corP" maxlength="20" required/>
                                        </div>		
                                        <div class="col-sm-6 form-group">
                                            <label for="val"><b>Valor</b></label>
                                            <input type="text" class="form-control" id="valP" name="valP" onKeyPress="return(MascaraMoeda(this, '.', ',', event))" required/>
                                            <!--<input type="number" class="form-control" id="valP" name="valP" min="0.01" step="0.01" required/>-->
                                        </div>	
                                    </div>
                                    <div class="form-group">

                                    </div>
                                    <button id="btS" class="btn btn-block btn-primary" type="submit">Salvar</button>
                                    <button id="btV" class="btn btn-block btn-danger" type="submit" onclick="javascript:window.location = 'MenuProduto.jsp'">Voltar</button>	
                                </div>
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
