<%-- 
    Document   : frmAlterarHqVIEW
    Created on : 25 de out. de 2021, 18:29:34
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="alterarHq.jsp" method="POST">
            
            <label>Código da Hq:</label> <br>
            <input type="text" name="id" 
                   value="<%=request.getParameter("id")%>"><br>
            
            <label>Nome da hq:</label> <br>
            <input type="text" name="nome"
                   value="<%=request.getParameter("nome")%>"><br>
            
            <button type="submit">ALTERAR</button>
            
        </form>
        
    </body>
</html>
