<%-- 
    Document   : listarAnimal
    Created on : 11/07/2022, 19:51:10
    Author     : sala19a
--%>

<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page import="br.com.DTO.AnimalDTO"%>
<%@page import="br.com.DAO.AnimalDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Listar Animais</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
    <body class="bg-dark">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Pets</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../usuario/listarUsuario.jsp">Donos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../servico/listarServico.jsp">Serviços</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>  

       
            <section class="vh-100">
                <div class="container py-5 h-100">
                    <div class="row justify-content-center align-items-center h-100">
                        <div class="col-12 col-lg-9 col-xl-7">
                            <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                                <div class="card-body p-4 p-md-5">
                                    <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Animal</h3>
                                    <a class="btn btn-dark" href="formInserirAnimal.jsp" role="button">Cadastrar Animal</a>
                                    <div class="mt-4"></div>
                                    <table class="table">

                                        <thead>
                                            <tr>
                                                <th scope="col">ID Animal</th>
                                                <th scope="col">Nome</th>
                                                <th scope="col">Idade</th>
                                                <th scope="col">ID Dono</th>
                                                <th scope="col">Listar Serviços</th>
                                                <th scope="col">Excluir</th>
                                                <th scope="col">Alterar</th>
                                                <th scope="col">Vincular Serviço</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%

                                                try {
                                                    AnimalDAO objAnimalDAO = new AnimalDAO();
                                                    ArrayList<AnimalDTO> lista = objAnimalDAO.pesquisarAnimal();

                                                    for (int num = 0; num < lista.size(); num++) {

                                                        out.print("<tr>");

                                                        out.print("<td>" + lista.get(num).getIdAnimal() + "</td>");

                                                        out.print("<td>" + lista.get(num).getNome() + "</td>");

                                                        out.print("<td>" + lista.get(num).getTipo() + "</td>");

                                                        out.print("<td>" + lista.get(num).getIdUsuario() + "</td>");

                                                        out.print("<td><a href='../animal_servico/listarAnimalServicoAnimal.jsp?id="
                                                                + lista.get(num).getIdAnimal() + "'>Listar</a></td>");

                                                        out.print("<td><a href='formExcluirAnimal.jsp?id="
                                                                + lista.get(num).getIdAnimal() + "&nome="
                                                                + lista.get(num).getNome() + "&tipo="
                                                                + lista.get(num).getTipo() + "&idUsuario="
                                                                + lista.get(num).getIdUsuario() + "'>Excluir</a></td>");

                                                        out.print("<td><a href='formAlterarAnimal.jsp?id="
                                                                + lista.get(num).getIdAnimal() + "&nome="
                                                                + lista.get(num).getNome() + "&tipo="
                                                                + lista.get(num).getTipo() + "&idUsuario="
                                                                + lista.get(num).getIdUsuario() + "'>Alterar</a></td>");

                                                        out.print("<td><a href='../animal_servico/formInserirAnimalServico.jsp?id="
                                                                + lista.get(num).getIdAnimal() + "'>Vincular</a></td>");

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