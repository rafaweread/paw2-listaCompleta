<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="model.UserBean"%>
<%@ page import="controller.UserDao"%>
<%@ page import="java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="icon" type="image/png" href="img/logo.png" />
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <title>Todos os Usuários</title>
    </head>
    <body>
        
        <nav id="mainNav">
            <img src="img/logo.png" style="float: left; height: 128px; width: 138px; margin: 15px 0px 0px 15px;"/>
            <ul>
                <li><a href="index.jsp"><i class="icon-home"></i><br />Início</a></li>

                <li><a href="#"><i class="icon-cog"></i><br />Cliente</a>
                    <ul class="sub-menu">
                        <li><a href="user.jsp">Cadastrar</a></li>
                        <li><a href="listUser.jsp">Listar</a></li>
<!--                        <li><a href="edit.jsp">Alterar</a></li>-->
                    </ul>
                </li>

<!--                <li><a href="#"><i class="icon-desktop"></i><br />Portfolio</a>
                    <ul class="sub-menu">
                        <li><a href="#"><i class="icon-plane"></i> Web</a></li>
                        <li><a href="#"><i class="icon-book"></i> Print</a></li>
                        <li><a href="#"><i class="icon-facetime-video"></i> Video</a></li>
                    </ul>
                </li>-->

                <li><a href="#"><i class="icon-user"></i><br />Sobre</a>
<!--                    <ul class="sub-menu">
                        <li><a href="#"><i class="icon-plane"></i> Web</a></li>
                        <li><a href="#"><i class="icon-book"></i> Print</a></li>
                        <li><a href="#"><i class="icon-facetime-video"></i> Video</a></li>
                    </ul>-->
                </li>

                <li><a href="login.jsp"><i class="icon-twitter"></i><br />Sair</a></li>
            </ul><div class="clr"></div>
        </nav>
        <div>
            <h1>Lista de Clientes</h1>
        </div>
        <%
            //UserBean user = new UserBean();
            UserDao dao = new UserDao();
            List<UserBean> userList = dao.getAllUsers();
            //Iterator<UserBean> itr = userList.iterator();
        %>
        <div class="container">
            <table border="1" class="table table-hover table-sm">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Cpf</th>
                    <th>telefone</th>
                    <th>Data Nascimento</th>
                    <th>Cidade</th>
                    <th>Estado</th>
                    <th>Diarias</th>
                    <th>Quantida de Pessoas</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                   
                    <%
                       
                        for (UserBean user : userList) {
                    %>

                    <td><%=user.getId()%></td>
                    <td><%=user.getNome()%></td>
                    <td><%=user.getCpf()%></td>
                    <td><%=user.getTelefone()%></td>
                    <td><%=user.getDatanascimento()%></td>
                    <td><%=user.getCidade()%></td>
                    <td><%=user.getEstado()%></td>
                    <td><%=user.getDiarias()%></td>
                    <td><%=user.getQuantidadepessoas()%></td>


                    <td><a href="UserHandler?action=editform&userId=<%=user.getId()%>" class="btn btn-primary btn-block">Alterar</a></td>
                    <td><a href="UserHandler?action=delete&userId=<%=user.getId()%>" class="btn btn-danger btn-block">Excluir</a></td>

                </tr>

            </tbody>

            <%
                }
            %>
            
        </table>
            <p><a href="UserHandler?action=insert" class="btn btn-block btn-success">Adicionar Usuário</a></p>    
        </div>
        
        
    </body>
</html>