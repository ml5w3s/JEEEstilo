<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="STILO-CSS/geral.css">
    </head>
    <body>
        <div class="flex-container">
        <div id="box" class="barra">        
        <h1>Faça seu login</h1>
        <form id="form" method="POST" action="login">
            <p>
                <label>E-mail:</label>
                <input type="email" name="email" />
            </p>
            <p>
                <label>Senha:</label>
                <input type="password" name="senha" />
            </p>
            <p>
                <input type="submit" value="Entrar" />
            </p>
            <p>${msg}</p>
        </form>
        </div></div>
    </body>
</html>
