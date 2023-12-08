<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Perfil Usuário</title>
<style><%@include file="../../estilos/padrao.css"%></style>
<style><%@include file="../../estilos/perfis.css"%></style>
</head>
<body>
	<main>
		<%@ include file="../menu.jsp"%>
		<div id="perfil-usuario">
		
		<div class="inf-usuario">
			<img alt="foto do usuario" id="foto" src="<c:out value='${usuario.fotoUsuario.urlFoto()}'/>">
		
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
			<div class="titulo">
				<h3 class="texto-principal">Avaliações Recentes</h3>
			</div>
			<c:if test="${fn:length(estabelecimentosAval) == 0}">
				<div class="aviso-sem">
					<p class="texto-adicionais">
						Parece que você ainda não possui avaliações... <br> <a
							href="encontrar-estabelecimentos" style="color: var(--laranja)">Encontre
							estabelecimentos</a> e avalie
					</p>
				</div>
			</c:if>
			<c:if test="${fn:length(estabelecimentosAval) != 0}">
					<c:forEach var="es" items="${estabelecimentosAval}">
					<div class="card-estabelecimento">
						<div class="foto-estabelecimento">
							<img class="img-foto-estabelecimento" alt="foto-estabelecimento" src='<c:out value="${es.fotoEstabelecimento.urlFoto() }"/>'>
						</div>
						<div class="conteudo-estabelecimento">
						<div class="primeira-linha">
							<a class="texto-medio nome-estabelecimento conteudo-card" href="perfil-estabelecimento?id=<c:out value="${es.idEstabelecimento}" />"><c:out value="${es.nome}" /></a>
						</div>
						<div class="segunda-linha">
							<p class="texto-pequeno categoria-estabelecimento conteudo-card"><img alt="Bandeira" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAASCAYAAABrXO8xAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAACnSURBVHgB7ZOxDcJADEW/naMPG2QDTlmIAVJwbJBsgATUwARkBOiBFWAE6C9nfIgGBAogyjzJsr71v7tPsC5LEr8QkQxtEJ0hqMNhVhlO/FqFJVBrTn0R28uLC5OG8CUBPGD8SBfsgn8N0rIJpi+Qsc7plcM86S0xSr+bbqIIwERrVxv2TosxenjNeXHUlRKJa/bzFd4Re0u+1PYN9UkVD+ltPuXuvQKPxzFy6zpUpAAAAABJRU5ErkJggg=="><c:out value="${es.categoria.nomeCategoria}" /></p>
							
						</div>
						<div class="terceira-linha">
							<p class="texto-medio nota-estabelecimento conteudo-card"><img alt="Estrela" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAYAAADafVyIAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAGfSURBVHgBtVVLTgJBEH01iJJAIu5MwDhHgBMIJwBOAJxANoo7cSXowuEG3EA9gXgCOcIkQOJOTPyQgJQ1MwGD8+vR8BbTPdVV701XV/UQFMGNdBqJ1K1MCwD1qD2sq8RpUEUiWXbIbbkan2YaKmHqAkzH65FUUgkjFSc+yeQQoyfXwvRtj4zJJChWbQca1Tzt28kawkKhAuKSj3BomlYp4ma2IES6h8uhPFq+DBoaWPCry85kUmfUJ4f84EbIlaoiEpgModWlvucv2AQYE40MU6qATGwCGkznkHlW3IBIH4t5Za0P5KBbcuzn+A8kLWC+oKuxYb26Go2b+zoo/iAzHdHRB8/r1Hk2lwbfTuazrIgs7x4FMO6lLMu/zZ6NZldWFHIHR15G705OzMqICkLablYlAVAVfwFxeIrsQw5KD9NdwFrV/jEFCYBiBc9gwgBfnKfOsGKNnn0jacJOKhcigLSbnbt0OcrT9Xhgu1jjNJaXyum6XLcWu8ECn/Hez9fJyChSe+y6CK0rRsqyYa2v/K1dvn88QgXc1HVEgJ//N7o4gY1CzW8ZAAAAAElFTkSuQmCC"><c:out value="${es.pontoAcessibilidade}" /></p>
							
							<c:if test="${usuario.estabelecimentoFavoritos(es) == true}">
								<a class="favoritar-estabelecimento conteudo-card" href="favoritar-estabelecimento?id=<c:out value="${es.idEstabelecimento}"/>"><img height="15" width="15" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAbCAYAAABr/T8RAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAHeSURBVHgBxZZNTsJAFMf/b8AYE0xYmqAJR4ATCDeAExhPQFkY3AkrARdyA+oN5ATEEwg3aAIk7mRDIBE6vhnkUwodhPrb0NKZ+XU++t4jrCELlyn+yYFkAqA4JPogtPjehjt5o8qHgw1s7TccNKjW7y+3p3lHKxrF6XmdG2bgiXS4R5Eeey8L4UUcFK7zZWprvwmy9NRrrYi19CzS5LdMwB9FKndLU2moqWe4C7UCrkzP5FNx4eqZZ2rBBJI1HizjS7qwOxgNkmrZxfStDaV6DLLMpApufxrRLgGEzaV/I/cjxjWChBCVd7GE4Au/B+pwhJAQ+CeEPuZBE5KfQkeXoBm7bRbLBoKEJ6rCrsDwxOY7B4HBgYcRVHM4lCGPQJD2LM7rU03VzisfshKOiTpLo8F8gvPPiSrd4vHkvJXuOLucGmm9CefVIv/7gIPBUvmVXs/jtKmpvI/Z/OgGR5J6ig8j95YqvEPm6MTiPd8vuKhoOHGzXlL9Wlv7W3Euh8ZN40QykcnlMmcTW5OE/sYxzpoFGLrdJd0p1sOo5eK98iV3ZZ7KHRs+8JUWfck5BlC1V4NPCAbo+gzhd1VF/JKqAGSAUSGgZ84l6koO30Oqx8IeqJoJIZGD67ZNlneZbwto0UUuMKH0AAAAAElFTkSuQmCC"></a>
							</c:if>
							<c:if test="${usuario.estabelecimentoFavoritos(es) == false}">
								<a class="favoritar-estabelecimento conteudo-card" href="favoritar-estabelecimento?id=<c:out value="${es.idEstabelecimento}"/>"><img height="15" width="15" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAdCAYAAAC9pNwMAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAALNSURBVHgB1VZRchJBEO0e1qpYahWfVoEWnkA8gewJNCcAThD4UKI/gT+MH2xOIJyA3IDkBIk3wEoo/dyPWIYibNvTs7thYYFBwoevKkVmdt686Z6e7kaYAzWeFwCdMv9XAcCCTCJcAiH/TVr45dcQUkCNfAkQmReUkjw4B7rz5nmYIH/OH0AAHqwCIW9yVY+HtWwW9p50eKvKcg74QNTC45G3IEyNFx1AqoXTQ17YEyuRfMjAawiQv1EhXH6G7WtXRB8/HfDGxWgeFJzCFL6H49ALMa/JvFYsnLSUTrA9qqUe/GOuBgo74eG6fKiiiGqLEOvYvuqm8hp5j5UOZBBM9/H45ymaO80M5F4I+A6vm7ACdJir8NpvyVmsLhNdENeHHN+8UixaMsGAw3WiItEedfUBNxEVjJ2m8QzomHivmFiWD0FwApaQA2px7SEbUc3xhj7/9MxIvXXkjvRNIwfSBrDxziKJLk1YBSUlpgucIewaxK8lhBK/awSTLOwahEYD0VeSXWTAb27XQCrJbwA/lKQ0DYXvYNdAMhqK+orDPEpjJUkQOwId5o+iZ8tJ5FxJmEfvkrMSfXpZhgeGEYWmDPjZ6oKBMx85e4X3TODyczmDB8CydKziFbfOPgtGb7lPH3JF2BLivXvR3mwNiIXF5WPHlTvQb1vhYBtx4VLQNZuzQbe/E/GjZgfmvif34hm2XBeRfxHlg8eif25c9Hw/oZVKlIr1aGDqKHFtnrrLOo9ULjgXJiPquj5J5ao0siyMLAeUsmljeVxi14iKxtqN4tOvtjxR19eIaqhVwkIMyDX5nDdUTl/anS1FZW+wgARLBi9CRiJY5joYnrt7YxMPCiyAX0f8vqlqTsH1e++Z9F1iPXshFmXv2AahlcURkv3WTLOnETZxtnttJCzijXyTWUdz21RtW6AIVq5OSET9VoSA6puKbgVtuVj/v+Ev1n5qyLerzzAAAAAASUVORK5CYII="></a>
							</c:if>
							<c:if test="${usuario == null}">
								<a class="favoritar-estabelecimento conteudo-card" href="favoritar-estabelecimento?id=<c:out value="${es.idEstabelecimento}"/>"><img height="15" width="15" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAdCAYAAAC9pNwMAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAALNSURBVHgB1VZRchJBEO0e1qpYahWfVoEWnkA8gewJNCcAThD4UKI/gT+MH2xOIJyA3IDkBIk3wEoo/dyPWIYibNvTs7thYYFBwoevKkVmdt686Z6e7kaYAzWeFwCdMv9XAcCCTCJcAiH/TVr45dcQUkCNfAkQmReUkjw4B7rz5nmYIH/OH0AAHqwCIW9yVY+HtWwW9p50eKvKcg74QNTC45G3IEyNFx1AqoXTQ17YEyuRfMjAawiQv1EhXH6G7WtXRB8/HfDGxWgeFJzCFL6H49ALMa/JvFYsnLSUTrA9qqUe/GOuBgo74eG6fKiiiGqLEOvYvuqm8hp5j5UOZBBM9/H45ymaO80M5F4I+A6vm7ACdJir8NpvyVmsLhNdENeHHN+8UixaMsGAw3WiItEedfUBNxEVjJ2m8QzomHivmFiWD0FwApaQA2px7SEbUc3xhj7/9MxIvXXkjvRNIwfSBrDxziKJLk1YBSUlpgucIewaxK8lhBK/awSTLOwahEYD0VeSXWTAb27XQCrJbwA/lKQ0DYXvYNdAMhqK+orDPEpjJUkQOwId5o+iZ8tJ5FxJmEfvkrMSfXpZhgeGEYWmDPjZ6oKBMx85e4X3TODyczmDB8CydKziFbfOPgtGb7lPH3JF2BLivXvR3mwNiIXF5WPHlTvQb1vhYBtx4VLQNZuzQbe/E/GjZgfmvif34hm2XBeRfxHlg8eif25c9Hw/oZVKlIr1aGDqKHFtnrrLOo9ULjgXJiPquj5J5ao0siyMLAeUsmljeVxi14iKxtqN4tOvtjxR19eIaqhVwkIMyDX5nDdUTl/anS1FZW+wgARLBi9CRiJY5joYnrt7YxMPCiyAX0f8vqlqTsH1e++Z9F1iPXshFmXv2AahlcURkv3WTLOnETZxtnttJCzijXyTWUdz21RtW6AIVq5OSET9VoSA6puKbgVtuVj/v+Ev1n5qyLerzzAAAAAASUVORK5CYII="></a>
							</c:if>
						
						</div>					
						</div>
					</div>
			</c:forEach>
			</c:if>
		</div>
		
		<div class="fav-usuario">
			<div class="titulo">
				<h3 class="texto-principal">Estabelecimentos Favoritos</h3>
			</div>
			<c:if test="${fn:length(estabelecimentoFav) == 0}">
				<div class="aviso-sem">
					<p class="texto-adicionais">
						Parece que você ainda não favoritou nenhum estabelecimento... <br> <a
						href="encontrar-estabelecimentos" style="color: var(--laranja)">Encontre
						estabelecimentos</a> e favorite
					</p>
				</div>
			</c:if>
			<c:if test="${fn:length(estabelecimentoFav) != 0}">
					<c:forEach var="es" items="${estabelecimentoFav}">
					<div class="card-estabelecimento">
						<div class="foto-estabelecimento">
							<img class="img-foto-estabelecimento" alt="foto-estabelecimento" src='<c:out value="${es.fotoEstabelecimento.urlFoto() }"/>'>
						</div>
						<div class="conteudo-estabelecimento">
						<div class="primeira-linha">
							<a class="texto-medio nome-estabelecimento conteudo-card" href="perfil-estabelecimento?id=<c:out value="${es.idEstabelecimento}" />"><c:out value="${es.nome}" /></a>
						</div>
						<div class="segunda-linha">
							<p class="texto-pequeno categoria-estabelecimento conteudo-card"><img alt="Bandeira" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAASCAYAAABrXO8xAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAACnSURBVHgB7ZOxDcJADEW/naMPG2QDTlmIAVJwbJBsgATUwARkBOiBFWAE6C9nfIgGBAogyjzJsr71v7tPsC5LEr8QkQxtEJ0hqMNhVhlO/FqFJVBrTn0R28uLC5OG8CUBPGD8SBfsgn8N0rIJpi+Qsc7plcM86S0xSr+bbqIIwERrVxv2TosxenjNeXHUlRKJa/bzFd4Re0u+1PYN9UkVD+ltPuXuvQKPxzFy6zpUpAAAAABJRU5ErkJggg=="><c:out value="${es.categoria.nomeCategoria}" /></p>
							
						</div>
						<div class="terceira-linha">
							<p class="texto-medio nota-estabelecimento conteudo-card"><img alt="Estrela" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAYAAADafVyIAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAGfSURBVHgBtVVLTgJBEH01iJJAIu5MwDhHgBMIJwBOAJxANoo7cSXowuEG3EA9gXgCOcIkQOJOTPyQgJQ1MwGD8+vR8BbTPdVV701XV/UQFMGNdBqJ1K1MCwD1qD2sq8RpUEUiWXbIbbkan2YaKmHqAkzH65FUUgkjFSc+yeQQoyfXwvRtj4zJJChWbQca1Tzt28kawkKhAuKSj3BomlYp4ma2IES6h8uhPFq+DBoaWPCry85kUmfUJ4f84EbIlaoiEpgModWlvucv2AQYE40MU6qATGwCGkznkHlW3IBIH4t5Za0P5KBbcuzn+A8kLWC+oKuxYb26Go2b+zoo/iAzHdHRB8/r1Hk2lwbfTuazrIgs7x4FMO6lLMu/zZ6NZldWFHIHR15G705OzMqICkLablYlAVAVfwFxeIrsQw5KD9NdwFrV/jEFCYBiBc9gwgBfnKfOsGKNnn0jacJOKhcigLSbnbt0OcrT9Xhgu1jjNJaXyum6XLcWu8ECn/Hez9fJyChSe+y6CK0rRsqyYa2v/K1dvn88QgXc1HVEgJ//N7o4gY1CzW8ZAAAAAElFTkSuQmCC"><c:out value="${es.pontoAcessibilidade}" /></p>
							<a class="favoritar-estabelecimento conteudo-card" href="favoritar-estabelecimento?id=<c:out value="${es.idEstabelecimento}"/>"><img height="15" width="15" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAbCAYAAABr/T8RAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAHeSURBVHgBxZZNTsJAFMf/b8AYE0xYmqAJR4ATCDeAExhPQFkY3AkrARdyA+oN5ATEEwg3aAIk7mRDIBE6vhnkUwodhPrb0NKZ+XU++t4jrCELlyn+yYFkAqA4JPogtPjehjt5o8qHgw1s7TccNKjW7y+3p3lHKxrF6XmdG2bgiXS4R5Eeey8L4UUcFK7zZWprvwmy9NRrrYi19CzS5LdMwB9FKndLU2moqWe4C7UCrkzP5FNx4eqZZ2rBBJI1HizjS7qwOxgNkmrZxfStDaV6DLLMpApufxrRLgGEzaV/I/cjxjWChBCVd7GE4Au/B+pwhJAQ+CeEPuZBE5KfQkeXoBm7bRbLBoKEJ6rCrsDwxOY7B4HBgYcRVHM4lCGPQJD2LM7rU03VzisfshKOiTpLo8F8gvPPiSrd4vHkvJXuOLucGmm9CefVIv/7gIPBUvmVXs/jtKmpvI/Z/OgGR5J6ig8j95YqvEPm6MTiPd8vuKhoOHGzXlL9Wlv7W3Euh8ZN40QykcnlMmcTW5OE/sYxzpoFGLrdJd0p1sOo5eK98iV3ZZ7KHRs+8JUWfck5BlC1V4NPCAbo+gzhd1VF/JKqAGSAUSGgZ84l6koO30Oqx8IeqJoJIZGD67ZNlneZbwto0UUuMKH0AAAAAElFTkSuQmCC"></a>

						</div>					
						</div>
					</div>
			</c:forEach>
			</c:if>
		</div>
		
		<div class="cm-usuario">
			<div class="titulo">
				<h3 class="texto-principal">Comentários</h3>
			</div>
			<c:if test="${fn:length(comentarios) == 0}">
			<div class="aviso-sem">
				<p class="texto-adicionais">
					Parece que você ainda não possui comentários ... <br> <a
						href="encontrar-estabelecimentos" style="color: var(--laranja)">
						Encontre estabelecimentos</a> e comente
				</p>
			</div>
			</c:if>
			<c:if test="${fn:length(comentarios) != 0}">
				<c:forEach var="cm" items="${comentarios}">
				
					<div class="caixa-comentario">
						<div class="cabecalho-comentario">
						<img alt="foto do usuario" id="cm-foto" src="<c:out value='${usuario.fotoUsuario.urlFoto()}' />">
						<p class="texto-grande titulo-comentario"><c:out value="${usuario.nome}" /><p>
						<p class="texto-pequeno titulo-comentario"> comentou em <a href="perfil-estabelecimento?id=<c:out value="${cm.estabelecimento.idEstabelecimento }"/>"><c:out value="${cm.estabelecimento.nome }"/></a></p>
						<fmt:parseDate value="${cm.data}" type="date" pattern="yyyy-MM-dd" var="parsedDate" />
						<fmt:formatDate	value="${parsedDate}" type="date" pattern="dd/MM/yyyy" var="data" />
						<p class="texto-pequeno titulo-comentario"><c:out value="${data}"/></p>
						</div>
						<p class="texto-pequeno texto-comentario"><c:out value="${cm.comentario}" /></p>
						<div class="avaliar-comentario">
								<a href="adicionar-quantidade-gostei?id=<c:out value='${cm.idComentario}'/>"><img alt="Botao like" height="20" width="20" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjEiIGhlaWdodD0iMjEiIHZpZXdCb3g9IjAgMCAyMSAyMSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4LjkgNi42MzE1OEgxMy4wMDc0TDE0LjE4NjUgMi45MTAxNkMxNC4zOTg2IDIuMjM4MTYgMTQuMjkxNSAxLjQ5MzIxIDEzLjg5NzggMC45MTg0NzRDMTMuNTA0IDAuMzQzNzM3IDEyLjg2NTcgMCAxMi4xOTI2IDBIMTAuNUMxMC4xODgxIDAgOS44OTMxIDAuMTQ1ODk1IDkuNjkyNTUgMC4zOTc4OTVMNC43NTc1NSA2LjYzMTU4SDIuMUMwLjk0MTg1IDYuNjMxNTggMCA3LjYyMyAwIDguODQyMVYxOC43ODk1QzAgMjAuMDA4NiAwLjk0MTg1IDIxIDIuMSAyMUg1LjI1SDE2LjA3MjNDMTYuOTQyOCAyMSAxNy43MzI0IDIwLjQyNDIgMTguMDM5IDE5LjU2NTRMMjAuOTMzOCAxMS40NDA2QzIwLjk3NzkgMTEuMzE2OCAyMSAxMS4xODUzIDIxIDExLjA1MjZWOC44NDIxQzIxIDcuNjIzIDIwLjA1ODEgNi42MzE1OCAxOC45IDYuNjMxNThaTTIuMSA4Ljg0MjFINC4yVjE4Ljc4OTVIMi4xVjguODQyMVpNMTguOSAxMC44NTI2TDE2LjA3MjMgMTguNzg5NUg2LjNWOC4xMzY5NUwxMC45OTE0IDIuMjEwNTNIMTIuMTk0N0wxMC41NTQ2IDcuMzg2NDdDMTAuNDQ2NCA3LjcyMzU4IDEwLjUwMSA4LjA5Mzg0IDEwLjY5ODUgOC4zODIzMUMxMC44OTU4IDguNjcxODkgMTEuMjEyOSA4Ljg0MjEgMTEuNTUgOC44NDIxSDE4LjlWMTAuODUyNloiIGZpbGw9IiMyNTEyMTIiLz4KPC9zdmc+Cg=="></a>
								<c:out value="${cm.quantidadeGostei}" />
								
								<a href="adicionar-quantidade-nao-gostei?id=<c:out value='${cm.idComentario}'/>"><img alt="Botao Deslike" height="20" width="20" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjIiIGhlaWdodD0iMjEiIHZpZXdCb3g9IjAgMCAyMiAyMSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIuODQzMTYgMTQuMzY4NEw4LjczNTc3IDE0LjM2ODRMNy41NTY2MSAxOC4wODk4QzcuMzQ0NTEgMTguNzYxOCA3LjQ1MTYxIDE5LjUwNjggNy44NDUzNiAyMC4wODE1QzguMjM5MTEgMjAuNjU2MyA4Ljg3NzUxIDIxIDkuNTUwNTYgMjFMMTEuMjQzMiAyMUMxMS41NTUgMjEgMTEuODUwMSAyMC44NTQxIDEyLjA1MDYgMjAuNjAyMUwxNi45ODU2IDE0LjM2ODRIMTkuNjQzMkMyMC44MDEzIDE0LjM2ODQgMjEuNzQzMiAxMy4zNzcgMjEuNzQzMiAxMi4xNTc5VjIuMjEwNTNDMjEuNzQzMiAwLjk5MTQyMyAyMC44MDEzIDAgMTkuNjQzMiAwSDE2LjQ5MzJMNS42NzA4MiAwQzQuODAwMzcgMCA0LjAxMDc3IDAuNTc1ODQ0IDMuNzA0MTYgMS40MzQ2M0wwLjgwOTMxNSA5LjU1OTQyQzAuNzY1MjE1IDkuNjgzMjEgMC43NDMxNjQgOS44MTQ3NCAwLjc0MzE2NCA5Ljk0NzM3VjEyLjE1NzlDMC43NDMxNjQgMTMuMzc3IDEuNjg1MDEgMTQuMzY4NCAyLjg0MzE2IDE0LjM2ODRaTTE5LjY0MzIgMTIuMTU3OUgxNy41NDMyVjIuMjEwNTNIMTkuNjQzMlYxMi4xNTc5Wk0yLjg0MzE2IDEwLjE0NzRMNS42NzA4MiAyLjIxMDUzTDE1LjQ0MzIgMi4yMTA1M0wxNS40NDMyIDEyLjg2MzFMMTAuNzUxOCAxOC43ODk1TDkuNTQ4NDYgMTguNzg5NUwxMS4xODg2IDEzLjYxMzVDMTEuMjk2NyAxMy4yNzY0IDExLjI0MjEgMTIuOTA2MiAxMS4wNDQ3IDEyLjYxNzdDMTAuODQ3MyAxMi4zMjgxIDEwLjUzMDIgMTIuMTU3OSAxMC4xOTMyIDEyLjE1NzlMMi44NDMxNiAxMi4xNTc5VjEwLjE0NzRaIiBmaWxsPSIjMjUxMjEyIi8+Cjwvc3ZnPgo="></a>
								<c:out value="${cm.quantidadeNaoGostei}" />
							</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
		</div>
	</main>
	
	<%@ include file="../rodape.jsp"%>
</body>
</html>