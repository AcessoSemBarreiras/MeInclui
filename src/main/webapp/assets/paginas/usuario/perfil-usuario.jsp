<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Perfil Usuário</title>
<style><%@include file="../../estilos/padrao.css"%></style>
<style><%@include file="../../estilos/perfils.css"%></style>
</head>
<body>
	<main>
		<%@ include file="../menu.jsp"%>
		<div id="perfil-usuario">
		
		<div class="inf-usuario">
			<img alt="foto do usuario" class="foto-usuario"
				src="<c:out value='${usuario.fotoUsuario.urlFoto()}'/>">
	
		<div id="pessoal">
			<c:if test="${usuario != null}">
				<a href="editar-perfil-usuario">editar</a>
			</c:if>
			<h3 class="texto-principal">
				<c:out value='${usuario.nomeDeUsuario}' />
			</h3>
			<p class="texto-secundario">
				<c:out value='${usuario.nome}' />
			</p>
			<p class="pronome">
				<c:out value='${usuario.pronome}' />
			</p>
		</div>
		<div id="pessoal-baixo">
			<p class="texto-adicionais">Pontos</p>
			<p id="pontos-usuario"></p>
			<p class="texto-adicionais">Nasceu em</p>
			<div id="fmt">
				<fmt:parseDate value="${usuario.dataNascimento}" type="date" pattern="yyyy-MM-dd" var="nascimento" /> 
				<fmt:formatDate value="${nascimento}" type="date" pattern="dd/MM/yyyy" var="data" />
				<c:out value="${data}"></c:out>
			</div>
		</div>		
		</div>




		<div class="conq-usuario">
			<div class="titulo">
				<h3 class="texto-principal">Conquistas</h3>
			</div>
			<div id="aviso">
			<c:if test="${conquistas != null}">
				<img alt="Imagem usuario não possui conquista"
					src="data:image/png+xml;base64,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">
				<p class="texto-adicionais">
					Este usuário ainda não possui <b> conquistas.</b>
				</p>
			</c:if>
			</div>
		</div>




		<div class="aval-usuario">
			<div class="aviso-sem">
			<div class="titulo">
				<h3 class="texto-principal">Avaliações Recentes</h3>
			</div>
			<c:if test="${fn:length(estabelecimentos) == 0}">
				<p class="texto-adicionais">
					Parece que você ainda não possui avaliações... <br> <a
						href="encontrar-estabelecimentos" style="color: var(--laranja)">Encontre
						estabelecimentos</a> e avalie
				</p>
			</c:if>
			</div>
			<c:if test="${fn:length(estabelecimentos) != 0}">
				<tbody>
					<c:forEach var="estabelecimento" items="${estabelecimentos}">
						<div class="card-avaliacao">
							<table>
								<tr>
									<td><c:out
											value="${estabelecimento.fotoestabelecimento.urlFoto()}" /></td>
									<td><c:out value="${estabelecimento.nome}" /></td>
									<td><c:out
											value="${estabelecimento.categoria.nomeCategoria}" /></td>
								</tr>
							</table>
						</div>
					</c:forEach>
				</tbody>
			</c:if>
		</div>




		<div class="cm-usuario">
			<div class="aviso-sem">
			<div class="titulo">
				<h3 class="texto-principal">Comentários</h3>
			</div>
			<c:if test="${fn:length(comentarios) == 0}">
				<p class="texto-adicionais">
					Parece que você ainda não possui comentários ... <br> <a
						href="encontrar-estabelecimentos" style="color: var(--laranja)">
						Encontre estabelecimentos</a> e comente
				</p>
			</c:if>
			</div>
			<c:if test="${fn:length(comentarios) != 0}">
				<c:forEach var="comentario" items="${comentarios}">
					<div class="cmts-usuario">
						<div id="foto-comentario-usuario">
							<c:out value="${usuario.fotoUsuario.urlFoto()}"></c:out>
						</div>
						<div class="nome-usuario">
							<c:out value="${usuario.nomeDeUsuario}" />
						</div>
						<p class="pronome">comentou em</p>
						<c:out value="${estabelecimento.nome}"></c:out>

						<div class="texto-secundario">
							<fmt:parseDate value="${comentario.data}" type="date"
								pattern="yyyy-MM-dd" var="parsedDate" />
							<fmt:formatDate value="${parsedDate}" type="date"
								pattern="dd/MM/yyyy" var="data" />
							<c:out value="${data}"></c:out>
						</div>

						<div class="avaliacao-cm">
							<c:out value="${comentario.quantidadeGostei}" />
							<c:out value="${comentario.quantidadeNaoGostei}" />
						</div>

						<div class="comentario-cm">
							<c:out value="${comentario.comentario}" />
						</div>

						<button>Resposta</button>

						<hr>

					</div>
				</c:forEach>
			</c:if>
		</div>
		</div>
	</main>
	
	<%@ include file="../rodape.jsp"%>
</body>
</html>