<%-- 
    Document   : excluirHq
    Created on : 25 de out. de 2021, 17:28:15
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
                
                hqDAO objHqDAO = new hqDAO();
                objHqDAO.ExcluirHq(objHqDTO);
            } catch (Exception e) {
            }
        %>
        
    </body>
</html>
