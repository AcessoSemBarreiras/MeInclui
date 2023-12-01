<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Editar perfil estabelecimento</title>
<style><%@include file="../../estilos/padrao.css"%></style>
<style><%@include file="../../estilos/editar-perfils.css"%></style>
</head>
<body>
		<c:if test="${estabelecimento != null}">
			<%@ include file="../menu.jsp" %>
		</c:if>

		
		<form action="atualizar-estabelecimento" method="post" enctype="multipart/form-data">
			<div id="att">
			<div class="titulo">
				<h1 class="texto-grande">Editar estabelecimento</h1>
			</div>
			<div class="foto">
					<img alt="Imagem estabelecimento" src="<c:out value='${estabelecimento.fotoEstabelecimento.urlFoto()}' />">
					<input type="file" id="imagem" name="foto-estabelecimento" accept="image/*">
				</div>

			<div class="editar-dados">
					<input type="hidden" value='<c:out value="${estabelecimento.idEstabelecimento}"/>' name="id-estabelecimento">
					<input type="hidden" value='<c:out value="${endereco.idEndereco}"/>' name="id-endereco">
				<div id="linha1">
				<div class="editar">
					<label class="texto-pequeno">Nome do Estabelecimento:</label> 
					<input type="text" name="nome-estabelecimento" value="<c:out value='${estabelecimento.nome}'/>">
				</div>
			
				<div class="editar">
					<label class="texto-pequeno">Categoria:</label> 
					<select name="categoria-estabelecimento">
						<option value="Bar"
							<c:if test="${estabelecimento.categoria == 'Bar'}"><c:out value="selected" /></c:if>>Bar</option>
						<option value="Comercial"
							<c:if test="${estabelecimento.categoria == 'Comercial'}"><c:out value="selected" /></c:if>>Estabelecimento Comercial</option>
						<option value="Doceria"
							<c:if test="${estabelecimento.categoria == 'Doceria'}"><c:out value="selected" /></c:if>>Doceria</option>
						<option value="Saude"
						<c:if test="${estabelecimento.categoria == 'Saude'}"><c:out value="selected" /></c:if>>Saúde</option>
						<option value="Restaurante"
						<c:if test="${estabelecimento.categoria == 'Restaurante'}"><c:out value="selected" /></c:if>>Restaurante</option>
					</select>
				</div>
				</div>
				<div id="linha2">
				<div class="editar">
					<label class="texto-pequeno">Estado:</label> 
					<select id="estado" name="estado" required>
    					<option value="AC" <c:if test="${endereco.estado == 'AC'}"><c:out value="selected" /></c:if>>Acre</option>
    					<option value="AL" <c:if test="${endereco.estado == 'AL'}"><c:out value="selected" /></c:if>>Alagoas</option>
    					<option value="AP" <c:if test="${endereco.estado == 'AP'}"><c:out value="selected" /></c:if>>Amapá</option>
    					<option value="AM" <c:if test="${endereco.estado == 'AM'}"><c:out value="selected" /></c:if>>Amazonas</option>
    					<option value="BA" <c:if test="${endereco.estado == 'BA'}"><c:out value="selected" /></c:if>>Bahia</option>
    					<option value="CE" <c:if test="${endereco.estado == 'CE'}"><c:out value="selected" /></c:if>>Ceará</option>
    					<option value="DF" <c:if test="${endereco.estado == 'DF'}"><c:out value="selected" /></c:if>>Distrito Federal</option>
    					<option value="ES" <c:if test="${endereco.estado == 'ES'}"><c:out value="selected" /></c:if>>Espírito Santo</option>
    					<option value="GO" <c:if test="${endereco.estado == 'GO'}"><c:out value="selected" /></c:if>>Goiás</option>
    					<option value="MA" <c:if test="${endereco.estado == 'MA'}"><c:out value="selected" /></c:if>>Maranhão</option>
    					<option value="MT" <c:if test="${endereco.estado == 'MT'}"><c:out value="selected" /></c:if>>Mato Grosso</option>
    					<option value="MS" <c:if test="${endereco.estado == 'MS'}"><c:out value="selected" /></c:if>>Mato Grosso do Sul</option>
    					<option value="MG" <c:if test="${endereco.estado == 'MG'}"><c:out value="selected" /></c:if>>Minas Gerais</option>
    					<option value="PA" <c:if test="${endereco.estado == 'PA'}"><c:out value="selected" /></c:if>>Pará</option>
    					<option value="PB" <c:if test="${endereco.estado == 'PB'}"><c:out value="selected" /></c:if>>Paraíba</option>
    					<option value="PR" <c:if test="${endereco.estado == 'PR'}"><c:out value="selected" /></c:if>>Paraná</option>
    					<option value="PE" <c:if test="${endereco.estado == 'PE'}"><c:out value="selected" /></c:if>>Pernambuco</option>
    					<option value="PI" <c:if test="${endereco.estado == 'PI'}"><c:out value="selected" /></c:if>>Piauí</option>
    					<option value="RJ" <c:if test="${endereco.estado == 'RJ'}"><c:out value="selected" /></c:if>>Rio de Janeiro</option>
    					<option value="RN" <c:if test="${endereco.estado == 'RN'}"><c:out value="selected" /></c:if>>Rio Grande do Norte</option>
    					<option value="RS" <c:if test="${endereco.estado == 'RS'}"><c:out value="selected" /></c:if>>Rio Grande do Sul</option>
    					<option value="RO" <c:if test="${endereco.estado == 'RO'}"><c:out value="selected" /></c:if>>Rondônia</option>
    					<option value="RR" <c:if test="${endereco.estado == 'RR'}"><c:out value="selected" /></c:if>>Roraima</option>
    					<option value="SC" <c:if test="${endereco.estado == 'SC'}"><c:out value="selected" /></c:if>>Santa Catarina</option>
    					<option value="SP" <c:if test="${endereco.estado == 'SP'}"><c:out value="selected" /></c:if>>São Paulo</option>
    					<option value="SE" <c:if test="${endereco.estado == 'SE'}"><c:out value="selected" /></c:if>>Sergipe</option>
    					<option value="TO" <c:if test="${endereco.estado == 'TO'}"><c:out value="selected" /></c:if>>Tocantins</option>
				</select>
				</div>
				<div class="editar">
					<label class="texto-pequeno">Cidade:</label> 
					<input type="text" name="cidade" value="<c:out value='${endereco.cidade}'/>">
				</div>
				</div>
				<div id="linha3">
				<div class="editar">
					<label class="texto-pequeno">Bairro:</label> 
					<input type="text" name="bairro" value="<c:out value='${endereco.bairro}'/>">
				</div>
				<div class="editar">
					<label class="texto-pequeno">Logradouro:</label> 
					<input type="text" name="logradouro" value="<c:out value='${endereco.logradouro}'/>">
				</div>
			</div>
			</div>
			<div id="cancelar">
				<a href="perfil-estabelecimento">Cancelar</a>
			</div>
			<div id="atualizar">
				<button type="submit">Atualizar</button>
			</div>
		</div>
		</form>
		
</body>
</html>