<%-- 
    Document   : formInserirAnimalServico
    Created on : 19/10/2022, 20:01:46
    Author     : sala19a
--%>

<%@page import="br.com.DTO.ServicoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.ServicoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body class="bg-dark">
        <section class="vh-100">
            <div class="container py-5 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                            <div class="card-body p-4 p-md-5">
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Cadastrar Serviço a Animal</h3>
                                <form action="inserirAnimalServico.jsp" method="POST">

                                    <div class="row">
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <label class="form-label">Código do Serviço</label>
                                                <input type="text" name="id" value="<%= request.getParameter("id")%>" readonly class="form-control form-control-lg">
                                            </div>
                                        </div>

                                        <br>

                                        <div class="col-md-6 mb-4">
                                            <label class="form-label">Tipo de Serviço</label>
                                            <select class="form-select form-control form-control-lg" name=idServ aria-label="Default select example">
                                                <%
                                                    try {
                                                        ServicoDAO objUsuarioDAO = new ServicoDAO();
                                                        ArrayList<ServicoDTO> lista = objUsuarioDAO.pesquisarServico();

                                                        for (int num = 0; num < lista.size(); num++) {
                                                            out.print("<option  value=" + lista.get(num).getIdServ() + ">" + lista.get(num).getNome() + "</option>");

                                                        }
                                                    } catch (Exception e) {
                                                        out.print(e);
                                                        e.printStackTrace();
                                                    }

                                                %>
                                            </select>

                                        </div>

                                        <div class="mt-4 pt-2">
                                            <input class="btn btn-dark btn-lg" type="submit" value="Cadastrar">
                                        </div>
                                </form>


                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </body>
</html>
