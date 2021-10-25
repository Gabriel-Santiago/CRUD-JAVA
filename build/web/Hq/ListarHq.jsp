<%-- 
    Document   : ListarHq
    Created on : 25 de out. de 2021, 16:07:59
    Author     : gabri
--%>

<%@page import="br.com.DTO.hqDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.hqDAO"%>
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
                
                hqDAO objHqDAO = new hqDAO();
                ArrayList<hqDTO> lista = objHqDAO.PesquisarHq();
                
                int num;
                for(num = 0; num < lista.size(); num++){
                    out.print("Código: " + lista.get(num).getId_hq() + "<br>");
                    out.print("Nome: " + lista.get(num).getNome_hq() + "<br>");
                }
                    
            } catch (Exception e) {
            }
        
        %>
        
    </body>
</html>
