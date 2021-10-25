<%-- 
    Document   : alterarLivro
    Created on : 25 de out. de 2021, 18:42:20
    Author     : gabri
--%>

<%@page import="br.com.DAO.livroDAO"%>
<%@page import="br.com.DTO.livroDTO"%>
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
                livroDTO objLivroDTO = new livroDTO();
                objLivroDTO.setId_livro(Integer.parseInt(request.getParameter("id")));
                objLivroDTO.setNome_livro(request.getParameter("nome"));
                
                livroDAO objLivroDAO = new livroDAO();
                objLivroDAO.AlterarLivro(objLivroDTO);
            } catch (Exception e) {
            }
        %>
        
    </body>
</html>
