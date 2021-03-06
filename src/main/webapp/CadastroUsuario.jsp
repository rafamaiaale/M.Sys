<%-- 
    Document   : CadastroUsuario
    Created on : 06/11/2015, 11:35:45
    Author     : ricardo.oliveira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
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

        <title>Gestão de Usuários</title>

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
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <!-- Alert --> 
                    <div id="true" class="alert alert-success" role="alert">Cadastro Efetuado com sucesso!</div>
                    <div id="false" class="alert alert-danger" role="alert">Erro ao cadastrar Usuário, tente novamente</div>

                    <div class="container">
                        <h1 class="well">Cadastro de Usuários</h1>
                        <div class="col-lg-12 well">

                            <form action="CadastrarUsuario" method="post">
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
                                        <div class="col-sm-12 form-group">
                                            <label for="tipP"><b>Cargo</b></label>
                                            <select name="cargo" class="form-control" required>
                                                <option selected="selected" disabled>Selecione</option>
                                                <option value="Gerente">Gerente</option>
                                                <option value="Assistente" >Assistente</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-6 form-group">
                                            <label for="email"><b>E-mail</b></label>
                                            <input type="email" class="form-control" id="email" name="email" maxlength="100" required/>
                                        </div>	
                                        <div class="col-sm-6 form-group">
                                            <label for="filial"><b>Filial - UF</b></label>
                                            <select name="filial" class="form-control" required>
                                                <option value="SP">São Paulo</option>
                                                <option value="RJ">Rio de Janeiro</option>
                                                <option value="RE">Recife</option>
                                                <option value="MG">Minas Gerais</option>
                                                <option value="ES">Espirito Santo</option>  
                                            </select>
                                        </div>	
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 form-group">
                                            <label for="tipP"><b>Tipo do Usuário</b></label>
                                            <select name="perfil" class="form-control" required>
                                                <option selected="selected" disabled>Selecione</option>
                                                <option value="T.I">Suporte</option>
                                                <option value="PRD" >Produção</option>
                                                <option value="COM">Vendedor</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">

                                    </div>
                                    <button id="btS" class="btn btn-block btn-primary" type="submit">Salvar</button>
                                    <button id="btV" class="btn btn-block btn-danger" type="submit" onclick="javascript:window.location = 'MenuUsuario.jsp'">Voltar</button>	
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
