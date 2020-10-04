<%-- 
    Document   : index
    Created on : 4 de out de 2020, 17:34:35
    Author     : isame
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="avaliacao1.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Disciplina>disciplinaList = (ArrayList)application.getAttribute("disciplinaList");
    if(disciplinaList == null){
        disciplinaList = new ArrayList();
        disciplinaList.add(new Disciplina("Programação Orientada a Objetos", "Ementa POO", 4));
        disciplinaList.add(new Disciplina("Egenharia de Software", "Ementa ES3", 4));
        disciplinaList.add(new Disciplina("Sistemas Operarionais 2", "EMENTA SO2", 4));
        disciplinaList.add(new Disciplina("Linguagem de Programação 4", "LP4", 4));
        disciplinaList.add(new Disciplina("Metodologia", "Met", 4));
        disciplinaList.add(new Disciplina("Banco de Dados", "BD", 4));
        disciplinaList.add(new Disciplina("Segurança da Informação", "Seg. I", 5));
        application.setAttribute("disciplinaList",  disciplinaList);
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação 1 POO</title>
    </head>
    <body>
        <h1>Avaliação 1 POO</h1>
        <h2> Isabela Pereira Melim</h2>
        <h2> RA: 1290481913020</h2>
        <h3> Disciplinas matriculadas: <%= Disciplina.getList(disciplinaList).size() %> </h3>
        <h3><a href="sobre.jsp"> Sobre</a>
        <h3><a href="disciplina.jsp"> Disciplinas</a>
    </body>
</html>
