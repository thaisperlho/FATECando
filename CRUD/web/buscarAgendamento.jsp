<%-- 
    Document   : buscarAgendamento
    Created on : 25 de mar. de 2023, 20:25:27
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
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
   
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
                    <li><a class="dropdown-item active" href="buscarAgendamento.jsp">Buscar</a></li>
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
            </div>
          </div>
        </nav>
         <div class="container text-left">
            <div class="row">
              <div class="col">   
              </div>
              <div class="col-8">
                  <form action="" method="post">
                      <legend>Busca de Agendamento</legend>
                      <div class="input-group mb-3">
                          <input name="txtNome" type="text" class="form-control" placeholder="Digite o nome do paciente" aria-label="NomePaciente" aria-describedby="basic-addon1">
                          <button name="btnBuscar" type="submit" class="btn btn-info">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
</svg>
              </button>
                      </div>
                  </form>
                  <%  
            if(request.getParameter("btnBuscar")!=null){
                String busca = "%" + request.getParameter("txtNome") + "%";
                try{
                st = new Conexao().conectar().createStatement();
                rs = st.executeQuery("Select a.codAgendamento, p.nomePaciente, m.nomeMedico, a.dataAgendamento, a.horaAgendamento  from tbAgendamento a "
                + "inner join tbPaciente p on p.codPaciente = a.codPaciente " 
                + "inner join tbMedico m on a.codMedico = m.codMedico "
                + "where p.nomePaciente like'"+busca+"'");
                
                out.println("<table class='table'><tr class='table-success'>");
                out.println("<legend>Lista de Agendamentos</legend>");
                out.println("<thead class='table-info'><tr><th scope='col'>Paciente</th><th scope='col'>Medico</th><th scope='col'>Data</th><th scope='col'>Hora</th></tr></thead>");                                               
                out.println("<tr>");
            while(rs.next())
            {    
                out.println("<td class='table-secondary'>" + rs.getString(2) + "</td>");
                out.println("<td class='table-secondary'>" + rs.getString(3)+ "</td>");
                out.println("<td class='table-secondary'>" + rs.getString(4)+ "</td>");
                out.println("<td class='table-secondary'>" + rs.getString(5)+ "</td></tr>");
            }
                 out.println("</table>");
                }
                catch(Exception e)
                {
                out.println(e);
                }
        }
                
            %>
              </div>
              <div class="col">   
              </div>
            </div>
        </div>

        <br>
    </body>
</html>
