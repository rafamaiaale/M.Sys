<%-- 
    Document   : CadastroProduto
    Created on : 30/10/2015, 20:07:51
    Author     : lucas.dndomingues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="refresh" content="25"/> <!--PARA TESTE--> 
        <title>Gestão de Produtos</title>	
    </head>
    <body>
        <form class="cadastro" action="CadastrarProduto" method="post">
            <fieldset>
                <legend><b>Cadastro de Produto</b></legend>
                <div id="esquerda">
                    <div>
                        <label for="codP"><b>Código do Produto</b></label>
                        <input type="text" id="codP" name="codP"/>
                    </div>
                    <div>
                        <label for="nomeP"><b>Nome do Produto</b></label>
                        <input type="text" id="nomeP" name="nameP"/>
                    </div>
                    <div>
                        <label for="fabP"><b>Fabricante</b></label>
                        <input type="text" id="fab" name="fabP" />
                    </div>
                    <div>
                        <label for="model"><b>Modelo</b></label>
                        <input type="text" id="modelP" name="modelP" />
                    </div>
                    <div>
                        <label for="tipP"><b>Tipo do Produto</b></label>
                        <select name="tipoP">
                            <option value="default" selected="selected">Selecione</option>
                            <option value="audio">Audio</option>
                            <option value="cordas">Cordas</option>
                            <option value="percurssao">Percurssão</option>
                            <option value="tecla">Teclas</option>
                        </select>
                    </div>
                </div>
                <div id="direita">
                    <div>
                        <label for="cor"><b>Cor</b></label>
                        <input type="text" id="corP" name="corP" />
                    </div>
                    <div>
                        <label for="val"><b>Valor</b></label>
                        <input type="text" id="valP" name="valP" />
                    </div>
                    <div>
                        <label for="quant"><b>Quantidade</b></label>
                        <input type="text" id="quanP" name="quanP" />
                    </div>
                </div>
            </fieldset><p></p>
            <button id="btS" type="submit">Salvar</button>
            <button id="btV" type="submit" onClick="history.go(-1)">Voltar</button>
        </form>
    </body>
</html>
