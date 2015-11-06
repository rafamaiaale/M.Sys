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
        <!--<meta http-equiv="refresh" content="5"/> PARA TESTE--> 
        <title>Gestão de Usuários</title>
    </head>
    <body>
        <!--<form class="pesquisa" action="" method="post">
            <fieldset>
                <legend><b>Pesquisar Usuário</b></legend>
                <div>
                    <input type="text" id="usuario" name="user" placeholder="Pesquisar Usuário">
                </div>
            </fieldset>
            <button id="btP" type="submit">Pesquisar</button>
        </form>-->
        <form class="cadastro" action="" method="post">
            <fieldset>
                <legend><b>Cadastro de Usuário</b></legend>

                <div id="esquerda">
                    <div>
                        <label for="nome"><b>Nome do Usuário</b></label>
                        <input type="text" id="nome" name="name"/>
                    </div>
                    <div>
                        <label for="login"><b>Login</b></label>
                        <input type="text" id="login" name="login" />
                    </div>
                    <div>
                        <label for="senha"><b>Senha</b></label>
                        <input type="password" id="pass" name="password" />
                    </div>
                </div>

                <div id="direita">
                    <div>
                        <label for="email"><b>E-mail</b></label>
                        <input type="email" id="email" name="email" />
                    </div>

                    <div>
                        <label><b>Ativo</b></label>
                        <input type="checkbox" id="status" value="Ativo" checked="checked" title="Ativo"/>
                    </div>

                    <div>
                        <select name="perfil">
                            <option value="default" selected="selected">Selecione</option>
                            <option value="T.I">T.I</option>
                            <option value="PROD" >Produtos</option>
                            <option value="COM">Comercial</option>
                        </select>
                    </div>
                </div>
            </fieldset><p></p>

            <button id="btS" type="submit">Salvar</button>
            <button id="btV" type="submit" onClick="history.go(-1)">Voltar</button>
        </form>
    </body>
</html>
