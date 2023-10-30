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
	<header class="cabecalho">
		<div class="logo-me-inclui">
			<img src="" alt="logo">
		</div>
		<a href="tela-pesquisa.jsp" name="pesquisar">.</a> <a
			href="cadastro-estabelecimento.jsp" name="add-estabelecimento">.</a>
		<a href="" name="ranking">.</a> <a href="" name="perfil-usuario">.</a>
		<hr>
	</header>

	<div id="dados-estabelecimento">
		<img alt="foto do estabelecimento" src="">
		<p>
			<button name="editar-estabelecimento">.</button>
		</p>
		<h1 id="nome-estabelecimento">
			<c:out value='${estabelecimento.nome}' />
		</h1>

		<form action="favoritar" method="post">
			<div id="favoritar-estabelecimento">
				<button>Favoritar</button>
			</div>
		</form>

		<div id="nota=estabelecimento">
			<h3>Nota</h3>
			<hr>
			<c:if test="${nota == null}">
				<p>N/A</p>
			</c:if>
		</div>

		<div class="botao-padrao">
			<button>AVALIAR</button>
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
					<td><a href="adicionar-quantidade-gostei?id=<c:out value='${cm.idComentario}'/>">Gostei</a></td>
					<td><a href="adicionar-quantidade-nao-gostei?id=<c:out value='${cm.idComentario}'/>">Não Gostei</a></td>
					<td>
						<form action="responder-comentario">
							<input type="hidden" name="id"
								value="<c:out value='${cm.idComentario}'/>"> 
								<input type="text" name="resposta-comentario"> 
								<input type="submit" value="Responder">
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