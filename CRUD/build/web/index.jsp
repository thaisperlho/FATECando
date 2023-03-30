<%-- 
    Document   : index
    Created on : 25 de mar. de 2023, 20:00:21
    Author     : thaiscarvalho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script><title>JSP Page</title>
    <title>JSP Page</title>
    </head>
    <body style="background-color: #B8E8F4">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
          <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">LOGO</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Agendamento
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="criarAgendamento.jsp">Novo</a></li>
                    <li><a class="dropdown-item" href="listarAgendamento.jsp">Listar</a></li>
                    <li><a class="dropdown-item" href="buscarAgendamento.jsp">Buscar</a></li>
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Medico
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="cadMedico.jsp">Cadastrar</a></li>
                    <li><a class="dropdown-item" href="listarMedico.jsp">Listar</a></li>
                    <li><a class="dropdown-item" href="buscarMedico.jsp">Buscar</a></li>
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Paciente
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="cadPaciente.jsp">Cadastrar</a></li>
                    <li><a class="dropdown-item" href="listarPaciente.jsp">Listar</a></li>
                    <li><a class="dropdown-item" href="buscarPaciente.jsp">Buscar</a></li>
                  </ul>
                </li>
              </ul>
              <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form>
            </div>
          </div>
        </nav>
    </body>
</html>
