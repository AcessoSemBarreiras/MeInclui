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
		<%@ include file="../menuLogado.jsp" %>
	</c:if>

		<div class="titulo">
			<h1>Editar perfil</h1>
		</div>
		<form action="atualizar-usuario" method="get" enctype="multipart/form-data">
			<div class="insira-foto">
					<input type="file" name="foto-usuario">
				</div>

			<div class="dados-usuario">
				<div id="email-nome-completo">

					<input type="hidden" value='<c:out value="${usuario.idUsuario}"/>' name="id-usuario">
					<input type="hidden" value='<c:out value="${usuario.cpf}"/>' name="cpf-usuario">
			
					<label>Nome Completo:</label> <input type="text"
						name="nome-usuario" value="<c:out value='${usuario.nome}'/>">
				</div>
				<div id="editar-email">
					<label>Email:</label> <input type="text" name="email-usuario"
						value="<c:out value='${usuario.email}'/>">
				</div>
				<div id="editar-nome-de-usuario">
					<label>Nome de usuário:</label> <input type="text"
						name="nome-de-usuario"
						value="<c:out value='${usuario.nomeDeUsuario}'/>">
				</div>
				<div id="editar-senha-usuario">
					<label>Senha:</label> <input type="text" name="senha-usuario"
						value="<c:out value='${usuario.senha}'/>">
				</div>
				<div id="editar-pronome">
					<label>Pronomes:</label> <select name="pronome-usuario">
						<option value="ele"
							<c:if test="${usuario.pronome == 'ele'}"><c:out value="selected" /></c:if>>Ele</option>
						<option value="ela"
							<c:if test="${usuario.pronome == 'ela'}"><c:out value="selected" /></c:if>>Ela</option>
						<option value="elu"
							<c:if test="${usuario.pronome == 'elu'}"><c:out value="selected" /></c:if>>Elu</option>
						<option value="qualquer"
							<c:if test="${usuario.pronome == 'qualquer'}"><c:out value="selected" /></c:if>>Qualquer
							pronome</option>
						<option value="nao-informar"
							<c:if test="${usuario.pronome == 'nao-informar'}"><c:out value="selected" /></c:if>>Não
							informar</option>
					</select>
				</div>
				<div id="editar-data-nascimento">
					<label>Data de nascimento:</label> <input type="date"
						name="data-nascimento-usuario"
						value="<c:out value='${usuario.dataNascimento}'/>">
				</div>
			</div>
			<div id="button-cancelar">
				<button>Cancelar</button>
			</div>
			<div id="button-atualizar">
				<button type="submit">Atualizar</button>
			</div>
		</form>
	</main>
</body>
</html>