<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cadastre o Estabelecimento!</title>
</head>
<body>
	<div class="titulo-principal">
		<h1>Cadastre o Estabelecimento</h1>
	</div>

	<div class="indentificador">
		<p>1 - 2</p>
	</div>

	<div id="cadastro-estabelecimento">
		<div id="voltar">
			<a href="">Voltar</a>
		</div>
		<form action="finalizar">
			<div class="conteudo-cadastro">
				<input type="text" id="nome-est" name="nome-estabelecimento"
					placeholder="Nome do estabelecimento" required>

				<div id="categorias">
					<input list="categoria" name="categoria-estabelecimento" placeholder="Categoria">
					<datalist id="categoria">
						<option value="Estabelecimento Comercial">
						<option value="Docerias">
						<option value="Saúde">
						<option value="Restaurantes">
						<option value="Bar">
					</datalist>
				</div>

				<div id="foto-estabelecimento">
					<input type="file" id="imagem" name="foto-estabelecimento">
					<p>Selecione Uma Foto De Perfil</p>
				</div>
				<input type="submit" value="Continuar" id="continuar">
			</div>

			<div class="imgPessoa">
				<img src="" alt="Imagem pessoa" id="imgPessoa">
			</div>
			
			<div class="cadastro_estabelecimento">
				<div class="cc_texto">
					<input type="text" id="logradouro" name="logradouro"
						placeholder="Logradouro" required> 
						<input type="text" id="logradouro-estabelecimento" name="logradouro-estabelecimento" placeholder="Tipo Logradouro" required> 
						<input type="text" id="cidade" name="cidade" placeholder="Cidade" required> 
						<input type="text" id="numero" name="numero" placeholder="Número" required> 
						<input type="text" id="estado" name="estado" placeholder="Estado" required> 
						<input type="text" id="bairro" name="bairro" placeholder="Bairro" required> 
						<input type="text" id="complemento" name="complemento-estabelecimento" placeholder="Complemento">
				</div>
				<div id="finalizar_cadastro">
					<input type="submit" value="Finalizar">
				</div>

				<div class="imgPessoas">
					<img src="" alt="Imagem pessoas" id="imgPessoa2">
				</div>
			</div>
		</form>
	</div>
</body>
</html>