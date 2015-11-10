

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
                    <th>Modelo</th>
                    <th>Quantidade</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${produtos}" var="produto">

                    <tr>

                        <td><c:out value="${produto.ID_Produto}" /></td>
                        <td><c:out value="${produto.Cod_Produto}" /></td>
                        <td><c:out value="${produto.Nome_Produto}" /></td>
                        <td><c:out value="${produto.Fabricante_Produto}" /></td>
                        <td><c:out value="${produto.Tipo_Produto}" /></td>
                        <td><c:out value="${produto.Cor_Produto}" /></td>
                        <td><c:out value="${produto.Valor_Produto}" /></td>
                        <td><c:out value="${produto.Modelo_Produto}" /></td>
                        <td><c:out value="${produto.qnt_Produto}" /></td>


                    </tr>

                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
