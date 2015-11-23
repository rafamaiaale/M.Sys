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
                        <div class="col-md-12 well">
                            <form action="BuscarPorIdUsuario" method="post">
                                <div class="col-md-6">
                                    <input type="text" name="idF" value="${usuario.idFuncionario}" placeholder="Buscar Usuário" class="form-control search-query" autofocus>
                                </div>
                                <div class="col-md-6">
                                    <button  type="submit" class="btn btn-default">Pesquisar</button>
                                </div>
                            </form>
                        </div>

                        <div class="spacer">
                        </div>

                        <form action="AlterarUsuario" method="post">
                            <div class="col-md-12">
                                <div class="form-group col-md-6">
                                    <label for="nome"><b>Nome do Usuário</b></label>
                                    <input type="text" class="form-control" id="nome" name="name" value="${usuario.nomeFuncionario}" maxlength="100" required autofocus/>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="login"><b>Login</b></label>
                                    <input type="text" class="form-control" readonly="readonly" id="login" name="login" value="${usuario.loginFuncionario}" maxlength="45" required/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="senha"><b>Senha</b></label>
                                    <input type="password" class="form-control" id="pass" name="password" value="${usuario.senhaFuncionario}" maxlength="45" minlength="5" required/>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="email"><b>E-mail</b></label>
                                    <input type="email" class="form-control" id="email" value="${usuario.emailFuncionario}" name="email" maxlength="100" required/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="filial"><b>Filial - UF</b></label>
                                    <input type="text" class="form-control" id="filial" name="filial" value="${usuario.filialFuncionario}" maxlength="2" pattern="[A-Z\s]+$" required/>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="perfil"><b>Tipo do Usuário</b></label>
                                    <select name="perfil" class="form-control">
                                        <option value="default" selected="selected" disabled>Selecione</option>
                                        <option value="T.I">Suporte</option>
                                        <option value="PRD" >Produção</option>
                                        <option value="COM">Vendedor</option>
                                    </select>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="tipP"><b>Cargo</b></label>
                                    <select name="cargo" class="form-control">
                                        <option value="default" selected="selected" disabled>Selecione</option>
                                        <option value="Gerente">Gerente</option>
                                        <option value="Assistente" >Assistente</option>
                                    </select>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="tipoP"><b>Situação do Usuário</b></label>
                                    <select name="situacao" class="form-control">
                                        <option value="default" selected="selected" disabled>Selecione</option>
                                        <option value="1">Ativo</option>
                                        <option value="0" >Desativo</option>
                                    </select>
                                </div>

                            </div>
                            <div class="form-group">

                            </div>
                            <div class="col-md-12 spacer">
                                <div class="row">
                                    <button id="btS" class="btn btn-block btn-primary" type="submit">Atualizar</button>
                                    <!--<button id="btV" class="btn btn-block btn-danger"  type="submit" onclick="javascript:window.location = 'MenuUsuario.jsp'">Voltar</button>-->
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
