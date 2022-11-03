<%-- 
    Document   : formExcluirAnimalServico
    Created on : 19/10/2022, 20:02:19
    Author     : sala19a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Serviço de Animal</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    </head>
    <body class="bg-dark">
        <section class="vh-100">
            <div class="container py-5 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                            <div class="card-body p-4 p-md-5">
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Excluir Serviço</h3>
                                <form action="excluirAnimal.jsp" method="POST">


                                    <div class="row">
                                        <div class="col-md-6 mb-4">


                                            <div class="form-outline">
                                                <input type="text" name="id" value="<%= request.getParameter("idAnimalServico")%>" readonly class="form-control form-control-lg">
                                                <label class="form-label mt-4" for="Codigo do Cliente">Código do Serviço</label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="text" name="nome" value="<%= request.getParameter("idAnimal")%>" readonly class="form-control form-control-lg">
                                                <label class="form-label" for="Nome do Cliente">ID do Animal</label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="mt-4 pt-2">
                                        <input class="btn btn-dark btn-lg" type="submit" value="Excluir">
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
