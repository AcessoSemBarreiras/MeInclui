<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cadastre o Estabelecimento!</title>
</head>
<body>
    <div id="pagina">
        <div id="cabecalho">
            <h1>Cadastre o Estabelecimento</h1>
        </div>
            <form id="regForm" action="inserir-estabelecimento">
	<header>
		<a href="index.jsp" class="menu-logo"><img src="" alt="logo Meinclui"></a> 
	</header>

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
		<form action="inserir-estabelecimento" method="get" enctype="multipart/form-data">
			<div class="conteudo-cadastro">
				<input type="text" id="nome-est" name="nome-estabelecimento"
					placeholder="Nome do estabelecimento" required>

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