<%-- 
    Document   : inserirServico
    Created on : 08/07/2022, 21:10:59
    Author     : sala19a
--%>

<%@page import="br.com.DAO.ServicoDAO"%>
<%@page import="br.com.DTO.ServicoDTO"%>
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
                ServicoDTO objServicoDTO = new ServicoDTO();
                objServicoDTO.setNome(request.getParameter("nome"));
                objServicoDTO.setValor(Double.parseDouble(request.getParameter("valor")));
                objServicoDTO.setDescricao(request.getParameter("descricao"));

                ServicoDAO objServicoDAO = new ServicoDAO();
                objServicoDAO.cadastrarServico(objServicoDTO);

            } catch (Exception e) {
                out.print(e);
                e.printStackTrace();

            }
            response.sendRedirect("listarServico.jsp");
        %>
          
    </body>
</html>
