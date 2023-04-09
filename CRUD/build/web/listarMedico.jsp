<%-- 
    Document   : listarMedico
    Created on : 25 de mar. de 2023, 20:16:32
    Author     : thaiscarvalho
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="config.Conexao"%>
<!DOCTYPE html>

<%  
    Statement st = null;
    ResultSet rs = null;
    %>

<html>
    <head>
        <html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br" xml:lang="pt-br">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script><title>JSP Page</title>
   
        <title>JSP Page</title>
    </head>
    <body style="background-color: #B8E8F4">
         <nav class="navbar navbar-expand-lg bg-body-tertiary">
          <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Voltar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Agendamento
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item " href="criarAgendamento.jsp">Novo</a></li>
                    <li><a class="dropdown-item " href="listarAgendamento.jsp">Listar</a></li>
                    <li><a class="dropdown-item" href="buscarAgendamento.jsp">Buscar</a></li>
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Medico
                  </a>
                  <ul class="dropdown-menu active">
                    <li><a class="dropdown-item" href="cadMedico.jsp">Cadastrar</a></li>
                    <li><a class="dropdown-item active" href="listarMedico.jsp">Listar</a></li>
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
            </div>
          </div>
        </nav>
        <div class="container text-left">
            <div class="row">
              <div class="col">   
              </div>
              <div class="col-6"> 
                <form action="listarMedicos.jsp" method="post">
                    <legend>Lista de Medicos</legend>
        <%  
                try{
                st = new Conexao().conectar().createStatement();
                rs = st.executeQuery("Select m.codMedico, m.nomeMedico,e.especialidade from tbMedico m inner join tbEspecialidade e on m.codEspecialidade = e.codespecialidade " );
                out.println("<table class='table table-borderless' ><thead class='table-info'><tr><th scope='col'>Medico</th><th scope='col'>Especialidade</th>"
                + "</tr></thead>");
                while(rs.next())
                {
                out.println("<tbody><td class='table-secondary'>" + rs.getString(2) + "</td>");
                out.println("<td class='table-secondary'>" + rs.getString(3)+ "</td>");
                out.print("<td>");
                out.print("<a href='editarMedico.jsp?funcao=editar&id="+rs.getString(1)+"' class='btn btn-primary'><svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'><path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'></path><path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'></path></svg> Editar</a>");
                out.print("</td></tr></tbody>");
                }
                 out.println("</table>");
                }
                catch(Exception e)
                {
                out.println(e);
                }  
            %>
                </form>
                  
              </div>
              <div class="col">   
              </div>
            </div> 
    </body>
</html>
