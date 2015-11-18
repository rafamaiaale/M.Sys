<%--
    Document   : AlterarUsuario
    Created on : 15/11/2015, 21:08:54
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

        <title>Alterar Usuários</title>

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
                        <a href="MenuUsuario.jsp">Menu - Usuários</a>
                    </li>
                    <li>
                        <a href="CadastroUsuario.jsp">Cadastrar Usuário</a>
                    </li>
                    <li>
                        <a href="ListarUsuario">Listar Usuários</a>
                    </li>
                    <li>
                        <a href="AlterarUsuario.jsp">Atualizar Usuários</a>
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
                    <div class="alert alert-success" role="alert">Usuário Atualizado com sucesso!</div>

                    <div class="alert alert-danger" role="alert">Erro ao atualizar usuário, tente novamente</div>

                    <div class="row">
                        <h1 class="well">Alterar Usuários</h1>
                        <div class="col-md-12">
                            <form action="BuscarPorIdProduto" method="post">
                                <div class="col-md-6">
                                    <input type="text" name="idP" placeholder="Buscar Usuário" class="form-control search-query" autofocus>
                                </div>
                                <div class="col-md-6">
                                    <button  type="submit" class="btn btn-info">Pesquisar</button>
                                </div>
                            </form>
                        </div>

                        <div class="spacer">
                        </div>

                        <form action="AlterarProduto" method="post">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="nome"><b>Nome do Usuário</b></label>
                                    <input type="text" class="form-control" id="nome" name="name" maxlength="100" required autofocus/>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 form-group">
                                        <label for="login"><b>Login</b></label>
                                        <input type="text" class="form-control" id="login" name="login" maxlength="45" required/>
                                    </div>
                                    <div class="col-sm-6 form-group">
                                        <label for="senha"><b>Senha</b></label>
                                        <input type="password" class="form-control" id="pass" name="password" maxlength="45" minlength="5" required/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 form-group">
                                        <label for="email"><b>E-mail</b></label>
                                        <input type="email" class="form-control" id="email" name="email" maxlength="100" required/>
                                    </div>
                                    <div class="col-sm-6 form-group">
                                        <label for="filial"><b>Filial - UF</b></label>
                                        <input type="text" class="form-control" id="filial" maxlength="2" pattern="[A-Z\s]+$" required/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 form-group">
                                        <div class="row">
                                            <div class="col-sm-12 form-group">
                                                <label for="tipP"><b>Tipo do Usuário</b></label>
                                                <select name="perfil" class="form-control">
                                                    <option value="default" selected="selected" disabled>Selecione</option>
                                                    <option value="Suporte">Suporte</option>
                                                    <option value="PROD" >Comprador</option>
                                                    <option value="COM">Vendedor</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 form-group">
                                        <hr/>
                                        <label><b>Ativo</b></label>
                                        <input type="checkbox" id="status" value="Ativo" checked="checked" title="Ativo"/>
                                    </div>
                                </div>
                                <div class="form-group">

                                </div>
                                <button id="btS" class="btn btn-block btn-info" type="submit">Atualizar</button>
                                <!--<button id="btV" class="btn btn-block btn-danger"  type="submit" onclick="javascript:window.location = 'MenuUsuario.jsp'">Voltar</button>	-->
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
