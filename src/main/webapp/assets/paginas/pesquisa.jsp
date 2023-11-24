<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style><%@include file="../estilos/padrao.css"%></style>
<style><%@include file="../estilos/tela-inicial.css"%></style>
<title>Pesquisa</title>
</head>

<body>

		<%@ include file="menu.jsp"%>
	

	<div class="barraPesquisa">
		
	</div>

	<div class="filtrar">
		<form action="filtrar-estabelecimentos" method="post">
			<div class="filtro">
			 <input type="text"
				id="nome" name="nome" placeholder="Digite o nome do estabelecimento">
				<select name="categoria" id="categoria">
					<option value="" selected>Categoria</option>
					<option value="Doceria">Doceria</option>
					<option value="Saúde">Saúde</option>
					<option value="Restaurante">Restaurante</option>
					<option value="bar">Bar</option>
					<option value="Estabelecimento Comercial">Estabelecimento
						Comercial</option>
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
					<input type="text" id="nome-cidade" name="nome-cidade"
					placeholder="Digite o nome da cidade"> 
					<input type="text" id="nome-bairro" name="nome-bairro"
					placeholder="Digite o nome do bairro"> <input type="text"
					id="media=" name="media" placeholder="Digite a nota">
				<input type="submit" value="Filtrar">
			</div>
		</form>
	</div>

	<div id="conteudo">
		<h1>O Que Deseja Ver Hoje?</h 1>
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
</html>