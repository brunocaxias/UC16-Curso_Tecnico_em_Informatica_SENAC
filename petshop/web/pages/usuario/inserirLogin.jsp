<%-- 
    Document   : inserirCliente
    Created on : 08/07/2022, 21:10:59
    Author     : sala19a
--%>

<%@page import="br.com.DAO.LoginDAO"%>
<%@page import="br.com.DTO.LoginDTO"%>
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
                LoginDTO objLoginDTO = new LoginDTO();
                objLoginDTO.setLoginUsuario(request.getParameter("login"));
                objLoginDTO.setSenhaUsuario(request.getParameter("senha"));
                
                LoginDAO objLoginDAO = new LoginDAO();
                objLoginDAO.cadastrarUsuario(objLoginDTO);

            } catch (Exception e) {
                out.print(e);
                e.printStackTrace();

            }
            response.sendRedirect("listarUsuario.jsp");
        %>
          
    </body>
</html>
