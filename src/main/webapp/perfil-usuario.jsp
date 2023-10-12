<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil Usuário</title>
</head>
<body>
	<main>

    <header class="cabecalho-pu">
        <div class="logo-me-inclui">
            <img src="" alt="logo">
        </div>
        <a href="tela-pesquisa.jsp" name="pesquisar">.</a>
        <a href="cadastro-estabelecimento.jsp" name="add-estabelecimento">.</a>
        <a href="" name="ranking">.</a>
        <a href="" name="perfil-usuario">.</a>
    </header>

    <div class="informacoes-usuario">
    <table>
    <tr>
    	<td><img alt="" src="foto do usuario"></td>
    	<td><button name="editar-usuario">.</button></td>
    	<td id="nome-de-usuario"><c:out value='${usuario.nomeDeUsuario}'/></td>
    	<td id="nome-usuario"><c:out value='${usuario.nome}'/></td>
    	<td id="pronome-usuario"><c:out value='${usuario.pronome}'/></td>
    	
    	<td id="pontos">Pontos</td>
    	<td id="pontos-usuario"></td>
    	<td id="nasceu">Nasceu em</td>
    	<td id="data-nascimento-usuario"><c:out value='${usuario.dataNascimento}'/></td>
    	</tr>
    </table>
    </div>

</main>
</body>
</html>