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
<title>Pesquisa</title>
</head>

<body>

	<%@ include file="menu.jsp"%>




	<div class="filtrar">
		<form class="template-grid" action="filtrar-estabelecimentos" method="post">
			<div class="barra-pesquisa">
				<div id="lupa-pesquisa">
					<img id="img-lupa-pesquisa" alt="lupa-pesquisa" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTAiIGhlaWdodD0iNTAiIHZpZXdCb3g9IjAgMCA1MCA1MCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQ5LjMyIDQzLjIyODJMMzkuNTgzIDMzLjQ5MjhDMzkuMTQzNSAzMy4wNTM0IDM4LjU0NzcgMzIuODA5MyAzNy45MjI3IDMyLjgwOTNIMzYuMzMwOEMzOS4wMjYzIDI5LjM2MjQgNDAuNjI4IDI1LjAyNjggNDAuNjI4IDIwLjMxMDVDNDAuNjI4IDkuMDkwOTEgMzEuNTM1NSAwIDIwLjMxNCAwQzkuMDkyNDYgMCAwIDkuMDkwOTEgMCAyMC4zMTA1QzAgMzEuNTMwMSA5LjA5MjQ2IDQwLjYyMSAyMC4zMTQgNDAuNjIxQzI1LjAzMTEgNDAuNjIxIDI5LjM2NzQgMzkuMDE5NiAzMi44MTQ5IDM2LjMyNDZWMzcuOTE2MkMzMi44MTQ5IDM4LjU0MTIgMzMuMDU5MSAzOS4xMzY4IDMzLjQ5ODUgMzkuNTc2Mkw0My4yMzU2IDQ5LjMxMTZDNDQuMTUzNiA1MC4yMjk1IDQ1LjYzODEgNTAuMjI5NSA0Ni41NDY0IDQ5LjMxMTZMNDkuMzEwMiA0Ni41NDgyQzUwLjIyODMgNDUuNjMwMyA1MC4yMjgzIDQ0LjE0NjEgNDkuMzIgNDMuMjI4MlpNMjAuMzE0IDMyLjgwOTNDMTMuNDA5MiAzMi44MDkzIDcuODEzMDcgMjcuMjIzOSA3LjgxMzA3IDIwLjMxMDVDNy44MTMwNyAxMy40MDY5IDEzLjM5OTQgNy44MTE3NCAyMC4zMTQgNy44MTE3NEMyNy4yMTg4IDcuODExNzQgMzIuODE0OSAxMy4zOTcxIDMyLjgxNDkgMjAuMzEwNUMzMi44MTQ5IDI3LjIxNDEgMjcuMjI4NiAzMi44MDkzIDIwLjMxNCAzMi44MDkzWiIgZmlsbD0id2hpdGUiLz4KPC9zdmc+Cg==">
				</div>
				<input id="campo-texto" type="text" id="nome" name="nome" placeholder="Digite o nome do estabelecimento">
				<img id="filtro" alt="filtro" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDAiIGhlaWdodD0iNDAiIHZpZXdCb3g9IjAgMCA0MCA0MCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEuNjEyMDYgMi4xNDAyTDEuNjEyMTQgMi4xNDAyOEwxNi4wNjA3IDE2LjU5MTFMMTYuNSAxNy4wMzA0VjE3LjY1MTZWMzMuNzVDMTYuNSAzMy44NzIyIDE2LjU1OTUgMzMuOTg2OCAxNi42NTk3IDM0LjA1NzFMMS42MTIwNiAyLjE0MDJaTTEuNjEyMDYgMi4xNDAyQzEuNTM5MDMgMi4wNjcxNyAxLjUxNDA1IDIuMDAyNDQgMS41MDQ3OCAxLjk0ODU3QzEuNDk0MDkgMS44ODYzOCAxLjUwMDYxIDEuODEwMDcgMS41MzI3MiAxLjczMjY3QzEuNTY0ODQgMS42NTUyNCAxLjYxNDQyIDEuNTk2MzggMS42NjYzOSAxLjU1OTdDMS43MTE1MSAxLjUyNzg2IDEuNzc0OTUgMS41IDEuODc3MTggMS41SDM4LjEyMzFDMzguMjI2NCAxLjUgMzguMjg5OCAxLjUyODExIDM4LjMzNDUgMS41NTk2NUMzOC4zODYgMS41OTYwNSAzOC40MzUzIDEuNjU0NjEgMzguNDY3NCAxLjczMjA0QzM4LjQ5OTQgMS44MDk1IDM4LjUwNiAxLjg4NjE4IDM4LjQ5NTEgMS45NDg4OUMzOC40ODU4IDIuMDAzMzMgMzguNDYwNiAyLjA2NzkyIDM4LjM4ODMgMi4xNDAyM0wzOC4zODgyIDIuMTQwMjZMMjMuOTM5MyAxNi41OTFMMjMuNSAxNy4wMzA0VjE3LjY1MTZWMzguMTIzNEMyMy41IDM4LjQyMDMgMjMuMTYwNCAzOC42MDYgMjIuOTA5OSAzOC40MzA3TDIyLjkwOTcgMzguNDMwNUwxNi42NiAzNC4wNTczTDEuNjEyMDYgMi4xNDAyWiIgZmlsbD0iIzAzMzI2QyIgc3Ryb2tlPSIjMDMzMjZDIiBzdHJva2Utd2lkdGg9IjMiLz4KPC9zdmc+Cg==">
			</div>

			<div class="filtros">
				<select name="categoria" id="categoria">
					<option value="" selected>Categoria</option>
					<option value="Doceria">Doceria</option>
					<option value="Saúde">Saúde</option>
					<option value="Restaurante">Restaurante</option>
					<option value="bar">Bar</option>
					<option value="Estabelecimento Comercial">Estabelecimento Comercial</option>
				</select> 
				<select id="estado" name="nome-estado">
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
				<input type="text" id="nome-cidade" name="nome-cidade" placeholder="Digite o nome da cidade">
				<input type="text" id="nome-bairro" name="nome-bairro" placeholder="Digite o nome do bairro">
				<input type="text" id="media=" name="media" placeholder="Digite a nota">
				<input type="submit" value="Filtrar">
			</div>
		</form>
	</div>

	<div id="conteudo">
		<h1>
			O Que Deseja Ver Hoje?
			</h 1>
			<p>
				<b>Navegue</b> pelos <b>estabelecimentos</b> presentes no <i>MeInclui!</i>
				e ajude a tornar os locais mais <b>acessíveis</b> com suas <b>avaliações.</b>
			</p>
			<h3>Filtre sua Busca para um resultado mais agradável!</h3>
	</div>
	<div id="predio">
		<img src="" alt="imagem De um prédio">
	</div>



	<c:forEach var="es" items="${estabelecimentos}">
		<table>

			<tr class="cards-estabelecimento">
				<td><a
					href="perfil-estabelecimento?id=<c:out value="${es.idEstabelecimento}" />"><c:out
							value="${es.nome}" /></a>
				<td><c:out value="${es.nome}" /></td>
				<td><c:out value="${es.pontoAcessibilidade}" /></td>
				<td><c:out value="${es.endereco.logradouro}" /></td>
				<td><c:out value="${es.endereco.numero}" /></td>
				<td><c:out value="${es.endereco.bairro}" /></td>
				<td><c:out value="${es.endereco.cidade}" /></td>
				<td><c:out value="${es.endereco.estado}" /></td>
				<td><c:out value="${es.categoria.nomeCategoria}" /></td>
			</tr>
		</table>
	</c:forEach>

</body>
</html>