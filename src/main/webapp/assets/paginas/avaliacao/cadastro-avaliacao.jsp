<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt">
	<head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
			<style><%@include file="../../estilos/padrao.css"%></style>
			<style><%@include file="../../estilos/cadastro-avaliacao.css"%></style>
            <title>Avaliacao</title>
			
	</head>
<body>

	<header class="template-grid">
		<nav class="cabecalho-geral">
			<img src="../../imagens/logo-meinclui.svg">
		</nav>
	</header>

	<div class="template-grid-avaliacao">
		<div class="grid-centro texto-titulo">
			<h1>Questionário</h1>
		</div>
	</div>

	<form action="inserir-avaliacao" method="post" class="template-grid-avaliacao">
		<div id="respostas-avaliacao" class="grid-centro texto-pergunta">
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
	<div class="grid-centro">
		<div class="cancelar">
				<button onclick="location.href='http://localhost:8080/MeInclui/perfil-estabelecimento'" class="botao-sem-cor-pequeno texto-pequeno">Cancelar</button>
	    </div>
		<div class="enviar">
				<input type="submit" value="FINALIZAR" class="botao-pequeno texto-pequeno" > 
		</div>
	</div>		
		</form>
	</body>
</html>