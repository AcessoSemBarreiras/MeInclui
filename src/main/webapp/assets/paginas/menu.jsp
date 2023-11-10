<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<a href="tela-inicial" class="menu-logo"><img src="" alt="logo Meinclui"></a>
	<a href="encontrar-estabelecimentos" class="menu-pesquisa">0-</a>
	<a href="conquista.jsp" class="menu-conquista">()</a>
	<a href="cadastro-estabelecimento" class="menu-estabelecimento">+</a>
	<a href="ranking.jsp" class="menu-ranking">|||</a>
	<c:if test="${usuario != null}">
		<a href="perfil-usuario"><c:out value="${usuario.nomeDeUsuario}"/></a>
		<a href="<%=request.getContextPath()%>/encerrar-sessao" id="menu-sair"><button>Sair</button></a>
	</c:if>
	<c:if test="${usuario == null}">
		<a href="login-usuario" class="menu-login">Entrar</a> 
	</c:if>
	
	<hr>
</header>