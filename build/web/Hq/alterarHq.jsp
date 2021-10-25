<%-- 
    Document   : alterarHq
    Created on : 25 de out. de 2021, 18:42:41
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
                objHqDTO.setId_hq(Integer.parseInt(request.getParameter("id")));
                objHqDTO.setNome_hq(request.getParameter("nome"));
                
                hqDAO objHqDAO = new hqDAO();
                objHqDAO.AlterarHq(objHqDTO);
            } catch (Exception e) {
            }
        %>
        
    </body>
</html>
