<%-- 
    Document   : index
    Created on : Nov 11, 2015, 1:37:58 PM
    Author     : Lucas.Domingues
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

        <title>M.sys | Login de usários</title>

        <!-- Bootstrap Core CSS -->
        <link href="content/css/bootstrap.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="content/css/simple-sidebar.css" rel="stylesheet">

        <link href="style.css" rel="stylesheet">
    </head>
    <body>
        <div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="text-center">Área Exclusiva</h1>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="Login" class="form col-md-12 center-block">
                            <div class="form-group">
                                <input type="text" id="login" name="login" class="form-control" placeholder="Login" required/>
                            </div>
                            <div class="form-group">
                                <input type="password" id="senha" name="senha" class="form-control" placeholder="Senha" required/>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Entrar</button>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <div class="col-md-12">
                            <h6>M.Sys ©2015 - Todos os Direitos Reservados</h6>                            
                        </div>	
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
