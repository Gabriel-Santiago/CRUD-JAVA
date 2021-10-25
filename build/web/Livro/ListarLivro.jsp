<%-- 
    Document   : ListarLivro
    Created on : 25 de out. de 2021, 16:06:44
    Author     : gabri
--%>

<%@page import="br.com.DTO.livroDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.livroDAO"%>
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
                
                livroDAO objLivroDAO = new livroDAO();
                ArrayList<livroDTO> lista = objLivroDAO.PesquisarLivro();
                
                int num;
                for(num = 0; num < lista.size(); num++){
                    out.print("Código: " + lista.get(num).getId_livro() + "<br>");
                    out.print("Nome: " + lista.get(num).getNome_livro() + "<br>");
                }
                    
            } catch (Exception e) {
            }
        
        %>
        
    </body>
</html>
