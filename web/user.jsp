<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="icon" type="image/png" href="img/logo.png" />
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script type="text/javascript">
		
		$(document).ready(function(){
			$('#datanascimento').mask('00/00/0000');
		})
        </script>
        
        <title>Cadastro de Cliente</title>
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
    
        <div class="container-fluid">
            <dir class="container">
                <form method="POST" action='UserHandler' name="frmAddUser">
                
                <input type="hidden" name="action" value="insert" />
                
                <p><b>Novo Cadastro</b></p>
                

                <div class="form-group col-lg-2">
                    <label>Código</label>
                    <input class="form-control" type="text" name="userid" required="Digite seu código" placeholder="Código" />
                </div>
                        
                    
                <div class="form-group col-lg-6">
                    <label>Nome</label>
                    <input class="form-control" type="text" name="nome" required="" placeholder="Nome do cliente" />
                </div>
                <br/>        
                
                <div class="form-group col-lg-8">
                    <label>Cpf</label>
                    <input class="form-control" type="text" name="cpf"  placeholder="Cpf" />
                </div>
                
                <br/>
                        
                <div class="form-group col-lg-2">
                    <label>Telefone</label>
                    <input class="form-control" type="text" name="telefone"  placeholder="Digite o telefone" />
                </div>
                
                <div class="form-group col-lg-2">
                    <label>Data Nascimento</label>
                    <input class="form-control" type="text" name="datanascimento"  id="datanascimento" placeholder="Data de Nascimento" />
                </div> 
                
                <div class="form-group col-lg-6">
                    <label>Cidade</label>
                    <input class="form-control" type="text" name="cidade"  placeholder="Cidade do Cliente" />
                </div>
                
                <div class="form-group col-lg-6">
                    <label>Estado</label>
                    <input class="form-control" type="text" name="estado"  placeholder="Estado do Cliente" />
                </div>
                
                <div class="form-group col-lg-1">
                    <label>Diarias</label>
                    <input class="form-control" type="text" name="diarias"  placeholder="Qtd" />
                </div>  
                
                <div class="col-lg-11">
                    <div class="form-group col-lg-4">
                        <label>Quantida de Pessoas</label>
                        <input class="form-control" type="text" name="quantidadepessoas"  placeholder="Número de Pessoas"/>
                    </div>
                </div>
                  
                
                <div class="col-lg-4">
                    <button class="btn btn-default form-group col-lg-4" type="submit">Salvar</button>
                </div>
                
              
            </form>
                <div class="col-lg-9">
                    <br/>
                    
                   
                    <p><a href="UserHandler?action=listUser" class="btn btn-success form-group col-lg-2">Ver registros</a></p>
                </div>
            
            </dir>
            
        </div>

        
    </body>
</html>