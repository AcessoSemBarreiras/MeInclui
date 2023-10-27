<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<a href="index.jsp" class="menu-logo"><img src="" alt="logo Meinclui"></a> 
	<a href="pesquisa.jsp" class="manu-pesquisa">0-</a> 
	<a href="conquista.jsp" class="menu-conquista">()</a> 
	<a href="cadastro-estabelecimento.jsp" class="menu-estabelecimento">+</a>
	<a href="ranking.jsp" class="menu-ranking">|||</a>
	<p class="menu-usuario">
		<c:out value="${usuario.nomeDeUsuario}"/>
	</p>
	<hr>
	
	<button type="button"></button>
	
	
</header>