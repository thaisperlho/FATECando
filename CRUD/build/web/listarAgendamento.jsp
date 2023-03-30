<%-- 
    Document   : listarAgendamento
    Created on : 25 de mar. de 2023, 20:25:16
    Author     : thaiscarvalho
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="config.Conexao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%  
    Statement st = null;
    ResultSet rs = null;
    %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
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
                  <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Agendamento
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item " href="criarAgendamento.jsp">Novo</a></li>
                    <li><a class="dropdown-item active" href="listarAgendamento.jsp">Listar</a></li>
                    <li><a class="dropdown-item" href="buscarAgendamento.jsp">Buscar</a></li>
                    <!--<li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="excluirAgendamento.jsp">Excluir</a></li>-->
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Medico
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="cadMedico.jsp">Cadastrar</a></li>
                    <li><a class="dropdown-item" href="listarMedico.jsp">Listar</a></li>
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Paciente
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="cadPaciente.jsp">Cadastrar</a></li>
                    <li><a class="dropdown-item" href="listarPaciente.jsp">Listar</a></li>
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
        <div class="container text-left">
            <div class="row">
              <div class="col">   
              </div>
              <div class="col-8">  
                              

<%  
            try{
     
            st = new Conexao().conectar().createStatement();
            
            rs = st.executeQuery("Select a.codAgendamento, p.nomePaciente, m.nomeMedico, a.dataAgendamento, a.horaAgendamento  from tbAgendamento a "
                + "inner join tbMedico m on a.codMedico = m.codMedico "
                + "inner join tbPaciente p on a.codPaciente = p.codPaciente" );
            
            
                out.println("<table class='table table-borderless'><tr class='table-success'>");
                out.println("<legend>Lista de Agendamentos</legend>");
                out.println("<thead class='table-info'><tr><th scope='col'>Paciente</th><th scope='col'>Medico</th><th scope='col'>Data</th><th scope='col'>Hora</th></tr></thead>");                                               
                out.println("<tr>");
            while(rs.next())
            {    
                out.println("<td class='table-secondary'>" + rs.getString(2) + "</td>");
                out.println("<td class='table-secondary'>" + rs.getString(3)+ "</td>");
                out.println("<td class='table-secondary'>" + rs.getString(4)+ "</td>");
                out.println("<td class='table-secondary'>" + rs.getString(5)+ "</td>");
                out.print("<td>");
                out.print("<a href='editarAgendamento.jsp?funcao=editar&id="+rs.getString(1)+"' class='btn btn-primary'><svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'><path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'></path><path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'></path></svg> Editar</a>");
                out.print(" <a href='listarAgendamento.jsp?funcao=excluir&id="+rs.getString(1)+"' class='btn btn-danger'><svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-trash3' viewBox='0 0 16 16'><path d='M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z'></path></svg> Excluir</a>");          
                out.print("</td></tr>");
            }
                out.println("</table>");
            }
            catch(Exception e)
            {
                out.println(e);
            }
            


        if(request.getParameter("funcao")!=null && request.getParameter("funcao").equals("excluir")){
         String cod =request.getParameter("id");
            
            try{
     
                st = new Conexao().conectar().createStatement();
                st.executeUpdate("Delete from tbAgendamento where codAgendamento='"+ cod +"'");
                            out.println("<meta http-equiv='refresh' content='0;URL=listarAgendamento.jsp'>");
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Agedamento excluido com sucesso');");
                            out.println("</script>");
         
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
 </body>
   </html>