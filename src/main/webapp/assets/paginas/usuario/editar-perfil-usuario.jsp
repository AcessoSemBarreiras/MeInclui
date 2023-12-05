<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Editar perfil Usuario!</title>
<style><%@include file="../../estilos/padrao.css"%></style>
<style><%@include file="../../estilos/editar-perfis.css"%></style>
</head>
<body>

		<c:if test="${usuario != null}">
			<%@ include file="../menu.jsp" %>
		</c:if>
		<form action="atualizar-usuario" method="post" enctype="multipart/form-data">
		<div id="att">
		<div class="titulo">
			<h1 class="texto-grande">Editar perfil</h1>
		</div>
		
			<div class="foto">
				<img alt="foto do usuario" src="<c:out value='${usuario.fotoUsuario.urlFoto()}' />">
				<input type="file" id="imagem" name="foto-usuario" accept="image/*">
			</div>

			<div class="editar-dados">
					<input type="hidden" value='<c:out value="${usuario.idUsuario}"/>' name="id-usuario">
					<input type="hidden" value='<c:out value="${usuario.cpf}"/>' name="cpf-usuario">
				<div id="linha1">
				<div class="editar">
					<label class="texto-pequeno">Nome Completo:</label> 
					<input type="text" name="nome-usuario" value="<c:out value='${usuario.nome}'/>">
				</div>
				<div class="editar">
					<label class="texto-pequeno">Email:</label> 
					<input type="text" name="email-usuario" value="<c:out value='${usuario.email}'/>">
				</div>
				</div>
				<div id="linha2">				
				<div class="editar">
					<label class="texto-pequeno">Nome de usuário:</label> 
					<input type="text" name="nome-de-usuario" value="<c:out value='${usuario.nomeDeUsuario}'/>">
				</div>
				<div class="editar">
					<label class="texto-pequeno">Senha:</label> 
					<input type="password" name="senha-usuario" value="<c:out value='${usuario.senha}'/>">
				</div>
				</div>
				<div id="linha3">				
				<div class="editar">
					<label class="texto-pequeno">Pronomes:</label> <select name="pronome-usuario">
						<option value="Ele/Dele"
							<c:if test="${usuario.pronome == 'Ele/Dele'}"><c:out value="selected" /></c:if>>Ele</option>
						<option value="Ela/Dela"
							<c:if test="${usuario.pronome == 'Ela/Dela'}"><c:out value="selected" /></c:if>>Ela</option>
						<option value="Elu/Delu"
							<c:if test="${usuario.pronome == 'Elu/Delu'}"><c:out value="selected" /></c:if>>Elu</option>
						<option value="qualquer"
							<c:if test="${usuario.pronome == 'qualquer'}"><c:out value="selected" /></c:if>>Qualquer
							pronome</option>
						<option value="nao-informar"
							<c:if test="${usuario.pronome == 'nao-informar'}"><c:out value="selected" /></c:if>>Não
							informar</option>
					</select>
				</div>
				<div class="editar">
					<label class="texto-pequeno">Data de nascimento:</label> 
					<input type="date" name="data-nascimento-usuario" value="<c:out value='${usuario.dataNascimento}'/>">
				</div>
			</div>
			</div>
			<div id="cancelar">
				<a href="perfil-usuario" class="texto-pequeno">CANCELAR</a>
			</div>
			<div id="atualizar">
				<button type="submit" class="texto-pequeno">ATUALIZAR</button>
			</div>
	</div>
</form>
</body>

</html>