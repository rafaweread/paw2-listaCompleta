<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="controller.UserDao"%>
<%@ page import="model.UserBean"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <title>Edit User</title>
    </head>
    <body>
    <nav id="mainNav">
        <ul>
            <li><a href="index.jsp"><i class="icon-home"></i><br />Home</a></li>

                <li><a href="#"><i class="icon-cog"></i><br />Cadastro</a>
                    <ul class="sub-menu">
                        <li><a href="user.jsp">Cliente</a></li>
                        <li><a href="listUser.jsp">Listar</a></li>
                        <li><a href="edit.jsp">Alterar</a></li>
                    </ul>
                </li>

            <li><a href="#"><i class="icon-desktop"></i><br />Portfolio</a>
                <ul class="sub-menu">
                    <li><a href="#"><i class="icon-plane"></i> Web</a></li>
                    <li><a href="#"><i class="icon-book"></i> Print</a></li>
                    <li><a href="#"><i class="icon-facetime-video"></i> Video</a></li>
                </ul>
            </li>

            <li><a href="#"><i class="icon-user"></i><br />About</a>
                <ul class="sub-menu">
                    <li><a href="#"><i class="icon-plane"></i> Web</a></li>
                    <li><a href="#"><i class="icon-book"></i> Print</a></li>
                    <li><a href="#"><i class="icon-facetime-video"></i> Video</a></li>
                </ul>
            </li>

            <li><a href="#"><i class="icon-twitter"></i><br />Contact</a></li>
        </ul><div class="clr"></div>
    </nav>
    <%
        UserBean user = new UserBean();
    %>
    <%
        UserDao dao = new UserDao();
    %>
    <form method="POST" action='UserHandler' name="frmEditUser">

        <input type="hidden" name="action" value="edit" /> 

        <p><p>Alterar Cadastro de Cliente</p></p>

    <%
        String uid = request.getParameter("userId");
        if (!((uid) == null)) {
            int id = Integer.parseInt(uid);
            user = dao.getUserById(id);
    %>
    <div class="container-fluid">
        <div class="container">


            <div class="form-group col-lg-4">
                <label>Código</label>
                <input class="form-control" type="text" name="usuId" readonly="readonly" value="<%=user.getId()%>" required="Insira um Código">
            </div>

            <div class="form-group col-lg-6">
                <label>Nome</label>
                <input class="form-control" type="text" name="nome" required="" value="<%=user.getNome()%>" placeholder="Nome do Cliente" />
            </div>
            <br/>        

            <div class="form-group col-lg-8">
                <label>Cpf</label>
                <input class="form-control" type="text" name="cpf" value="<%=user.getCpf()%>" placeholder="" />
            </div>

            <br/>

            <div class="form-group col-lg-2">
                <label>Telefone</label>
                <input class="form-control" type="text" name="telefone" value="<%=user.getTelefone()%>" placeholder="" />
            </div>

            <div class="form-group col-lg-2">
                <label>Data Nascimento</label>
                <input class="form-control" type="date" name="datanascimento" value="<%=user.getDatanascimento()%>" placeholder="" />
            </div> 

            <div class="form-group col-lg-6">
                <label>Cidade</label>
                <input class="form-control" type="text" name="cidade" value="<%=user.getCidade()%>" placeholder="" />
            </div>

            <div class="form-group col-lg-6">
                <label>Estado</label>
                <input class="form-control" type="text" name="estado" value="<%=user.getEstado()%>" placeholder="" />
            </div>

            <div class="form-group col-lg-1">
                <label>Diarias</label>
                <input class="form-control" type="text" name="diarias" value="<%=user.getDiarias()%>" placeholder="" />
            </div>  

            <div class="col-lg-11">
                <div class="form-group col-lg-4">
                    <label>Quantidade de Pessoas</label>
                    <input class="form-control" type="text" name="quantidadepessoas" value="<%=user.getQuantidadepessoas()%>" placeholder=""/>
                </div>
            </div>

            <div class="col-lg-4">
                <input type="submit" value="Alterar" class="btn btn-primary" />
            </div>

        </div>
    </div>


    <%
        } else
            out.println("ID Not Found");
    %>
</form>
</body>
</html>