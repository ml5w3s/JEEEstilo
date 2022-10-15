<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="STILO-CSS/geral.css">
    </head>
    <body>
        <div class="flex-container">
        <div id="box" class="barra">
        <h3>Email: ${usuarioLogado.email}</h3>
        <h3>Senha: ${usuarioLogado.senha}</h3>
        <br><!-- comment -->
        <a href='HelloWorld'>Olá mundo!</a><br>
        <a href='RequestInfo'>Requisição de informações</a><br>        
        <a href='RequestHeaders'>Cabeçalho de requisição</a><br>
        <a href='helloworld.xhtml'>Teste Faces</a></br>
        <a href='seleciona_figuras.html'>Cálculos</a></br>       
        </div></div>
    </body>
</html>
