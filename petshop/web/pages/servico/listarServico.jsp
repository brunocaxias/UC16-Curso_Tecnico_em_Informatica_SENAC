<%-- 
    Document   : listarServico
    Created on : 05/10/2022, 21:04:30
    Author     : sala19a
--%>

<%@page import="br.com.DTO.ServicoDTO"%>
<%@page import="br.com.DAO.ServicoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Listar Serviços</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
    <body class="bg-dark">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Serviço</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../animal/listarAnimal.jsp">Pets</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../usuario/listarUsuario.jsp">Donos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav> 
        <div class="container">
            <section class="vh-100">
                <div class="container py-5 h-100">
                    <div class="row justify-content-center align-items-center h-100">
                        <div class="col-12 col-lg-9 col-xl-7">
                            <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                                <div class="card-body p-4 p-md-5">
                                    <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Serviço</h3>
                                    <a class="btn btn-dark" href="formInserirServico.jsp" role="button">Cadastrar Serviço</a>
                                    <div class="mt-4"></div>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">ID Serviço</th>
                                                <th scope="col">Nome</th>
                                                <th scope="col">Valor</th>
                                                <th scope="col">Descrição</th>
                                                <th scope="col">Excluir Serviço</th>
                                                <th scope="col">Alterar Serviço</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%

                                                try {

                                                    ServicoDAO objServicoDAO = new ServicoDAO();
                                                    ArrayList<ServicoDTO> lista = objServicoDAO.pesquisarServico();

                                                    for (int num = 0; num < lista.size(); num++) {

                                                        out.print("<tr>");

                                                        out.print("<td>" + lista.get(num).getIdServ() + "</td>");

                                                        out.print("<td>" + lista.get(num).getNome() + "</td>");

                                                        out.print("<td>" + lista.get(num).getValor() + "</td>");

                                                        out.print("<td>" + lista.get(num).getDescricao() + "</td>");

                                                        out.print("<td><a href='formExcluirServico.jsp?id="
                                                                + lista.get(num).getIdServ() + "&nome="
                                                                + lista.get(num).getNome() + "&valor="
                                                                + lista.get(num).getValor() + "&descricao="
                                                                + lista.get(num).getDescricao() + "'>Excluir</a></td>");

                                                        out.print("<td><a href='formAlterarServico.jsp?id="
                                                                + lista.get(num).getIdServ() + "&nome="
                                                                + lista.get(num).getNome() + "&valor="
                                                                + lista.get(num).getValor() + "&descricao="
                                                                + lista.get(num).getDescricao() + "'>Alterar</a></td>");

                                                        out.print("<tr>");

                                                    }

                                                } catch (Exception e) {

                                                }
                                            %> 
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>

</html>
