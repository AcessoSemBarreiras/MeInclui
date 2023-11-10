<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar perfil Usuario</title>
</head>
<body>
	<main>
		<c:if test="${usuario != null}">
		<%@ include file="../menu.jsp" %>
	</c:if>

		<div class="titulo">
			<h1>Editar perfil</h1>
		</div>
		<form action="atualizar-usuario" method="post" enctype="multipart/form-data">
			<div class="att-foto">
					<input type="file" name="foto-usuario">
				</div>

			<div class="editar-dados">
					<input type="hidden" value='<c:out value="${usuario.idUsuario}"/>' name="id-usuario">
					<input type="hidden" value='<c:out value="${usuario.cpf}"/>' name="cpf-usuario">
			
				<div class="editar-1">
					<label>Nome Completo:</label> 
					<input type="text" name="nome-usuario" value="<c:out value='${usuario.nome}'/>">
				</div>
				<div class="editar-2">
					<label>Email:</label> 
					<input type="text" name="email-usuario" value="<c:out value='${usuario.email}'/>">
				</div>
				<div class="editar-3">
					<label>Nome de usuário:</label> 
					<input type="text" name="nome-de-usuario" value="<c:out value='${usuario.nomeDeUsuario}'/>">
				</div>
				<div class="editar-4">
					<label>Senha:</label> 
					<input type="text" name="senha-usuario" value="<c:out value='${usuario.senha}'/>">
				</div>
				<div class="editar-5">
					<label>Pronomes:</label> <select name="pronome-usuario">
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
				<div class="editar-6">
					<label>Data de nascimento:</label> 
					<input type="date" name="data-nascimento-usuario" value="<c:out value='${usuario.dataNascimento}'/>">
				</div>
			</div>
			<div id="button-cancelar">
				<a href="perfil-usuario">Cancelar</a>
			</div>
			<div id="button-atualizar">
				<button type="submit">Atualizar</button>
			</div>
		</form>
	</main>
</body>
</html>