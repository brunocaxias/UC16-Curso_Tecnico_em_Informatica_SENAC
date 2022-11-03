<%-- 
    Document   : inserirAnimalServico
    Created on : 19/10/2022, 20:01:57
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
                objAnimalServicoDTO.setIdServ(Integer.parseInt(request.getParameter("idServ")));
                objAnimalServicoDTO.setIdAnimal(Integer.parseInt(request.getParameter("idAnimal")));

                AnimalServicoDAO objAnimalServicoDAO = new AnimalServicoDAO();
                objAnimalServicoDAO.cadastrarAnimalServico(objAnimalServicoDTO);

            } catch (Exception e) {
                out.print(e);
                e.printStackTrace();

            }
            response.sendRedirect("listarAnimalServico.jsp");
        %>
    </body>
</html>
