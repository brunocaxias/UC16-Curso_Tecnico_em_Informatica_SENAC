<%-- 
    Document   : excluirAnimalServico
    Created on : 19/10/2022, 20:02:33
    Author     : sala19a
--%>

<%@page import="br.com.DAO.AnimalServicoDAO"%>
<%@page import="br.com.DTO.AnimalServicoDTO"%>
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
                AnimalServicoDTO objAnimalServicoDTO = new AnimalServicoDTO();
                objAnimalServicoDTO.setIdAnimalServ(Integer.parseInt(request.getParameter("id")));

                AnimalServicoDAO objAnimalServicoDAO = new AnimalServicoDAO();
                objAnimalServicoDAO.excluirAnimalServico(objAnimalServicoDTO);

            } catch (Exception e) {
            }
            response.sendRedirect("listarAnimalServico.jsp");
        %>
    </body>
</html>
