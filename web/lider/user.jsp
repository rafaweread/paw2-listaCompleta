<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Add New User</title>
    </head>
    <body>
        <form method="POST" action='UserHandler' name="frmAddUser"><input
                type="hidden" name="action" value="insert" />
            <p><b>Adicionar nova reserva</b></p>
            <table>
                <tr>
                    <td>ID da Reserva</td>
                    <td><input type="text" name="userid" /></td>
                </tr>
                <tr>
                    <td>Primeiro Nome</td>
                    <td><input type="text" name="firstName" /></td>
                </tr>
                <tr>
                    <td>Sobrenome</td>
                    <td><input type="text" name="lastName" /></td>
                </tr>
                    <td>Telefone</td>
                    <td><input type="text" name="telephone" /></td>
                <tr>
                    <td>Data nascimento</td>
                    <td><input type="date" name="birthdate" /></td>
                </tr>    
                <tr>
                    <td>Cidade</td>
                    <td><input type="text" name="city" /></td>
                </tr>
                <tr>
                    <td>Estado</td>
                    <td><input type="text" name="state" /></td>
                </tr>
<!--                <tr>
                    <td>Data do cadastro</td>
                    <td><input type="date" name="daterecord" /></td>
                </tr><tr>
                    <td>Data da reserva</td>
                    <td><input type="date" name="datereservation" /></td>
                </tr><tr>
                    <td>Quantidade de dias da reserva</td>
                    <td><input type="text" name="dailyquantity" /></td>
                </tr><tr>
                    <td>Número de pessoas</td>
                    <td><input type="text" name="peaplequantity" /></td>
                </tr>-->
                
                
                    <td></td>
                    <td><input type="submit" value="Submit" /></td>
                </tr>
            </table>
        </form>
        <p><a href="UserHandler?action=listUser">Ver registros</a></p>
    </body>
</html>