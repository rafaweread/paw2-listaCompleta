<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Líderes</title>
    </head>
    <body>
        <h1>Cadastro de Líderes</h1>

        <form name="formCadastro" method="post" action="salvar.jsp">
            <label>Nome</label>
            <input type="text" name="nome" value="" />
            <br/>
            <label>Cpf</label>
            <input type="text" name="cpf" value="" />
            <br/>
            <label>Telefone</label>
            <input type="text" name="telefone" value="" />
            <br/>
            <label>Data Nascimento</label>
            <input type="text" name="dataNascimento" value="" />
            <br/>
            <label>Cidade</label>
            <input type="text" name="cidade" value="" />
            <br/>
            <label>Estado</label>
            <select name="estado">
                <option value="MT">Mato Grosso</option>
                <option value="RJ">Rio de Janeiro</option>
                <option value="SP">São Paulo</option>
                <option value="RN">Rio Grande Do Norte</option>
                <option value="RS">Rio Grande Do Sul</option>
                <option value="PR">Paraná</option>
            </select>
            <br/>
            
            <input type="submit" name="salvar" value="Salvar" />
        </form>
    </body>
</html>
