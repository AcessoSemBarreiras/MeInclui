<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
<%@ include file="../estilos/padrao.css"%>
<%@ include file="../estilos/pesquisa.css"%>
</style>
<script><%@ include file="../js/pesquisa.js"%></script>
<title>Pesquisa</title>
</head>

<body>

	<%@ include file="menu.jsp"%>
	<div class="temp-grid">
	<div class="filtro">
		<form id="form" action="filtrar-estabelecimentos" method="post">
			<div class="barra-pesquisa">
				<div id="lupa-pesquisa">
					<img id="img-lupa-pesquisa" alt="lupa-pesquisa" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTAiIGhlaWdodD0iNTAiIHZpZXdCb3g9IjAgMCA1MCA1MCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQ5LjMyIDQzLjIyODJMMzkuNTgzIDMzLjQ5MjhDMzkuMTQzNSAzMy4wNTM0IDM4LjU0NzcgMzIuODA5MyAzNy45MjI3IDMyLjgwOTNIMzYuMzMwOEMzOS4wMjYzIDI5LjM2MjQgNDAuNjI4IDI1LjAyNjggNDAuNjI4IDIwLjMxMDVDNDAuNjI4IDkuMDkwOTEgMzEuNTM1NSAwIDIwLjMxNCAwQzkuMDkyNDYgMCAwIDkuMDkwOTEgMCAyMC4zMTA1QzAgMzEuNTMwMSA5LjA5MjQ2IDQwLjYyMSAyMC4zMTQgNDAuNjIxQzI1LjAzMTEgNDAuNjIxIDI5LjM2NzQgMzkuMDE5NiAzMi44MTQ5IDM2LjMyNDZWMzcuOTE2MkMzMi44MTQ5IDM4LjU0MTIgMzMuMDU5MSAzOS4xMzY4IDMzLjQ5ODUgMzkuNTc2Mkw0My4yMzU2IDQ5LjMxMTZDNDQuMTUzNiA1MC4yMjk1IDQ1LjYzODEgNTAuMjI5NSA0Ni41NDY0IDQ5LjMxMTZMNDkuMzEwMiA0Ni41NDgyQzUwLjIyODMgNDUuNjMwMyA1MC4yMjgzIDQ0LjE0NjEgNDkuMzIgNDMuMjI4MlpNMjAuMzE0IDMyLjgwOTNDMTMuNDA5MiAzMi44MDkzIDcuODEzMDcgMjcuMjIzOSA3LjgxMzA3IDIwLjMxMDVDNy44MTMwNyAxMy40MDY5IDEzLjM5OTQgNy44MTE3NCAyMC4zMTQgNy44MTE3NEMyNy4yMTg4IDcuODExNzQgMzIuODE0OSAxMy4zOTcxIDMyLjgxNDkgMjAuMzEwNUMzMi44MTQ5IDI3LjIxNDEgMjcuMjI4NiAzMi44MDkzIDIwLjMxNCAzMi44MDkzWiIgZmlsbD0id2hpdGUiLz4KPC9zdmc+Cg==">
				</div>
				<input class="texto-grande" id="campo-texto" type="text" name="nome">
				<div id="filtro-pesquisa" onclick="filtrar()">
					<img id="img-filtro-pesquisa" alt="filtro" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAFZSURBVHgB7dnPTcMwFMfx95z2zgh0AyhigIzACFyhEiu0G3AIXQfuiJAN6Ai5gx38E1StqrRx/JzGB39P/ZO0Hz3VUuqwulk8cUNLIrqguKobalaczR+/iPiS4qxWDcWbnWCtsqy5s49riiw7uNqYaa6+39eVykxOESH/cNZUPW94++L09uHKaPVKIy+WHW5d4Tnvvzk28hCH+PCgsZBtOMRtB58beQyH+NhJ50KewiE+dfLQyC4c4q4PGQrpgkOdQBQa6YpDTkAUCtkHh5yBSIrsi0O9gMgX6YNDvYGoL9IXh7yA6B/56XKsNubaB4e8gSibL5wuJ3VZeH+PoshLQGkJKC0BpSWgtASUloDSElCaDMj0RgMnAmo9uR8aKZug3b/TH0VuL5dXNFBBfoM/ZbHUZjKzW7YbCly4RWKnacqXWcs0RTu3wVcxpsmKckwTfzeVvZVAgn4BcznR0Vm7MHQAAAAASUVORK5CYII=">
				</div>
			</div>

			<div id="filtros">
				
				<div class="card-filtros" id="filtros-categoria">
					<p class="texto-grande">Categoria</p>
					<select class="texto-grande filtrar-categoria" name="categoria">
						<option value="" selected>Categoria</option>
						<option value="Doceria">Doceria</option>
						<option value="Saúde">Saúde</option>
						<option value="Restaurante">Restaurante</option>
						<option value="Bar">Bar</option>
						<option value="Estabelecimento Comercial">Estabelecimento Comercial</option>
					</select> 
				</div>
				<div class="card-filtros">
					<p class="texto-grande">Estrelas</p>
					<input class="texto-grande" type="text" id="media=" name="media" placeholder="Digite a nota">
				</div>
				<div class="card-filtros">
					<p class="texto-grande">Localização</p>
					<hr>
					<select class="texto-grande filtrar-estado" name="nome-estado">
						<option value="" selected>Estado</option>
						<option value="AC">Acre</option>
						<option value="AL">Alagoas</option>
						<option value="AP">Amapá</option>
						<option value="AM">Amazonas</option>
						<option value="BA">Bahia</option>
						<option value="CE">Ceará</option>
						<option value="DF">Distrito Federal</option>
						<option value="ES">Espírito Santo</option>
						<option value="GO">Goiás</option>
						<option value="MA">Maranhão</option>
						<option value="MT">Mato Grosso</option>
						<option value="MS">Mato Grosso do Sul</option>
						<option value="MG">Minas Gerais</option>
						<option value="PA">Pará</option>
						<option value="PB">Paraíba</option>
						<option value="PR">Paraná</option>
						<option value="PE">Pernambuco</option>
						<option value="PI">Piauí</option>
						<option value="RJ">Rio de Janeiro</option>
						<option value="RN">Rio Grande do Norte</option>
						<option value="RS">Rio Grande do Sul</option>
						<option value="RO">Rondônia</option>
						<option value="RR">Roraima</option>
						<option value="SC">Santa Catarina</option>
						<option value="SP">São Paulo</option>
						<option value="SE">Sergipe</option>
						<option value="TO">Tocantins</option>
					</select>
					<input class="texto-grande" type="text" id="filtros-cidade" name="nome-cidade" placeholder="Digite o nome da cidade">
					<input class="texto-grande" type="text" id="filtros-bairro" name="nome-bairro" placeholder="Digite o nome do bairro">
				</div>
				<div class="controlador">
					<input class="texto-grande" id="filtrar" type="image" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAAC0AAAApCAYAAAChi6CMAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAROSURBVHgBzZk/UBNBFMbf7h4zlrHSoEXsLGOQP2qTdNphp5WhQ4wjdHZiZydqjFoRO63ESq2QSgYkodRKbCSlds5wt+t7uQQCt3u3mwvgVzDJ7e3uj8ve+/a7Y9ARH6nc4wpO+tKrw+bCFvwn8vKVInAoKqZ+BBvPX9MxRn/ESGUZFBR3z2Sq3D3hOMULlQcIOL97gLF6sPFsikF+Ji84bx7soPBk2ag+hGNSBLijQHonuakTdaCOcAzihbuPdcBdCWitt/jwWBE/5w42Ysciy46B2l5bgSMSAi8yUNO6NuR5IptPl1j3AK7rOq6JW9qROmsJDlP52Ywn/GWlIK9rJmC/UZ3tfN6TV6jM41rWLgnFYFMGXgkry28YtPKzOQR+FwP8EIHnu99Fb6PcXvsssmP0jxQ1HU9zFtxQp668h9bq4MARWPCdZZzhPFgAR6BJceA4RAbBJwcGvgec0zVzkFN+4/lChMI0nijMlLHbor5VbQVyqJTKhMJSi8CQiYwO8JtzuO5/rX7WdTWWvKBRqzMOJfyouaIMr5DfHBqdyUMfEiN3bpmB1ZaUsmQChjhoEnXkQpZoIE1zRgZ8mQDAQbRdwLu6bgamX7C2GTeGgATJX+stWsMM1zLDNX2g+QRe9UmWHf2jttdXk8bquNwjXdsecPKSS4RuC2+6GHC8MdjVJBMy2XIbmMqpHLqEwC2wkB009IBzWaTyd7A5zj1Dl4NZ7bgKXkvp3XSp/wxchc4lhL+Ik01qB+Rswf/6bK7n3Hf7dpD7J991ORe5Q3eE7rmApemeYdSlIPDmXFzORX1Dk+JsP2HSvoFJ9mtao3j31Mvkci5KBU0icCp5VEHiziOXYwxuIvAbSKnU0CSq0Sw7nsFLPmE6hzE1jRHuLQxAA4EmVzSZxp5YEcPGdyyJ3yDtfJBSoWkwmzWK7gk3bN0zTqmg41zOJBv3TFLf0J3wed/QvIIbresS2ISre9rIHRpdjg+PvjCFT7LloFmdDDdal99yLimRRFIJgYsz4xn5a+0TOMrNXJLDp9Y0LNxzymXvYX+lw2j0xSXLdYW1/GOMCZ3HTdhV/FU+2UY4O+jELKfm0DRiS55FaLbOnsnQ7SwnP+iAyeUEyNs7jdpLsFC8e9qH5lhoemKJW00CPq0Dpiwnm7WP4CCq0Tx78SeZDYS1OwLunR1doRvZNIY5jVP2C7NcdGKHaGQShWLKmKDJikD7FNc03n7weIjApJ312iY+Ab1gCs1KgjE0Cx1wQpa7NrCH7gnZMwzNURMS+4HNLtfzLM8qfForMTRH3TNc0+RyPEBgVdYOHLpcGQ5TxIDGxUzG1ZM921danLn4Aen1QRXDJwJPw2GrtfoXr+Yr3L6ew29RcAUTfHg8h+e8N76+AEif5fpVXPZMen1xLMAkmpfmN7VrX18MInymlc72o68vCnfLeCPmfCmXkh4AHqnoLQH3y1S9go3qEh36B4NqQwe4/GncAAAAAElFTkSuQmCC" alt="Enviar">
				</div>
			</div>
		</form>
		</div>

	<div class="conteudo-pesquisa">
		<c:if test="${estabelecimentos == null}">
			<p>Não achou o que estava procurando?</p>
			<p>Caso o Estabelecimento que você pesquisou não exista ainda, <a href="cadastro-estabelecimento">Cadastre um Estabelecimento</a></p>
			<p>Ou filtre sua busca para um resultado mais agradável!
		</c:if>
		<c:if test="${estabelecimentos != null}">
			<c:forEach var="es" items="${estabelecimentos}">
					<div class="card-estabelecimento">
						<img id="foto-estabelecimento" alt="" src='<c:out value="${es.fotoEstabelecimento.urlFoto() }"/>'>
						<a class="texto-medio nome-estabelecimento" href="perfil-estabelecimento?id=<c:out value="${es.idEstabelecimento}" />"><c:out value="${es.nome}" /></a>
						<p class="texto-medio nota-estabelecimento"><img alt="Estrela" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAWCAYAAADafVyIAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAGtSURBVHgBtVVBUsIwFP1JhpHpxkAd12UUxyXsXNYb4NIVeAKGE4A30BN4BTyBcALHHY6M9gKU7OhMbeIPoAMl0HSQt2mS5ufnv//fD4McuCiXu2XH6Z04DkxmszcbGwKWqLpuC5R6+p0rKa/HQgyy7CjYo7lmyFjbxsgqgkvOvYTSr9SyiKWsBEKIXbZWESSM+YZlXmCskWFqSZFS2+hoQgb+KPI45/pW6Q0FvUbp69YTpKzHSJfhj9D0zR3o8lMAPfhnID0dom9eoHQKh4FY5EApAYeBYCKKolKx+E4IuQJDDvZAgPm5YXo0jaLR6dHRsyKkhNMa7AkJ8Pgt5e2nEMGG0Kqct7Bqujj0ID8CbCF3qy3EqOSlcl9yOVFqGCvVSCvbKLQRhgZ5QcixqW0YHZxz7kN+impLu2wHhLHMFmAEpb6VAyyvXU1sq2Ywoe1MB2eu20A+TXoQ2E46H2FYwu89mMHTNG04IEpt6oCQIfb++jgMH/QUvz2GbwFoMaW3MubtdiBlf6V1LG49mfhBqrJ0pWE0lVQ0QZwkg7XzwIC5DvCRwc39rBcra/8PKliu5gm/DFkAAAAASUVORK5CYII="><c:out value="${es.pontoAcessibilidade}" /></p>
						<a class="btn-favoritar" href="favoritar-estabelecimento?id=<c:out value="${es.idEstabelecimento}"/>">Favoritar</a>
						<p class="texto-pequeno categoria-estabelecimento"><img alt="Estrela" src="data:image/png+xml;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAASCAYAAABrXO8xAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAACnSURBVHgB7ZOxDcJADEW/naMPG2QDTlmIAVJwbJBsgATUwARkBOiBFWAE6C9nfIgGBAogyjzJsr71v7tPsC5LEr8QkQxtEJ0hqMNhVhlO/FqFJVBrTn0R28uLC5OG8CUBPGD8SBfsgn8N0rIJpi+Qsc7plcM86S0xSr+bbqIIwERrVxv2TosxenjNeXHUlRKJa/bzFd4Re0u+1PYN9UkVD+ltPuXuvQKPxzFy6zpUpAAAAABJRU5ErkJggg=="><c:out value="${es.categoria.nomeCategoria}" /></p>
						<p class="texto-pequeno endereco-estabelecimento"><c:out value="${es.endereco.tipoLogradouro}"/> <c:out value="${es.endereco.logradouro}" />, nº<c:out value="${es.endereco.numero}" />, <c:out value="${es.endereco.bairro}" />-<c:out value="${es.endereco.cidade}" />/<c:out value="${es.endereco.estado}" /> </p>
					</div>
			</c:forEach>
		</c:if>
	</div>
	</div>
	<c:forEach var="es" items="${estabelecimentos}">
		<table>

			<tr class="cards-estabelecimento">
				<td><a href="perfil-estabelecimento?id=<c:out value="${es.idEstabelecimento}" />"><c:out value="${es.nome}"/></a>
				<td><c:out value="${es.pontoAcessibilidade}"/></td>
				<td><c:out value="${es.endereco.logradouro}"/></td>
				<td><c:out value="${es.endereco.numero}"/></td>
				<td><c:out value="${es.endereco.bairro}"/></td>
				<td><c:out value="${es.endereco.cidade}"/></td>
				<td><c:out value="${es.endereco.estado}"/></td>
				<td><c:out value="${es.categoria.nomeCategoria}"/></td>
			</tr>
		</table>
	</c:forEach>
</body>

		<%@ include file="rodape.jsp"%>

</html>