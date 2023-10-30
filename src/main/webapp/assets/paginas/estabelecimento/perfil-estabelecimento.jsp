<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil Estabelecimento</title>
</head>
<body>
	
	<c:if test="${usuario != null}">
		<%@ include file="../menuLogado.jsp" %>
	</c:if>
	
	<c:if test="${usuario == null}">
		<%@ include file="../menuNaoLogado.jsp" %>
	</c:if>

	<div id="dados-estabelecimento">
		<img alt="foto do estabelecimento" src="">
		
		<c:if test="${usuario != null}">
			<a href="editar-perfil-estabelecimento.jsp">editar</a>
		</c:if>
		
		<h1 id="nome-estabelecimento">
			<c:out value='${estabelecimento.nome}' />
		</h1>


		<form action="favoritar" method="post">
		  <p id="categoria-estabelecimento">
			  <c:out value='${categoria.nomeCategoria}' />
		  </p>
		

			<div id="favoritar-estabelecimento">
				<a href="favoritar-estabelecimento?id=<c:out value='${estabelecimento.idEstabelecimento}'/>">Favoritar</a>
				<a href="desfavoritar-estabelecimento?id=<c:out value='${estabelecimento.idEstabelecimento}'/>">Desfavoritar</a>
			</div>
	
		<div id="nota=estabelecimento">
			<h3>Nota</h3>
			<hr>
			<c:if test="${nota == null}">
				<p>N/A</p>
			</c:if>
		</div>

		<div class="botao-padrao">
			<button onclick="location.href='http://localhost:8080/MeInclui/avaliacao-estabelecimento'">AVALIAR</button>
		</div>
	</div>

	<div id="comentario-estabelecimento">
		<h3 class="titulo-principal">Comentários</h3>
		<img alt="Imagem mulher comentando" src=""> <br>
		<c:if test="${comentarios == null}">
			<p class="texto-aviso">
				Esse estabelecimento não possui comentários... <br> <b>comente</b>
				para ser o primeiro!
			</p>
		</c:if>
		<c:if test="${comentarios != null}">
			<c:forEach var="cm" items="${comentarios}">
				<tr>
					<td><c:out value="${cm.comentario}" /></td>
					<td><c:out value="${cm.data}" /></td>
					<td><c:out value="${cm.quantidadeGostei}" /></td>
					<td><c:out value="${cm.quantidadeNaoGostei}" /></td>
					<td>
						<form action="responder-comentario">
							<input type="hidden" name="id"
								value="<c:out value='${cm.idComentario}'/>"> <input
								type="text" name="resposta-comentario"> <input
								type="submit" value="Responder">
						</form>
					</td>
					<td>
					<c:if test="${respostas == null}">
					
					</c:if>
					<c:if test="${respostas != null}">
					<c:forEach var="res" items="${respostas}">
						<c:if test="${res.comentarioRespondido.idComentario == cm.idComentario}">
							<td><c:out value="${res.comentario}" /></td>
							<td><c:out value="${res.data}" /></td>
							<td><c:out value="${res.quantidadeGostei}" /></td>
							<td><c:out value="${res.quantidadeNaoGostei}" /></td>
							<td><br></td>
							</c:if>
						</c:forEach>
						</c:if></td>
				</tr>
			</c:forEach>
		</c:if>

		<button class="botao-padrao">Comentar</button>
	</div>

	<div id="avaliacao-estabelecimento">
		<h3 class="titulo-principal">Avaliações</h3>

		<div class="topico-avaliacao">
			<h2>Obstáculos</h2>
			<input type="radio" name="obstaculos" value="1"> <input
				type="radio" name="obstaculos" value="2"> <input
				type="radio" name="obstaculos" value="3"> <input
				type="radio" name="obstaculos" value="4"> <input
				type="radio" name="obstaculos" value="5">
		</div>

		<div class="topico-avaliacao">
			<h2>Portas</h2>
			<input type="radio" name="portas" value="1"> <input
				type="radio" name="portas" value="2"> <input type="radio"
				name="portas" value="3"> <input type="radio" name="portas"
				value="4"> <input type="radio" name="portas" value="5">
		</div>


		<div class="topico-avaliacao">
			<h2>Banheiros</h2>
			<input type="radio" name="banheiros" value="1"> <input
				type="radio" name="banheiros" value="2"> <input type="radio"
				name="banheiros" value="3"> <input type="radio"
				name="banheiros" value="4"> <input type="radio"
				name="banheiros" value="5">
		</div>

		<div class="topico-avaliacao">
			<h2>Rampas</h2>
			<input type="radio" name="rampas" value="1"> <input
				type="radio" name="rampas" value="2"> <input type="radio"
				name="rampas" value="3"> <input type="radio" name="rampas"
				value="4"> <input type="radio" name="rampas" value="5">
		</div>

		<div class="topico-avaliacao">
			<h2>Proteção</h2>
			<input type="radio" name="protecao" value="1"> <input
				type="radio" name="protecao" value="2"> <input type="radio"
				name="protecao" value="3"> <input type="radio"
				name="protecao" value="4"> <input type="radio"
				name="protecao" value="5">
		</div>
	</div>

	<form action="inserir-comentario" method="post">
		<div id="cadastro-comentario">
			<div id="conteudo-comentario">
				<input type="text" placeholder="Deixe aqui seu comentário..."
					maxlength="280" name="comentario">
			</div>
			<div class="cancelar">
				<a href="http://localhost:8080/MeInclui/perfil-estabelecimento">Cancel</a>
			</div>

			<div class="enviar">
				<input type="submit">
			</div>
		</div>
	</form>


</body>
</html>