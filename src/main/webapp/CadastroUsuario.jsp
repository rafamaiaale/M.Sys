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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Gestão de Usuários</title>
    </head>
    <body>
        <!--<form class="pesquisa" action="" method="post">    PESQUISA
            <fieldset>
                <legend><b>Pesquisar Usuário</b></legend>
                <div>
                    <input type="text" id="usuario" name="user" placeholder="Pesquisar Usuário">
                </div>
            </fieldset>
            <button id="btP" type="submit">Pesquisar</button>
        </form>-->
        <form class="cadastro" action="CadastroUsuario" method="post">
            <fieldset>
                <legend><b>Cadastro de Usuário</b></legend>

                <div id="esquerda">
                    <div>
                        <label for="nome"><b>Nome do Usuário</b></label>
                        <input type="text" class="form-control" id="nome" name="name" maxlength="100" required autofocus/>
                    </div>
                    <div>
                        <label for="login"><b>Login</b></label>
                        <input type="text" class="form-control" id="login" name="login" maxlength="45" required/>
                    </div>
                    <div>
                        <label for="senha"><b>Senha</b></label>
                        <input type="password" class="form-control" id="pass" name="password" maxlength="45" minlength="5" required/>
                    </div>
                </div>

                <div id="direita">
                    <div>
                        <label for="email"><b>E-mail</b></label>
                        <input type="email" class="form-control" id="email" name="email" maxlength="100" required/>
                    </div>
                    <div>
                        <label for="filial"><b>Filial - UF</b></label>
                        <input type="text" class="form-control" id="filial" maxlength="2" pattern="[A-Z\s]+$" required/>
                    </div>
                    <div>
                        <label><b>Ativo</b></label>
                        <input type="checkbox" class="form-control" id="status" value="Ativo" checked="checked" title="Ativo"/>
                    </div>

                    <div>
                        <select name="perfil">
                            <option value="default" selected="selected" disabled>Selecione</option>
                            <option value="T.I">T.I</option>
                            <option value="PROD" >Produtos</option>
                            <option value="COM">Comercial</option>
                        </select>
                    </div>
                </div>
            </fieldset><p></p>
            <span id="msg" hidden>Cadastro realizado com sucesso!</span>
            <button id="btS" type="submit">Salvar</button>
            <button id="btV" type="submit" onclick="javascript:window.location='MenuProduto.jsp'">Voltar</button>
        </form>
    </body>
</html>
