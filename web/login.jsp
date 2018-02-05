<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/logo.png" />
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap-notify.min.js" type="text/javascript"></script>
        <script type="text/javascript">
		
		function confirmar(){			
			$.notify({
				title: '<strong>Erro:</strong>',
				message: 'Seu usuário ou senha não existe!',
				offset: 50
			},{
				type: 'danger'
			});			
			return true;		
		}
               
		</script>
        
        <title>Tela de Login - HotelCup</title>
    </head>
    <body>

        <div class="container">
            <div class="login col-md-3 col-xs-11">
                <div class="row">
                    <div class="login-title col-xs-12">
<!--                        <h3>Tela de Login</h3>-->
                    <img src="img/logo.png" style="height: 160px; width: 280px;" />
                    <h1>HotelCup</h1>
                    </div>
                    <div class="login-content col-xs-12">

                        <form action="Logar" method="post" onsubmit="return confirmar()">

                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></div>
                                    <input type="text" name="USUARIO" class="form-control" placeholder="Nome do Usuário">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></div>
                                    <input type="password" name="SENHA" class="form-control" placeholder="Senha">
                                </div>
                            </div>

                            <div class="form-group text-center">
                                <button class="btn btn-primary btn-block fa fa-paper-plane" type="submit" name="button">Acessar</button>
                            </div>
                        </form>

                    </div>
                    
                </div>
            </div>
        </div>


    </body>
</html>
