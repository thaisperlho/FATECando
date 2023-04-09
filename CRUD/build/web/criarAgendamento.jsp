<%-- 
    Document   : cadAgendamento
    Created on : 25 de mar. de 2023, 20:23:36
    Author     : thaiscarvalho
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="config.Conexao"%>

<%  
    Statement st = null;
    ResultSet rs = null;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script><title>JSP Page</title>
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
                    <li><a class="dropdown-item active" href="criarAgendamento.jsp">Novo</a></li>
                    <li><a class="dropdown-item" href="listarAgendamento.jsp">Listar</a></li>
                    <li><a class="dropdown-item" href="editarAgendamento">Buscar</a></li>
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
              <div class="col">
                  <br>
        <form action="" method="post" id="cadastro">
            <legend>Agendamendo de Consultas</legend>
            <div class="mb-3">
                <label class="form-label">Selecionar Paciente</label>
                <%
                try{
                st = new Conexao().conectar().createStatement();
                rs = st.executeQuery("Select * from tbPaciente");
                out.println("<select class='form-select' name='txtPaciente'>");
                out.println("<option value='' disabled selected hidden></option>");
                while (rs.next()) {
                    out.println("<option value="+rs.getString(1)+">" + rs.getString(2) + "</option>");
                }
                out.println("</select>");
                }catch(Exception e){
                    out.println(e);
                }
            %>
            </div>
            <div class="mb-3">
            <label class="form-label">Selecionar o medico</label>
            <%
                try{
                st = new Conexao().conectar().createStatement();
                rs = st.executeQuery("Select * from tbMedico");
                
                out.println("<select class='form-select' name='txtMedico'>");
                out.println("<option value='' disabled selected hidden></option>");
                while (rs.next()) {
                    out.println("<option value="+rs.getString(1)+">" + rs.getString(2) + "</option>");
                }
                out.println("</select>");
                }catch(Exception e){
                    out.println(e);
                }
            %></div>
            <div class="mb-3">
                <label class="form-label" >Data</label>
                <input name="data" type="date" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            <div class="mb-3">
                <label class="form-label" >Hora</label>
                <input name="hora" type="time" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            <div class="row g-1">
                <input class="btn btn-info" type="submit" name="btnAgendar">
            </div>   
            
        </form>
              </div>
              <div class="col">
              </div>
            </div>
         </div>         
        </form>
    </body>
</html>
<%
    if (request.getParameter("btnAgendar") != null) {
        String paciente = request.getParameter("txtPaciente");
        String medico = request.getParameter("txtMedico");
        String data = request.getParameter("data");
        String hora = request.getParameter("hora");
        try {
            st = new Conexao().conectar().createStatement();
            st.executeUpdate("insert into tbAgendamento(dataAgendamento,horaAgendamento,codPaciente,codMedico) values('" + data + "'"
                    + ", '" + hora + "', '" + paciente + "', '" + medico + "')");
            out.println("<meta http-equiv='refresh' content='0;URL=listarAgendamento.jsp'>");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Agendamento realizado com sucesso');");
            out.println("</script>");
        } catch (Exception e) {
            out.println(e);
        }

    }
%>
