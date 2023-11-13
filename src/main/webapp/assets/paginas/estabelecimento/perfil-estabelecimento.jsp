<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil Estabelecimento</title>
</head>
<body>

	<%@ include file="../menu.jsp" %>


	<div id="dados-estabelecimento">

		<div id="id-estabelecimento">
			<input type="hidden" name="id" value='<c:out value="${estabelecimento.idEstabelecimento }"></c:out>'>
		</div>
		<div id="foto-estabelecimento">
			<img alt="foto do estabelecimento" src="">
		</div>
		
			<c:if test="${usuario == null}">
				<a href="editar-perfil-estabelecimento">editar</a>
			</c:if>
	
	
		<div id="inf-estabelecimento">
			<h1 id="nome-estabelecimento">
				<c:out value='${estabelecimento.nome}' />
			</h1>
			<p id="categoria-perfil">
				<c:out value="${estabelecimento.categoria.nomeCategoria}"></c:out>
			</p>
			<div id="endereco-perfil">
				<p>
					<c:out value="${estabelecimento.endereco.tipoLogradouro}."></c:out>
					<c:out value="${estabelecimento.endereco.logradouro}"></c:out>
					<c:out value="n°${estabelecimento.endereco.numero}"></c:out>
					<br>
					<c:out value="${estabelecimento.endereco.bairro}"></c:out>
					<c:out value="${estabelecimento.endereco.cidade}"></c:out>
					<c:out value="/${estabelecimento.endereco.estado}"></c:out>
				</p>
			</div>
		</div>

		<div id="favoritar-estabelecimento">
	
		
		<p><c:out value='${estabelecimento.idEstabelecimento}'/></p>
			<a href="favoritar-estabelecimento?id=<c:out value="${estabelecimento.idEstabelecimento}"/>">Favoritar</a>
		</div>
		
		<div id="desfavoritar-estabelecimento">
			<a href="desfavoritar-estabelecimento?id=<c:out value="${estabelecimento.idEstabelecimento}"/>">Desfavoritar</a>
		</div>

		<div id="nota=estabelecimento">
			<h3>Nota</h3>
			<hr>
			<c:if test="${nota == null}">
				<p>N/A</p>
			</c:if>
		</div>

		<div class="botao-padrao">
			<a href="avaliacao-estabelecimento?id=<c:out value="${estabelecimento.idEstabelecimento}"/>">Avaliar</a>
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
					<td><fmt:parseDate value="${cm.data}" type="date"
							pattern="yyyy-MM-dd" var="parsedDate" /> <fmt:formatDate
							value="${parsedDate}" type="date" pattern="dd/MM/yyyy" var="data" />
						<c:out value="${data}"></c:out></td>
					<td><c:out value="${cm.quantidadeGostei}" /></td>
					<td><c:out value="${cm.quantidadeNaoGostei}" /></td>
					<td><a
						href="adicionar-quantidade-gostei?id=<c:out value='${cm.idComentario}'/>">Gostei</a></td>
					<td><a
						href="adicionar-quantidade-nao-gostei?id=<c:out value='${cm.idComentario}'/>">Não
							Gostei</a></td>
					<td>
						<form action="responder-comentario">
							<input type="hidden" name="id-comentario" value="<c:out value='${cm.idComentario}'/>">
							<input type="hidden" name="id" value="<c:out value='${estabelecimento.idEstabelecimento}'/>">
							<input type="text" name="resposta-comentario">
							<input type="submit" value="Responder">
						</form>
					</td>
					<td><c:if test="${respostas == null}">

						</c:if> <c:if test="${respostas != null}">
							<c:forEach var="res" items="${respostas}">
								<c:if
									test="${res.comentarioRespondido.idComentario == cm.idComentario}">
									<td><c:out value="${res.comentario}" /></td>
									<td><c:out value="${res.data}"></c:out></td>
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
			<input type="radio" name="obstaculos" value="1" disabled> <input
				type="radio" name="obstaculos" value="2" disabled> <input
				type="radio" name="obstaculos" value="3" disabled> <input
				type="radio" name="obstaculos" value="4" disabled> <input
				type="radio" name="obstaculos" value="5" disabled>
		</div>

		<div class="topico-avaliacao">
			<h2>Portas</h2>
			<input type="radio" name="portas" value="1" disabled> <input
				type="radio" name="portas" value="2" disabled> <input
				type="radio" name="portas" value="3" disabled> <input
				type="radio" name="portas" value="4" disabled> <input
				type="radio" name="portas" value="5" disabled>
		</div>


		<div class="topico-avaliacao">
			<h2>Banheiros</h2>
			<input type="radio" name="banheiros" value="1" disabled> <input
				type="radio" name="banheiros" value="2" disabled> <input
				type="radio" name="banheiros" value="3" disabled> <input
				type="radio" name="banheiros" value="4" disabled> <input
				type="radio" name="banheiros" value="5" disabled>
		</div>

		<div class="topico-avaliacao">
			<h2>Rampas</h2>
			<input type="radio" name="rampas" value="1" disabled> <input
				type="radio" name="rampas" value="2" disabled> <input
				type="radio" name="rampas" value="3" disabled> <input
				type="radio" name="rampas" value="4" disabled> <input
				type="radio" name="rampas" value="5" disabled>
		</div>

		<div class="topico-avaliacao">
			<h2>Proteção</h2>
			<input type="radio" name="protecao" value="1" disabled> <input
				type="radio" name="protecao" value="2" disabled> <input
				type="radio" name="protecao" value="3" disabled> <input
				type="radio" name="protecao" value="4" disabled> <input
				type="radio" name="protecao" value="5" disabled>
		</div>
	</div>

	<form action="inserir-comentario" method="post">
		<div id="cadastro-comentario">
			<div id="conteudo-comentario">
			<input type="hidden" name="id" value='<c:out value="${estabelecimento.idEstabelecimento }"/>'>
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