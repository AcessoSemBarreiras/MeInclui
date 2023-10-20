<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<a href="tela-pesquisa.jsp" name="pesquisar">.</a> <a
				href="cadastro-estabelecimento.jsp" name="add-estabelecimento">.</a>
			<a href="" name="ranking">.</a> <a href="" name="perfil-usuario">.</a>
		</header>

		<div class="informacoes-usuario">
			<img alt="foto do usuario" src="">
			<p>
				<button name="editar-usuario">.</button>
			</p>
			<h3 id="nome-de-usuario">
				<c:out value='${usuario.nomeDeUsuario}' />
			</h3>
			<p class="titulo-principal">
				<c:out value='${usuario.nome}' />
			</p>
			<p id="pronome-usuario">
				<c:out value='${usuario.pronome}' />
			</p>

			<table>
				<td class="texto-secundario">Pontos</td>
				<td id="pontos-usuario"></td>
				<td class="texto-secundario">Nasceu em</td>
				<td id="data-nascimento-usuario"><c:out
						value='${usuario.dataNascimento}' /></td>
			</table>
		</div>




		<div class="conquistas-usuario">
			<h3 class="titulo-principal">Conquistas</h3>
			<c:if test="${conquistas == null}">
				<img alt="" src="Imagem usuario não possui conquista">
				<p>
					Este usuário ainda não possui <b>conquistas.</b>
				</p>
			</c:if>
		</div>

		<div class="avaliacoes-usuario">
			<h3 class="titulo-principal">Avaliações Recentes</h3>
			<c:if test="${avaliacoes == null}">
				<p class="texto-aviso">
					Parece que você ainda não possui avaliações ... <br> <a
						href="pesquisa.jsp" name="tela-pesquisa">Encontre
						estabelecimentos</a> e avalie
				</p>
			</c:if>
			<c:if test="${avaliacoes != null}">
				<tbody>
					<c:forEach var="avaliacao" items="${estabelecimentos}">
						<div class="card-avaliacao">
							<tr>
								<td><c:out value="${estabelecimento.foto}" /></td>
								<td><c:out value="${estabelecimento.nome}" /></td>
								<td><c:out value="${estabelecimento.categoria}" /></td>
								<img src="" alt="estrela-nota"></img>
								<td><c:out value="${estabelecimento.nota}" /></td>
								<button id="favoritar">.</button>
							</tr>
						</div>
					</c:forEach>
				</tbody>
			</c:if>
		</div>
		
		<div class="comentarios-usuario">
			<h3 class="titulo-principal">Comentários</h3>
			<c:if test="${comentarios == null}">
				<p class="texto-aviso">
					Parece que você ainda não possui comentários ... <br> <a
						href="pesquisa.jsp" name="tela-pesquisa">Encontre
						estabelecimentos</a> e comente
				</p>
			</c:if>
			<c:if test="${comentarios != null}">
				<c:forEach var="comentario" items="${comentarios}">
					<div class="comentario">
						<img <c:out value="${usuario.foto}"/>>
						<h5>
							<c:out value="${usuario.nome-de-usuario}" />
						</h5>
						<p>comentou em</p>
						<a><c:out value="${estabelecimento.nome}" /></a>
						<p>
							<c:out value="${comentario.comentario}" />
						</p>

						<p id="data-comentario-usuario">
							<c:out value="${comentario.data}" />
						</p>
						<button>Resposta</button>
						<c:forEach var="resposta" items="${comentarios}">
							<img <c:out value="${usuario.foto}" />>
							<h5>
								<c:out value="${usuario.nome-de-usuario}" />
							</h5>
							<p>
								<c:out value="${comentario.comentario}" />
							</p>
						<div class="gostei-comentario">
							<p><c:out value="${comentario.quantidade-gostei}" />
							</p>
							<p><c:out value="${comentario.quantidade-nao-gostei}" />
							</p>
						</div>
						</c:forEach>
					</div>
				</c:forEach>
			</c:if>
		</div>

	</main>
</body>
</html>