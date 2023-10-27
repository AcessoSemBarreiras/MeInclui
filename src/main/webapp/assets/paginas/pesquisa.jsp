<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa</title>
</head>
<body>
  	<c:if test="${usuario != null}">
		<%@ include file="menuLogado.jsp" %>
	</c:if>
	
	<c:if test="${usuario == null}">
		<%@ include file="menuNaoLogado.jsp" %>
	</c:if>

    <div class="barraPesquisa">
      <form action="/resultado_da_pesquisa.html" method="post">
        <input type="submit" value=".">
        <input type="text" id="pesquisa" name="q" placeholder="Digite sua pesquisa aqui">
    </form>
    </div>
    <div id="conteudo">
      <h1>O Que Deseja Ver Hoje?</h1>
      <p> <b>Navegue</b> pelos <b>estabelecimentos</b> presentes no <i>MeInclui!</i> e ajude a tornar os locais mais <b>acessíveis</b> com suas <b>avaliações.</b> </p>
      <h3>Filtre sua Busca para um resultado mais agradável!</h3>
    </div>
    <div id="predio">
      <img src="" alt="imagem De um prédio">
    </div>
</body>
</html>