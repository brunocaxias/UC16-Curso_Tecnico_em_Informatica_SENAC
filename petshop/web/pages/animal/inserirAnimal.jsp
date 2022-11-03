<%-- 
    Document   : inserirCliente
    Created on : 08/07/2022, 21:10:59
    Author     : sala19a
--%>

<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page import="br.com.DAO.AnimalDAO"%>
<%@page import="br.com.DTO.AnimalDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Animais</title>
    </head>
    <body>
        <%
            try {
                AnimalDTO objAnimalDTO = new AnimalDTO();                
                
                objAnimalDTO.setNome(request.getParameter("nome"));
                objAnimalDTO.setTipo(request.getParameter("tipo"));
                objAnimalDTO.setIdUsuario(Integer.parseInt(request.getParameter("idUsuario")));

                AnimalDAO objAnimalDAO = new AnimalDAO();
                objAnimalDAO.cadastrarAnimal(objAnimalDTO);                 

            } catch (Exception e) {
                out.print(e);
                e.printStackTrace();

            }
            response.sendRedirect("../usuario/listarUsuario.jsp");
        %>
    </body>
</html>
