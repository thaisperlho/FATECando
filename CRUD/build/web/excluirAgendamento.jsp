<%-- 
    Document   : excluirAgendamento
    Created on : 25 de mar. de 2023, 20:25:55
    Author     : thaiscarvalho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        if(request.getParameter("funcao")!=null && request.getParameter("funcao").equals("excluir")){
         String cod =request.getParameter("id");
            
            try{
     
                st = new Conexao().conectar().createStatement();
                st.executeUpdate("Delete from tbAgendamento where codAgendamento='"+ cod +"'");
                            out.println("<meta http-equiv='refresh' content='0;URL=index.jsp'>");
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Cadastro excluído com sucesso');");
         
            }
            catch(Exception e)
            {
            out.println(e);
            }
        }
                
            %>
    </body>
</html>
