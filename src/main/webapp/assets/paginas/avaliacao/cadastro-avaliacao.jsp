<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Avaliacao</title>
<style><%@include file="../../estilos/menu.css"%></style>
</head>
<body>

	<header>
		<a href="tela-inicial" id="menu-logo"><img  width="35" height="35" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTEiIGhlaWdodD0iNDYiIHZpZXdCb3g9IjAgMCA1MSA0NiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4NCjxwYXRoIGQ9Ik0wIDIzVjQ2SDcuMzUzNTRIMTQuNzA3MUwxNC42ODcxIDM0LjY4MDFDMTQuNjY3MSAyOC40NTQxIDE0LjY3NzEgMjMuMzYwMiAxNC43MDcxIDIzLjM2MDJDMTQuNzM3MSAyMy4zNjAyIDE3LjA1ODIgMjcuMDIzNyAxOS44NTk1IDMxLjQ4OTlDMjIuOTYxIDM2LjQzOTggMjUuMDEyIDM5LjYwOTQgMjUuMTAyMSAzOS41ODg4QzI1LjE3MjEgMzkuNTc4NSAyNy41MDMyIDM1Ljk1NjIgMzAuMjg0NiAzMS41NDE0QzMzLjA1NTkgMjcuMTI2NiAzNS4zNjcgMjMuNDczNCAzNS40MjcgMjMuNDIxOUMzNS40NzcxIDIzLjM2MDIgMzUuNTE3MSAyNy41MjggMzUuNTE3MSAzNC42NTk1VjQ2SDQyLjk3MDdINTAuNDI0MlYyM1YwTDQxLjI5OTkgMC4wMjA1ODAzTDMyLjE2NTUgMC4wNTE0NTI2TDMxLjg5NTMgMC41NjU5OTRDMzEuNDg1MSAxLjM0ODEgMzEuMDI0OSAyLjg3MTE0IDMwLjg1NDggNC4wNDQyOUMzMC4zNTQ2IDcuNDA5MzkgMzEuNTI1MiAxMC45OTA2IDM0LjAwNjQgMTMuNjc2NUwzNC43MTY3IDE0LjQyNzdMMzQuMDI2NCAxNS4zMjNDMzMuMDA1OSAxNi42NTA2IDMxLjgyNTMgMTguNDEwMyAzMC45MTQ5IDE5Ljk2NDJDMjkuMjU0MSAyMi43OTQyIDI3LjE5MzEgMjcuNTE3NyAyNi4wNjI1IDMxLjA3ODNDMjUuOTEyNSAzMS41NjIgMjUuNzUyNCAzMS45OTQyIDI1LjcwMjQgMzIuMDQ1NkMyNS41OTIzIDMyLjE2OTEgMjUuNjAyMyAxOC41MjM1IDI1LjcxMjQgMTguMjM1M0MyNS43NjI0IDE4LjExMTkgMjUuODgyNCAxOC4wMDg5IDI1Ljk4MjUgMTguMDA4OUMyNi4zMTI3IDE3Ljk5ODcgMjYuOTkzIDE3LjYxNzkgMjcuNDYzMiAxNy4xNzU0QzI5LjIyNDEgMTUuNDk4IDI4Ljc4MzggMTIuNjA2MyAyNi42MTI4IDExLjUzNkMyNi4xNTI2IDExLjMwOTYgMjUuOTIyNSAxMS4yNjg1IDI1LjIxMjEgMTEuMjY4NUMyNC4yMDE2IDExLjI2ODUgMjMuNjcxNCAxMS40NzQzIDIyLjk1MSAxMi4xNjM4QzIyLjI0MDcgMTIuODMyNyAyMS45MTA1IDEzLjYyNTEgMjEuOTEwNSAxNC42NjQ0QzIxLjkxMDUgMTUuMzUzOSAyMS45NjA2IDE1LjU5MDYgMjIuMjAwNyAxNi4xMDUxQzIyLjYzMDkgMTcuMDQxNiAyMy40MzEzIDE3Ljc0MTQgMjQuMzkxNyAxNy45OTg3TDI0LjgxMTkgMTguMTIyMVYyNS4xMzAyQzI0LjgxMTkgMjguOTg5MyAyNC43ODE5IDMyLjExNzcgMjQuNzUxOSAzMi4wODY4QzI0LjcyMTkgMzIuMDU1OSAyNC41MTE4IDMxLjQ1OTEgMjQuMjcxNyAzMC43NTkzQzIzLjQxMTMgMjguMjE3NCAyMi4wODA2IDI0LjkyNDQgMjEuMDIwMSAyMi43NjMzQzE5Ljg3OTYgMjAuNDI3MyAxOC4xODg3IDE3LjY4OTkgMTYuNjE4IDE1LjYxMTJMMTUuNzI3NiAxNC40MzhMMTYuNDE3OSAxMy42NzY1QzE5Ljc1OTUgMTAuMDMzNiAyMC41ODk5IDUuMTk2ODcgMTguNjM5IDAuODEyOTczTDE4LjI3ODggMEg5LjE0NDRIMFYyM1oiIGZpbGw9IiMwMzMyNkMiLz4NCjwvc3ZnPg0K"></a>
	</header>

	<div>
		<h1>Questionário</h1>
	</div>

	<form action="inserir-avaliacao" method="post">
		<div id="respostas-avaliacao">
			<hr>
			<div id="pergunta-1">
				<label>1. Os corredores asseguram uma faixa livre de barreiras ou obstáculos, e é seguido de acordo com o fluxo de pessoas?</label> <br>
				<div class="respostas">
					<input type="radio" name="resposta-1" value="1">
					<input type="radio" name="resposta-1" value="2">
					<input type="radio" name="resposta-1" value="3">
					<input type="radio" name="resposta-1" value="4">
					<input type="radio" name="resposta-1" value="5">
					<hr>
				</div>
			</div>
			<div id="pergunta-2">
				<label>2. As portas e corredores possuem tamanho necessário para cadeirantes?</label> <br>
				<div class="respostas">
					<input type="radio" name="resposta-2" value="1">
					<input type="radio" name="resposta-2" value="2">
					<input type="radio" name="resposta-2" value="3">
					<input type="radio" name="resposta-2" value="4">
					<input type="radio" name="resposta-2" value="5">
					<hr>
				</div>
			</div>
			
			<div id="pergunta-3">
				<label>3. O estabelecimento possui banheiro com entrada independente para pessoas com deficiência física, de modo que pode entrar acompanhado?</label> <br>
				<div class="respostas">
					<input type="radio" name="resposta-3" value="1">
					<input type="radio" name="resposta-3" value="2">
					<input type="radio" name="resposta-3" value="3">
					<input type="radio" name="resposta-3" value="4">
					<input type="radio" name="resposta-3" value="5">
					<hr>
				</div>
			</div>
			
			<div id="pergunta-4">
				<label>4. O estabelecimento possui rampas?</label> <br>
				<div class="respostas">
					<input type="radio" name="resposta-4" value="1">
					<input type="radio" name="resposta-4" value="2">
					<input type="radio" name="resposta-4" value="3">
					<input type="radio" name="resposta-4" value="4">
					<input type="radio" name="resposta-4" value="5">
					<hr>
				</div>
			</div>
			
			<div id="pergunta-5">
				<label>5. Possui proteção contra queda ao longo das áreas de circulação?</label> <br>
				<div class="respostas">
					<input type="radio" name="resposta-5" value="1">
					<input type="radio" name="resposta-5" value="2">
					<input type="radio" name="resposta-5" value="3">
					<input type="radio" name="resposta-5" value="4">
					<input type="radio" name="resposta-5" value="5">
				</div>
			</div>
		</div>
		<div class="cancelar">
			<a href="perfil-estabelecimento">Cancelar</a>
			</div>
			<div class="enviar">
					<input type="submit" value="FINALIZAR"> 
			</div>
		
		</form>
	</body>
</html>