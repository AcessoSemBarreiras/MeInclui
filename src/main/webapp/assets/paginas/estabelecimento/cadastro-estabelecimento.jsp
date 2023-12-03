<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../estilos/padrao.css">
	<link rel="stylesheet" href="../../estilos/cadastro-estabelecimento.css">
	<title>Cadastre o Estabelecimento</title>
</head>

<body>

	<header class="template-grid">
		<nav class="cabecalho-geral">
			<img src="../../imagens/logo-meinclui.svg">
		</nav>
	</header>

	<div class=" template-grid">
		<div class="texto-titulo-cadastro">
			<h1 class="titulo-principal">Cadastrar o Estabelecimento</h1>
			<a href="#"> voltar -></a>
		</div>
	</div>

	<form id="formulario"  action="inserir-estabelecimento" method="get" enctype="multipart/form-data">

		<div class="template-grid" id="formulario-primeiro">
			<div class="formulario-esquerda">

				<div>
					<nav>
						<img src="../../imagens/foto-perfil-cadastro.svg" alt="Foto de Perfil">
					</nav>

					<p class="texto-grande texto-foto" style="color: var(--azul);" >Selecione Uma Foto De Perfil</p>
				</div>

			</div>

			<div class="formulario-centro">
				<input type="text" id="nome-est" name="nome-estabelecimento" placeholder="Nome do estabelecimento" required>
				<div id="categorias">
					<select name="categoria-estabelecimento" id="categoria" required>
						<option value="" selected disabled>Categoria</option>
						<option value="bar">Bar</option>
						<option value="comercial">Estabelecimento Comercial</option>
						<option value="doceria">Doceria</option>
						<option value="saude">Saúde</option>
						<option value="restaurante">Restaurante</option>
					</select>
				</div>
				
				<input type="submit" id="confirmar" value="CONFIRMAR" class="botao-medio texto-pequeno">
				

			</div>

			

			<div class="formulario-direita">

				<img src="../../imagens/cadastro-estabelecimento-1.svg" alt="">
			
			</div>

		</div>

		<div class="template-grid" id="formulario-cadastro">  

			<div class="formulario-esquerda">
				<input type="text" id="tipo-logradouro" name="tipo-logradouro" placeholder="Tipo Logradouro" required> 
				<input type="text" id="logradouro" name="logradouro" placeholder="Logradouro" required> 
				<input type="text" id="cidade" name="cidade" placeholder="Cidade" required> 
				<input type="text" id="numero" name="numero" placeholder="Número" required> 	</div>
	
			<div class="formulario-centro">
	
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
	
			<div>
				<input type="text" class="texto-grande" placeholder="Bairro">
			</div>

			<div>
				<input type="submit" id="confirmar" value="FINALIZAR" class="botao-medio texto-pequeno">
			</div>

			</div>
	
			<div class="formulario-direita">
				<img src="../../imagens/cadastro-estabelecimento-2.svg" alt="">
		</div>

	</form>

</body>

</html>