<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pesquisa</title>
</head>
<body>
	<c:if test="${usuario != null}">
		<%@ include file="menuLogado.jsp"%>
	</c:if>

	<c:if test="${usuario == null}">
		<%@ include file="menuNaoLogado.jsp"%>
	</c:if>

	<div class="barraPesquisa">
		<form action="mostrar-estabelecimentos-pesquisados" method="post">
			<input type="submit" value="."> <input type="text"
				id="pesquisa" name="q" placeholder="Digite sua pesquisa aqui">
		</form>
	</div>

	<div class="filtrar">
		<form action="filtrar-estabelecimentos" method="post">
			<div class="filtro">
				<select name="categoria" id="categoria">
					<option value="" selected>Categoria</option>
					<option value="Doceria">Doceria</option>
					<option value="Saúde">Saúde</option>
					<option value="Restaurante">Restaurante</option>
					<option value="bar">Bar</option>
					<option value="Estabelecimento Comercial">Estabelecimento
						Comercial</option>
				</select> <input type="text" id="nomeEstado" name="nomeEstado"
					placeholder="Digite sua pesquisa aqui"> <input type="text"
					id="mediaI" name="media" placeholder="Digite sua pesquisa aqui">
				<input type="submit" value=".">
			</div>
		</form>
	</div>

	<div id="conteudo">
		<h1>O Que Deseja Ver Hoje?</h1>
		<p>
			<b>Navegue</b> pelos <b>estabelecimentos</b> presentes no <i>MeInclui!</i>
			e ajude a tornar os locais mais <b>acessíveis</b> com suas <b>avaliações.</b>
		</p>
		<h3>Filtre sua Busca para um resultado mais agradável!</h3>
	</div>
	<div id="predio">
		<img src="" alt="imagem De um prédio">
	</div>



	<c:forEach var="es" items="${estabelecimentos}">
		<table>
			<tr>

				<td><c:out value="${es.nome}" /></td>
				<td><c:out value="${es.pontoAcessibilidade}" /></td>
			</tr>
		</table>
	</c:forEach>

</body>
</html>