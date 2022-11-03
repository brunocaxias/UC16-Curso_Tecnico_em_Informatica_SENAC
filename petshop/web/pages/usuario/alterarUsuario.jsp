<%-- 
    Document   : alterarCliente
    Created on : 14/07/2022, 19:31:28
    Author     : sala19a
--%>

<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alterar Usuario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    <body>
        <%
            try {
                UsuarioDTO objUsuarioDTO = new UsuarioDTO();
                objUsuarioDTO.setIdUsuario(Integer.parseInt(request.getParameter("id")));
                objUsuarioDTO.setNome(request.getParameter("nome"));

                UsuarioDAO objUsuarioDAO = new UsuarioDAO();
                objUsuarioDAO.alterarUsuario(objUsuarioDTO);

            } catch (Exception e) {
            }
            response.sendRedirect("listarUsuario.jsp");
        %>
    </body>
</html>
