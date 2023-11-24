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
<style><%@include file="../../estilos/perfil-usuario.css"%></style>
</head>
<body>
	<main>
		<%@ include file="../menu.jsp"%>

		<div class="informacoes-usuario">
			<img alt="foto do usuario" class="foto-usuario"
				src="<c:out value='${usuario.fotoUsuario.urlFoto()}' />">
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
				<img alt="Imagem usuario não possui conquista"
					src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAxIiBoZWlnaHQ9IjEwMSIgdmlld0JveD0iMCAwIDEwMSAxMDEiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjxwYXRoIGQ9Ik00MS4zNDc1IDM4LjM3MzZDNDEuMzQ3NSA0MC45MjU4IDM5LjYzODUgNDIuMjE1OSAzOC40MjU1IDQyLjIxNTlDMzcuMjEyNiA0Mi4yMTU5IDM1LjUwMzUgNDAuOTI1OCAzNS41MDM1IDM4LjM3MzZDMzUuNTAzNSAzNS44MjE1IDM3LjIxMjYgMzQuNTMxNCAzOC40MjU1IDM0LjUzMTRDMzkuNjM4NSAzNC41MzE0IDQxLjM0NzUgMzUuODIxNSA0MS4zNDc1IDM4LjM3MzZaIiBzdHJva2U9IiMwMzMyNkMiIHN0cm9rZS13aWR0aD0iNi4yNDUzNiIvPgo8cGF0aCBkPSJNNjUuNTI2MyAzOC4zNzM2QzY1LjUyNjMgNDAuOTI1OCA2My44MTczIDQyLjIxNTkgNjIuNjA0MyA0Mi4yMTU5QzYxLjM5MTIgNDIuMjE1OSA1OS42ODIzIDQwLjkyNTggNTkuNjgyMyAzOC4zNzM2QzU5LjY4MjMgMzUuODIxNSA2MS4zOTEyIDM0LjUzMTQgNjIuNjA0MyAzNC41MzE0QzYzLjgxNzMgMzQuNTMxNCA2NS41MjYzIDM1LjgyMTUgNjUuNTI2MyAzOC4zNzM2WiIgc3Ryb2tlPSIjMDMzMjZDIiBzdHJva2Utd2lkdGg9IjYuMjQ1MzYiLz4KPHBhdGggZD0iTTM1LjYyODYgNjIuNDk1NEMzMy45OTE4IDYzLjc0MTcgMzIuNzcwOCA2NS4wMDE1IDMxLjk0MjMgNjUuOTc2QzMxLjUyNzkgNjYuNDYyOCAzMS4yMTA2IDY2Ljg4MDIgMzAuOTg3NiA2Ny4xOTAzTTM1LjYyODYgNjIuNDk1NEw2Ni43OTIzIDcxLjgxMjFMNjYuNzg4MSA3MS44NDY0TDY2LjY2NTggNzIuODM3QzY2LjQ4ODEgNzIuNjY1IDY2LjMyMzggNzIuNDYyIDY2LjE3NzcgNzIuMjI4N0w2Ni4xNjE4IDcyLjIwNTNNMzUuNjI4NiA2Mi40OTU0QzM4LjkxNzcgNTkuOTg5MyA0My44NDA3IDU3LjU3MDYgNTAuNTI1NyA1Ny41NzA2QzU3LjIxMDkgNTcuNTcwNiA2Mi4xMjkxIDU5Ljk4OTMgNjUuNDE0MiA2Mi40OTY4QzY2LjI5NTEgNjMuMTY4OCA2Ny4wNTUyIDYzLjg0NDcgNjcuNjk4MSA2NC40Nzc2TDM1LjYyODYgNjIuNDk1NFpNMzAuOTg3NiA2Ny4xOTAzQzMwLjg3NjEgNjcuMzQ1OCAzMC43ODc5IDY3LjQ3NDkgMzAuNzIyOSA2Ny41NzIyTTMwLjk4NzYgNjcuMTkwM0wzMS4xMTA3IDY3LjI3ODhMMzAuNzcwMyA2Ny42MDNMMzAuNzIyOSA2Ny41NzIyTTMwLjk4NzYgNjcuMTkwM0wzMS4xMTA4IDY3LjI3ODdMMzIuMjI1NyA2Ni4yMTcyTDMyLjIyNTkgNjYuMjE3TDMyLjg1NzcgNjUuNjE1NEwzNC43MDc3IDY3LjU1ODNNMzAuNzIyOSA2Ny41NzIyTDMwLjY0MjUgNjcuNjk1N00zMC43MjI5IDY3LjU3MjJMMzAuNzY5NyA2Ny42MDM1TDMwLjY2MDcgNjcuNzA3NEwzMC42NDI1IDY3LjY5NTdNMzAuNjQyNSA2Ny42OTU3TDMwLjYxNTEgNjcuNzM4Mk0zMC42NDI1IDY3LjY5NTdMMzAuNjYwNiA2Ny43MDc1TDMwLjYyMzEgNjcuNzQzMkwzMC42MTUxIDY3LjczODJNMzAuNjE1MSA2Ny43MzgyTDMwLjYwNDYgNjcuNzU1M0wzMC42MDAyIDY3Ljc2MjRNMzAuNjE1MSA2Ny43MzgyTDMwLjYyMyA2Ny43NDMzTDMwLjYwODEgNjcuNzU3NEwzMC42MDgxIDY3Ljc1NzVMMzAuNjAxOCA2Ny43NjM0TDMwLjYwMDIgNjcuNzYyNE0zMC42MDAyIDY3Ljc2MjRMMzAuNTk2MiA2Ny43Njg4TDMwLjYwMTggNjcuNzYzNEwzMC42MDAyIDY3Ljc2MjRaTTM0LjcwNzcgNjcuNTU4M0MzNC43MDY1IDY3LjU1OTcgMzQuNzA1MyA2Ny41NjEgMzQuNzA0MSA2Ny41NjIzQzM0LjcyMTQgNjcuNTgwNCAzNC43Mzg4IDY3LjU5ODcgMzQuNzU2MyA2Ny42MTdDMzQuNzU3NiA2Ny42MTU4IDM0Ljc1ODkgNjcuNjE0NiAzNC43NjAyIDY3LjYxMzRNMzQuNzA3NyA2Ny41NTgzQzM1LjM5NzIgNjYuNzk2NCAzNi4zMzE3IDY1Ljg4NDkgMzcuNTIwMyA2NC45Nzk5TDM3LjUyMTEgNjQuOTc5M0M0MC4zNzMyIDYyLjgwNjIgNDQuNjQ3NiA2MC42OTMyIDUwLjUyNTcgNjAuNjkzMkM1Ni40MDM3IDYwLjY5MzIgNjAuNjcyNSA2Mi44MDU5IDYzLjUxOTYgNjQuOTc5MUw2My41MjAzIDY0Ljk3OTZDNjQuOTQ1NSA2Ni4wNjY4IDY2LjAwNDEgNjcuMTYzMyA2Ni43MTIzIDY3Ljk5ODRMNjYuNzEyOSA2Ny45OTkxQzY2Ljc4NiA2OC4wODUzIDY2Ljg1NTMgNjguMTY4NiA2Ni45MjA5IDY4LjI0ODdDNjYuMjkwOCA2Ny41OTg4IDY1LjQ5NzEgNjYuODY2NCA2NC41MzI2IDY2LjEzMDZNMzQuNzA3NyA2Ny41NTgzTDM0Ljc2MDIgNjcuNjEzNE0zNC43NjAyIDY3LjYxMzRMMzYuMTUzNiA2OS4wNzY4TDM0LjcwNzggNzAuNDU5MUwzNS42MTgyIDcxLjIzMzdNMzQuNzYwMiA2Ny42MTM0QzM1LjI2NDIgNjcuMTM3NyAzNS44NDYxIDY2LjYzNSAzNi41MDgxIDY2LjEzMDdMMzYuNTA4MiA2Ni4xMzA2QzM5LjQ3ODggNjMuODY4IDQ0LjEwMjMgNjEuNTQ1MiA1MC41MjU3IDYxLjU0NTJDNTYuOTQ4NCA2MS41NDUyIDYxLjU2NjggNjMuODY3IDY0LjUzMjYgNjYuMTMwNk0zNS42MTgyIDcxLjIzMzdMMzQuNzA3NiA3MC40NTkyTDMzLjg5MjcgNzEuMjM4NEwzNC45OTAyIDcyLjAyNzVMMzMuODkyNSA3MS4yMzg2TDMzLjY5NjMgNzEuNDI2MkwzMy42ODQgNzEuNDM3OUwzMy42NjI2IDcxLjQ1ODNMMzMuNjQ0MyA3MS40NzU4TDMxLjczNzUgNzMuMjk4OUMzMi44MTQ2IDczLjg0MjYgMzQuMDgyIDczLjQ1NTIgMzQuODQ5OCA3Mi4yMzM3TDM0Ljg2NTYgNzIuMjA5Nk0zNS42MTgyIDcxLjIzMzdDMzUuMzI1MyA3MS41Nzc5IDM1LjExNzIgNzEuODU0IDM0Ljk5MTcgNzIuMDI4NkMzNC45Mjg5IDcyLjExNTkgMzQuODg3IDcyLjE3NzYgMzQuODY1NiA3Mi4yMDk2TTM1LjYxODIgNzEuMjMzN0MzNi4yMDQzIDcwLjU0NDUgMzcuMTI1OCA2OS41ODU3IDM4LjQwMDQgNjguNjE0OEM0MC45MzM5IDY2LjY4NSA0NC45MDkgNjQuNjY3OSA1MC41MjU3IDY0LjY2NzlDNTYuMTQyMiA2NC42Njc5IDYwLjExMTQgNjYuNjg0MyA2Mi42Mzg2IDY4LjYxMzNNMzQuODY1NiA3Mi4yMDk2TDM0Ljg2NTUgNzIuMjA5NUwzNC44NjU2IDcyLjIwOTZaTTYyLjYzODYgNjguNjEzM0M2My45MTA0IDY5LjU4MzUgNjQuODI4NyA3MC41NDE3IDY1LjQxMjYgNzEuMjMwMUM2NS43MDQzIDcxLjU3NDQgNjUuOTExNyA3MS44NDk3IDY2LjAzNjUgNzIuMDI0M0M2Ni4wOTg5IDcyLjExMTYgNjYuMTQwNSA3Mi4xNzM0IDY2LjE2MTggNzIuMjA1M002Mi42Mzg2IDY4LjYxMzNMNjQuNTMyNiA2Ni4xMzA2TTYyLjYzODYgNjguNjEzM0w2NC41MzMzIDY2LjEzMTFDNjQuNTMzIDY2LjEzMSA2NC41MzI4IDY2LjEzMDggNjQuNTMyNiA2Ni4xMzA2TTY2LjE2MTggNzIuMjA1M0w2Ni43OTY5IDcxLjc3NDhMNjYuNzk2MSA3MS43ODE0TDY2LjE2MTggNzIuMjA1M1pNNjcuODg2OSA2OS4zMjA2QzY3Ljg4ODcgNjkuMzIyOCA2Ny44OTA1IDY5LjMyNSA2Ny44OTIzIDY5LjMyNzJMNjcuODg2OSA2OS4zMjA2Wk02Ny44ODY5IDY5LjMyMDZMNjcuOTY5IDY5LjI2NzVDNjcuOTY4OCA2OS4yNjU4IDY3Ljk2ODYgNjkuMjY0IDY3Ljk2ODQgNjkuMjYyM0w2Ny44ODY5IDY5LjMyMDZaTTY3LjcwMDggNjkuMjkxMkw2Ny43NjM5IDY5LjM4ODhMNjcuNzY5MSA2OS4zOTY4TDY3Ljc4MjkgNjkuNDE4M0M2Ny44NTgyIDY5LjU0MzYgNjcuOTM2NSA2OS43OTY1IDY3LjkwOTIgNzAuMTE2M0M2Ny44OTY0IDcwLjI2NTcgNjcuODYzIDcwLjM4OTggNjcuODI1NyA3MC40NzkyQzY3Ljc5MDggNzAuNTYyOSA2Ny43NjE3IDcwLjU5NTIgNjcuNzYxNyA3MC41OTUzQzY3Ljc2MTcgNzAuNTk1MyA2Ny43NjE5IDcwLjU5NTEgNjcuNzYyMSA3MC41OTQ4TDY3Ljg3OTEgNzAuNzA3NUw2Ny43MDA4IDY5LjI5MTJaTTY3Ljg4MSA2OS4zMTM2QzY3Ljg1OTYgNjkuMjg4MSA2Ny44MzggNjkuMjYyMiA2Ny44MTU5IDY5LjIzNjFMNjcuODgxIDY5LjMxMzZaTTMxLjE5MzUgNzIuOTI3OEMzMS4xMzMyIDcyLjg3NDYgMzEuMDczOSA3Mi44MTc4IDMxLjAxNiA3Mi43NTc1QzMwLjk1NjIgNzIuNjk1MiAzMC44OTg5IDcyLjYzMDMgMzAuODQ0MiA3Mi41NjNDMzAuOTAzIDcyLjYyNDQgMzAuOTYyOCA3Mi42ODY5IDMxLjAyMzUgNzIuNzUwM0MzMS4wNzk0IDcyLjgwODYgMzEuMTM2IDcyLjg2NzggMzEuMTkzNSA3Mi45Mjc4WiIgc3Ryb2tlPSIjMDMzMjZDIiBzdHJva2Utd2lkdGg9IjYuMjQ1MzYiLz4KPHBhdGggZD0iTTMuMjY1MjYgNTAuMzEzM0MzLjI2NTI2IDM0LjM4MDkgMTEuMzcyIDIwLjI5MjEgMjMuNzU1MiAxMS44Nzg2QzExLjQxNTggMjAuMjg3IDMuMzE2NDQgMzQuMzUyOSAzLjMxNjQ0IDUwLjMxMzNDMy4zMTY0NCA2Ni4yNzg0IDExLjQyMDQgODAuMzQ3NyAyMy43NjU3IDg4Ljc1NTNDMTEuMzc2NSA4MC4zNDI2IDMuMjY1MjYgNjYuMjUwNCAzLjI2NTI2IDUwLjMxMzNaTTk3LjcxMzQgNTAuMzEzM0M5Ny43MTM0IDM0LjM0ODcgODkuNjA5OSAyMC4yNzk3IDc3LjI2NSAxMS44NzJDODkuNjUzNyAyMC4yODQ4IDk3Ljc2NDYgMzQuMzc2NyA5Ny43NjQ2IDUwLjMxMzNDOTcuNzY0NiA2Ni4yNTQgODkuNjQ5NyA4MC4zNDg5IDc3LjI1NTggODguNzYwOUM4OS42MDU5IDgwLjM1NCA5Ny43MTM0IDY2LjI4MTkgOTcuNzEzNCA1MC4zMTMzWiIgc3Ryb2tlPSIjMDMzMjZDIiBzdHJva2Utd2lkdGg9IjYuMjQ1MzYiLz4KPC9zdmc+Cg==">
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
						href="encontrar-estabelecimentos" style="color: var(--laranja)">Encontre
						estabelecimentos</a> e avalie
				</p>
			</c:if>
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




		<div class="comentarios-usuario">
			<h3 class="texto-principal">Comentários</h3>

			<c:if test="${fn:length(comentarios) == 0}">
				<p class="texto-secundario">
					Parece que você ainda não possui comentários ... <br> <a
						href="encontrar-estabelecimentos" style="color: var(--laranja)">
						Encontre estabelecimentos</a> e comente
				</p>
			</c:if>

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
	</main>
</body>
</html>