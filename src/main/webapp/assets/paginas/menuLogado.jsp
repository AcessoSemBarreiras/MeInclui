<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<a href="tela-inicial" class="menu-logo"><img src="" alt="logo Meinclui"></a>
	<a href="encontrar-estabelecimentos" class="manu-pesquisa">0-</a>
	<a href="conquista.jsp" class="menu-conquista">()</a>
	<a href="cadastro-estabelecimento" class="menu-estabelecimento">+</a>
	<a href="ranking.jsp" class="menu-ranking">|||</a>
	<c:out value="${usuario.nomeDeUsuario}" />
	<a href="<%=request.getContextPath()%>/encerrar-sessao" id="menu-sair"><button>Sair</button></a>
	<hr>
</header>