<%@page import="br.com.DAO.LoginDAO"%>
<%@page import="br.com.DTO.LoginDTO"%>
<%@page import="java.sql.ResultSet"%>
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
        LoginDTO objLoginDTO = new LoginDTO();
        objLoginDTO.setLoginUsuario(request.getParameter("login"));
        objLoginDTO.setSenhaUsuario(request.getParameter("senha"));
        
        LoginDAO objLoginDAO = new LoginDAO();
        ResultSet rsUsuario = objLoginDAO.autenticarUsuario(objLoginDTO);
        

        if(rsUsuario.next()){
            response.sendRedirect("listarUsuario.jsp");
        }else{
            out.print("Login e/ou Senha inválidos");
        }

            %>
    </body>
</html>