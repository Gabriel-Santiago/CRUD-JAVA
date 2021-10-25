<%-- 
    Document   : InserirHq
    Created on : 21 de out. de 2021, 12:53:15
    Author     : gabri
--%>

<%@page import="br.com.DAO.hqDAO"%>
<%@page import="br.com.DTO.hqDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            try {
                hqDTO objHqDTO = new hqDTO();
                objHqDTO.setNome_hq(request.getParameter("nome"));
                
                hqDAO objHqDAO = new hqDAO();
                objHqDAO.CadastrarHq(objHqDTO);
            } catch (Exception e) {
            }
        %>
        
    </body>
</html>
