<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style><%@include file="../../estilos/cadastro-usuario.css"%></style>
	<style><%@include file="../../estilos/padrao.css"%></style>
	<style><%@include file="../../estilos/menu.css"%></style>
	<title>Cadastre-se!</title>
</head>

<body>
	<header class="template-grid">
		 <div id="menu-logo">
			<a href="tela-inicial"><img  width="30" height="30" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTEiIGhlaWdodD0iNDYiIHZpZXdCb3g9IjAgMCA1MSA0NiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4NCjxwYXRoIGQ9Ik0wIDIzVjQ2SDcuMzUzNTRIMTQuNzA3MUwxNC42ODcxIDM0LjY4MDFDMTQuNjY3MSAyOC40NTQxIDE0LjY3NzEgMjMuMzYwMiAxNC43MDcxIDIzLjM2MDJDMTQuNzM3MSAyMy4zNjAyIDE3LjA1ODIgMjcuMDIzNyAxOS44NTk1IDMxLjQ4OTlDMjIuOTYxIDM2LjQzOTggMjUuMDEyIDM5LjYwOTQgMjUuMTAyMSAzOS41ODg4QzI1LjE3MjEgMzkuNTc4NSAyNy41MDMyIDM1Ljk1NjIgMzAuMjg0NiAzMS41NDE0QzMzLjA1NTkgMjcuMTI2NiAzNS4zNjcgMjMuNDczNCAzNS40MjcgMjMuNDIxOUMzNS40NzcxIDIzLjM2MDIgMzUuNTE3MSAyNy41MjggMzUuNTE3MSAzNC42NTk1VjQ2SDQyLjk3MDdINTAuNDI0MlYyM1YwTDQxLjI5OTkgMC4wMjA1ODAzTDMyLjE2NTUgMC4wNTE0NTI2TDMxLjg5NTMgMC41NjU5OTRDMzEuNDg1MSAxLjM0ODEgMzEuMDI0OSAyLjg3MTE0IDMwLjg1NDggNC4wNDQyOUMzMC4zNTQ2IDcuNDA5MzkgMzEuNTI1MiAxMC45OTA2IDM0LjAwNjQgMTMuNjc2NUwzNC43MTY3IDE0LjQyNzdMMzQuMDI2NCAxNS4zMjNDMzMuMDA1OSAxNi42NTA2IDMxLjgyNTMgMTguNDEwMyAzMC45MTQ5IDE5Ljk2NDJDMjkuMjU0MSAyMi43OTQyIDI3LjE5MzEgMjcuNTE3NyAyNi4wNjI1IDMxLjA3ODNDMjUuOTEyNSAzMS41NjIgMjUuNzUyNCAzMS45OTQyIDI1LjcwMjQgMzIuMDQ1NkMyNS41OTIzIDMyLjE2OTEgMjUuNjAyMyAxOC41MjM1IDI1LjcxMjQgMTguMjM1M0MyNS43NjI0IDE4LjExMTkgMjUuODgyNCAxOC4wMDg5IDI1Ljk4MjUgMTguMDA4OUMyNi4zMTI3IDE3Ljk5ODcgMjYuOTkzIDE3LjYxNzkgMjcuNDYzMiAxNy4xNzU0QzI5LjIyNDEgMTUuNDk4IDI4Ljc4MzggMTIuNjA2MyAyNi42MTI4IDExLjUzNkMyNi4xNTI2IDExLjMwOTYgMjUuOTIyNSAxMS4yNjg1IDI1LjIxMjEgMTEuMjY4NUMyNC4yMDE2IDExLjI2ODUgMjMuNjcxNCAxMS40NzQzIDIyLjk1MSAxMi4xNjM4QzIyLjI0MDcgMTIuODMyNyAyMS45MTA1IDEzLjYyNTEgMjEuOTEwNSAxNC42NjQ0QzIxLjkxMDUgMTUuMzUzOSAyMS45NjA2IDE1LjU5MDYgMjIuMjAwNyAxNi4xMDUxQzIyLjYzMDkgMTcuMDQxNiAyMy40MzEzIDE3Ljc0MTQgMjQuMzkxNyAxNy45OTg3TDI0LjgxMTkgMTguMTIyMVYyNS4xMzAyQzI0LjgxMTkgMjguOTg5MyAyNC43ODE5IDMyLjExNzcgMjQuNzUxOSAzMi4wODY4QzI0LjcyMTkgMzIuMDU1OSAyNC41MTE4IDMxLjQ1OTEgMjQuMjcxNyAzMC43NTkzQzIzLjQxMTMgMjguMjE3NCAyMi4wODA2IDI0LjkyNDQgMjEuMDIwMSAyMi43NjMzQzE5Ljg3OTYgMjAuNDI3MyAxOC4xODg3IDE3LjY4OTkgMTYuNjE4IDE1LjYxMTJMMTUuNzI3NiAxNC40MzhMMTYuNDE3OSAxMy42NzY1QzE5Ljc1OTUgMTAuMDMzNiAyMC41ODk5IDUuMTk2ODcgMTguNjM5IDAuODEyOTczTDE4LjI3ODggMEg5LjE0NDRIMFYyM1oiIGZpbGw9IiMwMzMyNkMiLz4NCjwvc3ZnPg0K"></a>
		</div>	 
	</header>

	<div class=" template-grid">
		<div class="aaa">
			<h1 class="titulo-principal">Cadastrar-se</h1>
			<a href="#"> voltar -></a>
		</div>
	</div>

	<form class="template-grid" id="formulario" action="inserir-usuario" method="post" enctype="multipart/form-data">

		<div class="formulario-esquerda">

			<div class="conteudo-nome-completo">
				<input type="text" id="nome-completo" name="nome-usuario" placeholder="Nome Completo" required>
			</div>

			<div class="conteudo-cpf-usuario">
				<input type="text" id="cpf" name="cpf-usuario" placeholder="CPF" required minlength="14" maxlength="14">
			</div>

			<div class="pronome-usuario">
				<select name="pronome-usuario" id="pronome-usuario" placeholder="E-mail">
					<option value="" selected>Pronomes</option>
					<option value="Ele/Dele">Ele/Dele</option>
					<option value="Ela/Dela">Ela/Dela</option>
					<option value="Elu/Delu">Elu/Delu</option>
					<option value="qualquer">Qualquer pronome</option>
					<option value="nao-informar">Não Informar</option>
				</select>
			</div>

			<div class="senha-usuario">
				<input type="password" id="senha" name="senha-usuario" placeholder="Digite uma senha" required>
			</div>

			<div class="termos-uso">
				<input type="checkbox" id="termos-uso" value="termos"> Li e Aceito os <a href="">Termos</a>				
			</div>
		</div>

		<div class="formulario-direita">

			<div class="conteudo-nome-usuario">
				<input type="text" id="nusuario" name="nome-de-usuario" placeholder="Nome de Usuário" required>
			</div>

			<div class="conteudo-email-usuario">
				<input type="email" id="email" name="email-usuario" placeholder="E-mail" required>
			</div>

			<div class="ddn-usuario">
				<input type="date" id="data_de_nascimento_usuario" name="data-nascimento-usuario"
					placeholder="Data de Nascimento" required min="1900-01-01">
			</div>

			<div class="confirmar-senha-usuario">
				<input type="password" id="confirma-senha" placeholder="Confirme sua senha" required>
			</div>

			<div>
				<input type="submit" id="confirmar" value="CONFIRMAR" class="botao-grande texto-grande">
			</div>

			<div id="foto-usuario">
				<input type="file" id="imagem" name="foto-usuario" accept="image/*">
				<p>Selecione Uma Foto De Perfil</p>
			</div>
		</div>


	</form>

</body>

</html>