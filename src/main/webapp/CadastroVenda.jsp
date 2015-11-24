<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="refresh" content="7"/> <!--PARA TESTE--> 
        <title>Vendas</title>		
    </head>
    <body>
        <form class="pesquisa" action="" method="post">
            <fieldset>
                <legend><b>Buscar venda</b></legend> 
                <div>
                    <input type="text" id="idP" name="idP" placeholder="Pesquisar Venda">
                </div>
            </fieldset>
            <button id="btP" type="submit">Pesquisar</button>
        </form>
        <form class="cadastro" action="" method="post"> <!--PREEENCHER ACTION FORM-->
            <fieldset>
                <legend><b>Cadastro de Venda</b></legend>
                <div>
                    <label for="nome"><b>Nome do Usuário</b></label>
                    <input type="text" id="nome" name="name" disabled/>
                </div>
                <div>
                    <label for="login"><b>Login</b></label>
                    <input type="text" id="login" name="login" />
                </div>
                <div>
                    <label for="senha"><b>Senha</b></label>
                    <input type="text" id="pass" name="password" />
                </div>
                <div>
                    <label for="email"><b>E-mail</b></label>
                    <input type="email" id="email" name="email" />
                </div>

            </fieldset>

            <button id="btS" type="submit">Salvar</button>
            <button id="btV" type="submit" onclick="javascript:window.location='MenuProduto.jsp'">Voltar</button>
        </form>
    </body>
</html>