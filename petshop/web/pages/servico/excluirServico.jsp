<%-- 
    Document   : excluirCliente
    Created on : 11/07/2022, 20:52:47
    Author     : sala19a
--%>

<%@page import="br.com.DAO.ServicoDAO"%>
<%@page import="br.com.DTO.ServicoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Excluir Serviço</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    <body>
        <%
            try {
                ServicoDTO objServicoDTO = new ServicoDTO();
                objServicoDTO.setIdServ(Integer.parseInt(request.getParameter("id")));

                ServicoDAO objServicoDAO = new ServicoDAO();
                objServicoDAO.excluirServico(objServicoDTO);

            } catch (Exception e) {
            }
            response.sendRedirect("listarServico.jsp");
        %>
    </body>
</html>
