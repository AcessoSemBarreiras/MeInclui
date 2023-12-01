<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ranque de usuario!</title>
<style><%@include file="../../estilos/padrao.css"%></style>
</head>
<body>
	<%@ include file="../menu.jsp"%>

	<div class="texto-medio">
		<h3>Destaques da comunidade</h3>
	</div>
	
	
	<div id="filtros-ranque">
		<a href="">Geral</a>
		<a href="">Anual</a>
		<a href="">Mensal</a>
		<a href="">Semanal</a>
		<a href="">Diário</a>
	</div>

	
 <div class="cards-ranque">
	
		<div class="card-segundo">
			
			<div class="card-inf">
				
				<p>#2</p>
				
				<p>Conquistas</p>
				
			</div>
		</div>

		<div class="card-primeiro">
			
			<div class="card-inf">
				
				<p>#1</p>
				
				<p>Conquistas</p>
				
			</div>
		</div>
		
		<div class="card-terceiro">
			
			<div class="card-inf">
				
				<p>#3</p>
				
				<p>Conquistas</p>
				
			</div>
		</div>
		
	</div>

	<div id="outros-destaques">
		<h4>Outros Destaques</h4>
		
		<div id="outros">
			<div id="titulos-outros">
				<table>
				<tr>
					<th></th>
					<th colspan="2">Nome</th>
					<th>Pontos</th>
					
				</tr>
				<c:forEach var="cm" items="${comunidade}" varStatus="contador">
					<tr>
						<td>#<c:out value="${contador.count}"/></td>
						
						<td><c:out value="${cm.get('usuario').getNome() }" /></td>
						<td><c:out value="${cm.get('soma')}"/></td>
					</tr>
				</c:forEach>
				</table>
			
			</div>
			
			
			
				<p>#</p>
				
		</div>
	</div>
	
	<div class="aside">
		<img alt="Estrela" height="40" width="40" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDEiIGhlaWdodD0iNTIiIHZpZXdCb3g9IjAgMCA0MSA1MiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQuODk1ODggMTguNTY4OFYxTTM2LjEwNDEgMTguNTY4OFYxTTIwLjUgNi4wMTk2NlYxTTIzLjg4MDkgMTYuMzM1MUwyNy4zMTM4IDIyLjk2MUMyNy43ODE5IDIzLjg2NDYgMjkuMDMwMyAyNC43NjgxIDMwLjA3MDUgMjQuOTE4N0wzNi4yODYyIDI1LjkyMjZDNDAuMjY1MiAyNi41NzUyIDQxLjIwMTUgMjkuMzM2IDM4LjM0MDcgMzIuMDk2OEwzMy41MDM0IDM2Ljc2NTFDMzIuNjk3MiAzNy41NDMxIDMyLjIyOTEgMzkuMDc0MSAzMi40ODkyIDQwLjE3ODVMMzMuODY3NSA0NS45NzYyQzM0Ljk1OTggNTAuNTQ0MSAzMi40MzcxIDUyLjMyNjEgMjguMjUgNDkuOTQxN0wyMi40MjQ1IDQ2LjYwMzZDMjEuMzU4MiA0Ni4wMDEzIDE5LjY0MTggNDYuMDAxMyAxOC41NzU1IDQ2LjYwMzZMMTIuNzUgNDkuOTQxN0M4LjU2Mjg1IDUyLjMyNjEgNi4wNDAxOCA1MC41NDQxIDcuMTMyNDcgNDUuOTc2Mkw4LjUxMDgzIDQwLjE3ODVDOC43NzA5IDM5LjA5OTIgOC4zMDI3OCAzNy41NjgyIDcuNDk2NTcgMzYuNzY1MUwyLjY1OTI5IDMyLjA5NjhDLTAuMjAxNDY1IDI5LjMzNiAwLjczNDc4MyAyNi41NTAxIDQuNzEzODMgMjUuOTIyNkwxMC45Mjk1IDI0LjkxODdDMTEuOTY5NyAyNC43NDMgMTMuMjE4MSAyMy44NjQ2IDEzLjY4NjIgMjIuOTYxTDE3LjExOTEgMTYuMzM1MUMxOC45NjU2IDEyLjc0NiAyMi4wMzQ0IDEyLjc0NiAyMy44ODA5IDE2LjMzNTFaIiBzdHJva2U9IiNGRjc4MUMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==">
		<h3>Seja você também um destaque!</h3>
		<p>Nosso ranking de usuários destaques está a todo vapor. A nossa métrica para definir um destaque é de acordo com as atividades desenvolvidas pelo usuário dentro da nossa plataforma. Cada atividade listada abaixo gera uma pontuação que a somatória pode te levar ao top 10. São elas: </p>
		<p>Fazer comentários;</p>
		<p>Avaliar estabelecimentos;</p>
		<p>Cadastrar estabelecimentos;</p>
		<p>Número de curtidas recebidas</p>
	</div>
</body>
</html>