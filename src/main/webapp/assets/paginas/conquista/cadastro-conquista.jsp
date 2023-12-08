<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cadastrar Conquista!</title>
</head>
<body>

	<h1>Cadastre a conquista</h1>

	<form action="inserir-conquista" method="post"
		enctype="multipart/form-data">

		<input type="text" id="" name="nome" placeholder="Nome da conquista"
			required> <input type="text" id="" name="nivel"
			placeholder="Nivel da conquista" required> <input type="text"
			id="" name="reputacao" placeholder="Reputação da conquista" required>
		<div id="foto-usuario">
			<input type="file" id="imagem" name="foto-conquista" accept="image/*">
			<p>Selecione Uma Foto De Perfil</p>
		</div>
		<input type="submit" value="Finalizar">
	</form>
</body>
</html>