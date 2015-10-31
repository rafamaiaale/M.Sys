<%-- 
    Document   : ListaProduto
    Created on : 30/10/2015, 20:10:59
    Author     : lucas.dndomingues
--%>

<%@page import="java.util.List"%>
<%@page import="br.senac.tads.pi3.codecompass.msys.model.Produto"%>
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
        <table border="1" align="center">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Cod</th>
                    <th>Nome do Produto</th>
                    <th>Fabricante</th>
                    <th>Tipo</th>
                    <th>Cor</th>
                    <th>Valor R$</th>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Quantidade</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");
                    for (Produto produto : produtos) {
                %>
                <tr>
                    <td><%=produto.getID_Produto()%></td>
                    <td><%=produto.getCod_Produto()%></td>
                    <td><%=produto.getNome_Produto()%></td>
                    <td><%=produto.getFabricante_Produto()%></td>
                    <td><%=produto.getTipo_Produto()%></td>
                    <td><%=produto.getCor_Produto()%></td>
                    <td><%=produto.getValor_Produto()%></td>
                    <td><%=produto.getMarca_Produto()%></td>
                    <td><%=produto.getModelo_Produto()%></td>
                    <td><%=produto.getQnt_Produto()%></td>


                    <td align="center"><a href="CarregarProduto?idproduto=<%=produto.getID_Produto()%>">Alterar</a></td>
                </tr>
                <% }%>
            </tbody>
        </table>
    </body>
</html>
