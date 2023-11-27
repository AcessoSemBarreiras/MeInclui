<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Perfil Usuário</title>
<link rel="stylesheet" href="../../estilos/padrao.css">
<link rel="stylesheet" href="../../estilos/perfil-usuario.css">
</head>

<body>

	<header class="template-grid">
		<div class="cabecalho-geral">
				<div class="menu-logo">
					<a href="tela-inicial"><img  width="30" height="30" src="../../imagens/logo-meinclui.svg"></a>
				</div>
				<div class="menu-caminhos">
				<a href="encontrar-estabelecimentos" class="menu-pesquisa"><img  width="20" height="20" src="../../imagens/pesquisa.svg"></a>
				<a href="conquista.jsp" class="menu-conquista"><img  width="30" height="30" src="../../imagens/conquistas.svg"/></a>
				<a href="cadastro-estabelecimento" class="menu-estabelecimento"><img  width="25" height="25" src="../../imagens/mais.svg"/></a>
				<a href="ranking.jsp" class="menu-ranking"><img  width="27" height="27" src="../../imagens/ranque.svg"/></a>
				<c:if test="${usuario != null}">
					<a href="perfil-usuario"><img alt="foto do usuario" id="menu-foto" src="<c:out value='${usuario.fotoUsuario.urlFoto()}' />"></a>
					<a href="<%=request.getContextPath()%>/encerrar-sessao"><button class="botao-pequeno-cabecalho texto-pequeno" style="color: var(--branco);">Sair</button></a>
				</c:if>
				<c:if test="${usuario == null}">
					<a href="login-usuario" class="menu-login"> <button class="botao-pequeno-cabecalho texto-pequeno" style="color: var(--branco);"> Entrar</button></a> 
				</c:if>
			</div>
		</div>	
		</header>

	<div class="template-grid">
			<div class="campo-usuario card-usuario">
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
						<tr>
							<td><c:out value="${data}"></c:out></td>
						</tr>	
			</table>
		</div>




		<div class="campo-conquistas conquistas-usuario">
			<h3 class="texto-principal" id="conquista">Conquistas</h3>
			<c:if test="${conquistas != null}" class="conteudo-centro">
				<p class="texto-adicionais">Este usuário ainda não possui <b>conquistas.</b></p>
			</c:if>
		</div>




		<div class="campo-generico avaliacoes-usuario">
			<h3 class="texto-principal">Avaliações Recentes</h3>
			<c:if test="${fn:length(estabelecimentos) == 0}" class="conteudo-centro">
				<p class="texto-adicionais">
					Parece que você ainda não possui avaliações... <br> <a
						href="encontrar-estabelecimentos" style="color: var(--laranja)">Encontre estabelecimentos</a> e
					avalie
				</p>
			</c:if>
			<c:if test="${fn:length(estabelecimentos) != 0}">
				<tbody>
					<c:forEach var="estabelecimento" items="${estabelecimentos}">
						<div class="card-avaliacao">
							<table>
								<tr>
									<td><c:out value="${estabelecimento.fotoestabelecimento.urlFoto()}" /></td>
									<td><c:out value="${estabelecimento.nome}" /></td>
									<td><c:out value="${estabelecimento.categoria.nomeCategoria}"/></td>
								</tr>
							</table>
						</div>
					</c:forEach>
				</tbody>
			</c:if>
		</div>




		<div class="campo-generico comentarios-usuario">
			<h3 class="texto-principal">Comentários</h3>
						
			<c:if test="${fn:length(comentarios) == 0}" >
				<p class="texto-secundario conteudo-centro">
					Parece que você ainda não possui comentários ... <br> <a
						href="encontrar-estabelecimentos" style="color: var(--laranja)"> Encontre
						estabelecimentos</a> e comente
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

						<button class="texto-respostas">Resposta(1)</button>

						<hr>

					</div>
				</c:forEach>
			</c:if>
		</div>
	</div>
</body>
</html>