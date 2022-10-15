<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parâmetros do cálculo</title>
    </head>
    <body>
        <%
            String tituloFormulario, formulario;
            int figuraGeometrica = (int) request.getAttribute("tipoFigura");
            
           if(figuraGeometrica == 1){
               tituloFormulario = "<h3>Cálculo da área do retângulo</h3>";
               formulario = "<form method='get' action='CalculaRetangulo'>";
           }else if(figuraGeometrica == 2){
               tituloFormulario = "<h3>Cálculo da área do Círculo</h3>";
               formulario = "<form method='get' action='CalculaCirculo'>";
           }else if(figuraGeometrica == 3){
               tituloFormulario = "<h3>Cálculo da área do Triângulo</h3>";
               formulario = "<form method='get' action='CalculaTriangulo'>";
           }else{
               tituloFormulario = "<h3>*** ERRO ***</h3>";
               formulario = "<form method='get'>";
           }           
           out.println(formulario);
        %>
        <h2><%= tituloFormulario %></h2>
        <%
            if((figuraGeometrica == 1) || (figuraGeometrica == 3)){
                out.print("<p>Digite o valor da base: </p>");
                out.print("<input type='text' name='valorBase'> <br><br>");
                
                out.print("<p>Digite o valor da altura: </p>");
                out.print("<input type='text' name='valorAltura'> <br><br>");
            }else if(figuraGeometrica == 2){
                out.print("<p>Digite o valor do raio: </p>");
                out.print("<input type='text' name='valorRaio'> <br><br>");
            }else{
                out.print("<h3>Favor selecionar uma figura geométrica</h3>");        
            }
        %>
        <input type="submit" value="Calcular">
        </form>
    </body>
</html>
