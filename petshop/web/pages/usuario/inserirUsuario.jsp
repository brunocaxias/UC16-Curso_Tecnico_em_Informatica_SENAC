<%-- 
    Document   : inserirCliente
    Created on : 08/07/2022, 21:10:59
    Author     : sala19a
--%>

<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page import="br.com.DTO.UsuarioDTO"%>
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
                UsuarioDTO objUsuarioDTO = new UsuarioDTO();
                objUsuarioDTO.setNome(request.getParameter("nome"));
                objUsuarioDTO.setIdade(Integer.parseInt(request.getParameter("idade")));
                objUsuarioDTO.setEndereco(request.getParameter("endereco"));

                UsuarioDAO objUsuarioDAO = new UsuarioDAO();
                objUsuarioDAO.cadastrarUsuario(objUsuarioDTO);

            } catch (Exception e) {
                out.print(e);
                e.printStackTrace();

            }
            response.sendRedirect("listarUsuario.jsp");
        %>
          
    </body>
</html>
