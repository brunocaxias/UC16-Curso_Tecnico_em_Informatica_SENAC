<%-- 
    Document   : formAlterarCliente
    Created on : 14/07/2022, 19:29:14
    Author     : sala19a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alterar Animal</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    <body class="bg-dark">
        <section class="vh-100">
            <div class="container py-5 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                            <div class="card-body p-4 p-md-5">
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Alterar Animal</h3>
                                <form action="alterarAnimal.jsp" method="POST">


                                    <div class="row">
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="text" name="id" value="<%= request.getParameter("id")%>" readonly class="form-control form-control-lg">
                                                <label class="form-label">Código do Animal</label>
                                            </div>

                                        </div>

                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="text" name="nome" value="<%= request.getParameter("nome")%>" class="form-control form-control-lg">
                                                <label class="form-label">Nome do Animal</label>
                                            </div>

                                        </div>

                                    </div>

                                    <div class="mt-4 pt-2">
                                        <input class="btn btn-primary btn-lg" type="submit" value="Alterar">
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
