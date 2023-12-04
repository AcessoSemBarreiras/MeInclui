<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cadastre o Estabelecimento!</title>
<style><%@include file="../../estilos/menu.css"%></style>
<style><%@include file="../../estilos/cadastro-estabelecimento.css"%></style>
<style><%@include file="../../estilos/padrao.css"%></style>	
</head>
<body>
 
	<div id="menu-logo">
		<a href="tela-inicial"><img  width="30" height="30" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTEiIGhlaWdodD0iNDYiIHZpZXdCb3g9IjAgMCA1MSA0NiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4NCjxwYXRoIGQ9Ik0wIDIzVjQ2SDcuMzUzNTRIMTQuNzA3MUwxNC42ODcxIDM0LjY4MDFDMTQuNjY3MSAyOC40NTQxIDE0LjY3NzEgMjMuMzYwMiAxNC43MDcxIDIzLjM2MDJDMTQuNzM3MSAyMy4zNjAyIDE3LjA1ODIgMjcuMDIzNyAxOS44NTk1IDMxLjQ4OTlDMjIuOTYxIDM2LjQzOTggMjUuMDEyIDM5LjYwOTQgMjUuMTAyMSAzOS41ODg4QzI1LjE3MjEgMzkuNTc4NSAyNy41MDMyIDM1Ljk1NjIgMzAuMjg0NiAzMS41NDE0QzMzLjA1NTkgMjcuMTI2NiAzNS4zNjcgMjMuNDczNCAzNS40MjcgMjMuNDIxOUMzNS40NzcxIDIzLjM2MDIgMzUuNTE3MSAyNy41MjggMzUuNTE3MSAzNC42NTk1VjQ2SDQyLjk3MDdINTAuNDI0MlYyM1YwTDQxLjI5OTkgMC4wMjA1ODAzTDMyLjE2NTUgMC4wNTE0NTI2TDMxLjg5NTMgMC41NjU5OTRDMzEuNDg1MSAxLjM0ODEgMzEuMDI0OSAyLjg3MTE0IDMwLjg1NDggNC4wNDQyOUMzMC4zNTQ2IDcuNDA5MzkgMzEuNTI1MiAxMC45OTA2IDM0LjAwNjQgMTMuNjc2NUwzNC43MTY3IDE0LjQyNzdMMzQuMDI2NCAxNS4zMjNDMzMuMDA1OSAxNi42NTA2IDMxLjgyNTMgMTguNDEwMyAzMC45MTQ5IDE5Ljk2NDJDMjkuMjU0MSAyMi43OTQyIDI3LjE5MzEgMjcuNTE3NyAyNi4wNjI1IDMxLjA3ODNDMjUuOTEyNSAzMS41NjIgMjUuNzUyNCAzMS45OTQyIDI1LjcwMjQgMzIuMDQ1NkMyNS41OTIzIDMyLjE2OTEgMjUuNjAyMyAxOC41MjM1IDI1LjcxMjQgMTguMjM1M0MyNS43NjI0IDE4LjExMTkgMjUuODgyNCAxOC4wMDg5IDI1Ljk4MjUgMTguMDA4OUMyNi4zMTI3IDE3Ljk5ODcgMjYuOTkzIDE3LjYxNzkgMjcuNDYzMiAxNy4xNzU0QzI5LjIyNDEgMTUuNDk4IDI4Ljc4MzggMTIuNjA2MyAyNi42MTI4IDExLjUzNkMyNi4xNTI2IDExLjMwOTYgMjUuOTIyNSAxMS4yNjg1IDI1LjIxMjEgMTEuMjY4NUMyNC4yMDE2IDExLjI2ODUgMjMuNjcxNCAxMS40NzQzIDIyLjk1MSAxMi4xNjM4QzIyLjI0MDcgMTIuODMyNyAyMS45MTA1IDEzLjYyNTEgMjEuOTEwNSAxNC42NjQ0QzIxLjkxMDUgMTUuMzUzOSAyMS45NjA2IDE1LjU5MDYgMjIuMjAwNyAxNi4xMDUxQzIyLjYzMDkgMTcuMDQxNiAyMy40MzEzIDE3Ljc0MTQgMjQuMzkxNyAxNy45OTg3TDI0LjgxMTkgMTguMTIyMVYyNS4xMzAyQzI0LjgxMTkgMjguOTg5MyAyNC43ODE5IDMyLjExNzcgMjQuNzUxOSAzMi4wODY4QzI0LjcyMTkgMzIuMDU1OSAyNC41MTE4IDMxLjQ1OTEgMjQuMjcxNyAzMC43NTkzQzIzLjQxMTMgMjguMjE3NCAyMi4wODA2IDI0LjkyNDQgMjEuMDIwMSAyMi43NjMzQzE5Ljg3OTYgMjAuNDI3MyAxOC4xODg3IDE3LjY4OTkgMTYuNjE4IDE1LjYxMTJMMTUuNzI3NiAxNC40MzhMMTYuNDE3OSAxMy42NzY1QzE5Ljc1OTUgMTAuMDMzNiAyMC41ODk5IDUuMTk2ODcgMTguNjM5IDAuODEyOTczTDE4LjI3ODggMEg5LjE0NDRIMFYyM1oiIGZpbGw9IiMwMzMyNkMiLz4NCjwvc3ZnPg0K"></a>
	</div>	
 
	
 
	<div id="cad-est">
		<div id="voltar">
			<a href="">Voltar</a>
		</div>
		<form action="inserir-estabelecimento" method="post" enctype="multipart/form-data">
			<div class="cont-cad">
				<div class="texto-medio" id="titulo">
        			<h1>Cadastre o estabelecimento</h1>
     		 	</div>
	 
		 <div class="paginacao">
        <p class="atual">1</p><span></span>
        <p>2</p>
      </div>
			
				<input type="text" id="nome-est" name="nome-estabelecimento" placeholder="Nome do estabelecimento" required>
 
				<div id="categorias">
					<select name="categoria-estabelecimento" id="categoria" required>
						<option value="" selected disabled>Categoria</option>
						<option value="Bar">Bar</option>
						<option value="Comercial">Estabelecimento Comercial</option>
						<option value="Doceria">Doceria</option>
						<option value="Saude">Saúde</option>
						<option value="Restaurante">Restaurante</option>
					</select>
				</div>
 
				<div class="insira-foto">
					<input type="file" id="imagem" name="foto-estabelecimento">
					<p>Selecione Uma Foto De Perfil</p>
				</div>
				<input type="submit" value="Continuar" id="continuar">
			</div>
 
			<div class="imgPessoa">
				<img src="" alt="Imagem pessoa" id="imgPessoa">
			</div>
 
			<div class="cadastro-estabelecimento">
				<div class="inputs">
					<input type="text" id="tipo-logradouro" name="tipo-logradouro"
						placeholder="Tipo Logradouro" required> <input type="text"
						id="logradouro" name="logradouro" placeholder="Logradouro"
						required> <input type="text" id="cidade" name="cidade"
						placeholder="Cidade" required>
						<input type="text" id="numero" name="numero" placeholder="Número" required>
						
					<select id="estado" name="estado" required>
						<option selected disabled>Estado</option>
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
					<input type="text" id="bairro" name="bairro" placeholder="Bairro"
						required>
					<input type="text" id="complemento"
						name="complemento" placeholder="Complemento">
				</div>
				<div id="finalizar-cadastro">
					<input type="submit" value="Finalizar">
				</div>
 
				<div class="img-pessoas">
					<img src="" alt="Imagem pessoas">
				</div>
			</div>
		</form>
	</div>
 
</body>
</html>