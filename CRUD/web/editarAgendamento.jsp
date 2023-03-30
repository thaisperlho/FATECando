<%-- 
    Document   : editarPaciente
    Created on : 28 de mar. de 2023, 17:56:44
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script><title>JSP Page</title>
    
        <title>Editar Usuário</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
          <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Navbar</a>
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
                    <li><a class="dropdown-item" href="criarAgendamento.jsp">Novo</a></li>
                    <li><a class="dropdown-item" href="listarAgendamento.jsp">Listar</a></li>
                    <li><a class="dropdown-item" href="editarAgendamento">Buscar</a></li>
                    <!--<li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="excluirAgendamento.jsp">Excluir</a></li>-->
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
              <div class="col">
                     <%
            String valorPaciente=null;
            String valorMedico=null;
            String valorData=null;
            String valorHora=null;
            
            
            if(request.getParameter("funcao")!=null && request.getParameter("funcao").equals("editar")){
                String valorID = request.getParameter("id");       
                st = new Conexao().conectar().createStatement();
                
            try{
                rs = st.executeQuery("Select p.nomePaciente, m.nomeMedico, a.dataAgendamento, a.horaAgendamento  from tbAgendamento a "
                + "inner join tbMedico m on a.codMedico = m.codMedico "
                + "inner join tbPaciente p on a.codPaciente = p.codPaciente where codAgendamento='"+ valorID +"'");
                while(rs.next()) 
                    {    
                        valorPaciente =  rs.getString(1);
                        valorMedico =  rs.getString(2);
                        valorData =  rs.getString(3);
                        valorHora = rs.getString(4);
                
                    }
            }
                catch(Exception e)
                        {
                        out.println(e);
                        }
  
            }
            %>
        <form lass="form-floating mb-3" action="" method="post" id="cadastro">
            <legend>Dados do Agendamanto</legend>
            <div class="mb-3">
                <label class="form-label" >Paciente</label>
                <input value="<%=valorPaciente %>" name="txtPaciente" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            <div class="mb-3">
                <label class="form-label" >Medico</label>
             <%
                try{
                st = new Conexao().conectar().createStatement();
                rs = st.executeQuery("Select * from tbMedico");
                
                out.println("<select class='form-select' name='txtMedico'>");
                out.println("<option value='"+valorMedico+"' disabled selected hidden>"+valorMedico+"</option>");
                while (rs.next()) {
                    out.println("<option value="+rs.getString(1)+">" + rs.getString(2) + "</option>");
                }
                out.println("</select>");
                }catch(Exception e){
                    out.println(e);
                }
            %>
                <input  value="<%=valorMedico %>" name="txtMedico" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            <div class="mb-3">
                <label class="form-label" >Data</label>
                <input value="<%=valorData %>" name="txtCel" type="date" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            <div class="mb-3">
                <label class="form-label" >Hora</label>
                <input value="<%=valorHora %>" name="txtCel" type="time" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            <div class="row g-1">
                <input value="Atualizar" class="btn btn-info" type="submit" name="btnAtualizar">
            </div>   
            
        </form>
              </div>
              <div class="col">
              </div>
            </div>
        </div>           
    </body>
</html>
<%
            if(request.getParameter("btnAtualizar")!=null){
                String id = request.getParameter("id");
                String nome = request.getParameter("txtNome");
                String telefone = request.getParameter("txtTel");
                String celular = request.getParameter("txtCel");
                String nivel = request.getParameter("txtEspecialidade");
               try{
                        st = new Conexao().conectar().createStatement();

                        st.executeUpdate("Update tbMedico set nomeMedico='" + nome + "',telMedico='" + telefone 
                        + "',celMedico='" + celular + "',codEspecialidade='" + nivel 
                        + "' where codMedico='" + id + "'");     
                        out.println("<meta http-equiv='refresh' content='0;URL=listarMedico.jsp'>");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Medico atualizado com sucesso');");
                        out.println("</script>");    
                        }
                catch(Exception e)
                        {
                        out.println(e);
                        }
  
            }
            %>
