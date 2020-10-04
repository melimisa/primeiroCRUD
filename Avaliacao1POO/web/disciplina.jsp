<%-- 
    Document   : disciplina
    Created on : 4 de out de 2020, 18:02:43
    Author     : isame
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="avaliacao1.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1" %>
<%
    ArrayList<Disciplina>disciplinaList = (ArrayList)application.getAttribute("disciplinaList");
    
    Exception reqEx = null;
    try{
        if(request.getParameter("nota")!= null ){
            Double nota = Double.parseDouble(request.getParameter("nota"));
            int i = Integer.parseInt(request.getParameter("i"));

            if(nota >=0 && nota <=10){
                disciplinaList.get(i).setNota(nota);
                response.sendRedirect(request.getRequestURI());
            }
            else{
                 out.println("<script>alert('Digite uma nota entre 0 e 10')</script>");
            }
        
        }
    }catch(Exception e){
        reqEx = e;
    }
        
    if(reqEx != null){
        out.println("<script>alert('Digite uma nota')</script>");
        
    }
    
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Disciplinas</h1>
        <a href="index.jsp">Voltar</a>
        
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Ementa</th>
                <th>Ciclo</th>
                <th>Nota</th>
                <th colspan="2">Alterar nota</th>
            </tr>
            
            <%for(int i = 0; i <  Disciplina.getList(disciplinaList).size(); i++){%>
                    <% Disciplina disciplina =   Disciplina.getList(disciplinaList).get(i); %>
                    <tr>
                        <td> <%=i%> </td>
                        <td> <%= disciplina.getNome() %> </td>
                        <td> <%= disciplina.getEmenta()%> </td>
                        <td> <%= disciplina.getCiclo()%> </td>
                        <td> <%= disciplina.getNota()%> </td>
                        <td>
                            <form>
                                <input type="number" name="nota">
                                <input type="submit" name="altera" value="Alterar">
                                <input type="hidden" name="i" value="<%=i%>">
                            </form>
                        </td>
                    </tr>
                    
            <% } %>
            
        </table>
        
        
    </body>
</html>