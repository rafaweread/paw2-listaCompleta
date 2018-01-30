<%@page import="persistencia.LiderBD"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dominio.Lider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Líderes</title>
    </head>
    <body>
        <%
            String nome = request.getParameter("nome");
            String cpf = request.getParameter("cpf");            
            String telefone = request.getParameter("telefone");
            String dataNascimento = request.getParameter("dataNascimento");
            String cidade = request.getParameter("cidade");
            String estado = request.getParameter("estado");
            
            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
            Date data = formato.parse(dataNascimento);
            
            Lider lider = new Lider();
            lider.setNome(nome);
            lider.setCpf(cpf);
            lider.setTelefona(telefone);
            lider.setDataNascimento(data);
            lider.setCidade(cidade);
            lider.setEstado(estado);
            
            LiderBD.inserir(lider);
        %>
        
        Lider cadastrado com sucesso!
    </body>
</html>
