<%-- 
    Document   : excluirLivro
    Created on : 25 de out. de 2021, 17:27:57
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

                livroDAO objLivroDAO = new livroDAO();
                objLivroDAO.ExcluirLivro(objLivroDTO);
            } catch (Exception e) {
            }
        %>
        
    </body>
</html>
