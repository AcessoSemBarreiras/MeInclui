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
		<header class="cabecalho">
			<div class="logo-me-inclui">
				<img src="" alt="logo">
			</div>
			<a href="tela-pesquisa.jsp" name="pesquisar">.</a> <a
				href="cadastro-estabelecimento.jsp" name="add-estabelecimento">.</a>
			<a href="" name="ranking">.</a> <a href="" name="perfil-usuario">.</a>
			<hr>
		</header>

		<div class="titulo">
			<h1>Editar perfil</h1>
		</div>
		<div id="foto-usuario">
			<img alt="Insira sua foto" src="">
			<button name="add-foto">.</button>
		</div>

		<div class="dados-usuario">
			<div id="email-nome-completo">
				<label>Nome Completo:</label> <input type="text" name="nome-usuario"
					placeholder="<c:out value='${usuario.nome}'/>">
			</div>
			<div id="editar-email">
				<label>Email:</label> <input type="text" name="email-usuario"
					placeholder="<c:out value='${usuario.email}'/>">
			</div>
			<div id="editar-nome-de-usuario">
				<label>Nome de usuário:</label> <input type="text"
					name="nome-de-usuario"
					placeholder="<c:out value='${usuario.nome-de-usuario}'/>">
			</div>
			<div id="editar-senha-usuario">
				<label>Senha:</label> <input type="text" name="senha-usuario"
					placeholder="<c:out value='${usuario.senha}'/>">
			</div>
			<div id="editar-pronome">
				<label>Pronomes:</label> <select name="pronome-usuario"
					placeholder="<c:out value='${usuario.pronome}'/>">
					<option value="ele">Ele</option>
					<option value="ela">Ela</option>
					<option value="elu">Elu</option>
					<option value="qualquer">Qualquer pronome</option>
					<option value="nao-informar">Não Informar</option>
				</select>
			</div>
			<div id="editar-data-nascimento">
				<label>Data de nascimento:</label> <input type="text"
					name="nome-de-usuario"
					placeholder="<c:out value='${usuario.data-nascimento}'/>">
			</div>
		</div>
		<div id="button-cancelar">
			<button>Cancelar</button>
		</div>
		<div id="button-atualizar">
			<button>Atualizar</button>
		</div>
	</main>
</body>
</html>