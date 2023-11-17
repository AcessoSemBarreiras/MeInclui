<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Perfil Usuário</title>
<style><%@include file="../../estilos/padrao.css"%></style>
<style><%@include file="../../estilos/perfil-usuario.css"%></style>
</head>
<body>
	<main>
		<%@ include file="../menu.jsp"%>
	

		<div class="informacoes-usuario">
			<img alt="foto do usuario" class="foto-usuario" src="<c:out value='${usuario.fotoUsuario.urlFoto()}' />">
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

			<table>
				<tr>
					<td class="texto-adicionais">Pontos</td>
					<td id="pontos-usuario"></td>
					<td class="texto-adicionais">Nasceu em</td>
					<td><fmt:parseDate value="${usuario.dataNascimento}"
							type="date" pattern="yyyy-MM-dd" var="nascimento" /> <fmt:formatDate
							value="${nascimento}" type="date" pattern="dd/MM/yyyy" var="data" />
						<c:out value="${data}"></c:out></td>
				</tr>
			</table>
		</div>




		<div class="conquistas-usuario">
			<h3 class="texto-principal">Conquistas</h3>
			<c:if test="${conquistas != null}">
				<img alt="" src="Imagem usuario não possui conquista">
				<p class="texto-adicionais">
					Este usuário ainda não possui <b>conquistas.</b>
				</p>
			</c:if>
		</div>




		<div class="avaliacoes-usuario">
			<h3 class="texto-principal">Avaliações Recentes</h3>
			<c:if test="${fn:length(estabelecimentos) == 0}">
				<p class="texto-adicionais">
					Parece que você ainda não possui avaliações... <br> <a
						href="encontrar-estabelecimentos">Encontre estabelecimentos</a> e
					avalie
				</p>
			</c:if>
			<c:if test="${fn:length(estabelecimentos) != 0}">
				<tbody>
					<c:forEach var="estabelecimento" items="${estabelecimentos}">
						<div class="card-avaliacao">
							<tr>
								<td><c:out value="${estabelecimento.nome}" /></td>
								<td><c:out value="${estabelecimento.categoria.nomeCategoria}"/></td>
								<button id="favoritar">.</button>
							</tr>
						</div>
					</c:forEach>
				</tbody>
			</c:if>
		</div>




		<div class="comentarios-usuario">
			<h3 class="titulo-principal">Comentários</h3>
						
			<c:if test="${fn:length(comentarios) == 0}">
				<p class="texto-aviso">
					Parece que você ainda não possui comentários ... <br> <a
						href="encontrar-estabelecimentos" name="tela-pesquisa">Encontre
						estabelecimentos</a> e comente
				</p>
			</c:if>

			<c:if test="${fn:length(comentarios) != 0}">
				<c:forEach var="comentario" items="${comentarios}">
					<div class="cmts-usuario">
						<div class="usuario-cm">
							<c:out value="${usuario.nomeDeUsuario}" />
						</div>
						<p>comentou em</p>

						<div class="data-cm">
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
	</main>
</body>
</html>