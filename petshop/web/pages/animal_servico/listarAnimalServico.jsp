<%-- 
    Document   : listarAnimalServico
    Created on : 19/10/2022, 20:01:23
    Author     : sala19a
--%>

<%@page import="br.com.DAO.AnimalServicoDAO"%>
<%@page import="br.com.DTO.AnimalServicoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    </head>
    <body class="bg-dark">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Donos</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../animal/listarAnimal.jsp">Pets</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../servico/listarServico.jsp">Serviços</a>
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
                                    <a class="btn btn-dark" href="newFormInserirUsuario.html" role="button">Cadastrar Serviço</a>
                                    <div class="mt-4"></div>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">ID Animal Serviço</th>
                                                <th scope="col">Animal</th>
                                                <th scope="col">Serviço</th>
                                                <th scope="col">Excluir Serviço do Animal</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%

                                                try {

                                                    AnimalServicoDAO objAnimalServicoDAO = new AnimalServicoDAO();
                                                    ArrayList<AnimalServicoDTO> lista = objAnimalServicoDAO.pesquisarAnimalServico();

                                                    for (int num = 0; num < lista.size(); num++) {

                                                        out.print("<tr>");

                                                        out.print("<td>" + lista.get(num).getIdAnimalServ() + "</td>");

                                                        out.print("<td>" + lista.get(num).getIdAnimal() + "</td>");

                                                        out.print("<td>" + lista.get(num).getIdServ() + "</td>");

                                                        out.print("<td><a href='formExcluirAnimalServico.jsp?idAnimalServico="
                                                                + lista.get(num).getIdAnimalServ() + "&idAnimal="
                                                                + lista.get(num).getIdAnimal() + "&idServ="
                                                                + lista.get(num).getIdServ() + "'>Excluir</a></td>");

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
</body>
</html>
