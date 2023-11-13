<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style><%@include file="../estilos/menu.css"%></style>
<header>
	<a href="tela-inicial" class="menu-logo"><%@include file="../imagens/logo-meinclui.svg"%></a>
	<div class="menu-caminhos">
		<a href="encontrar-estabelecimentos" class="menu-pesquisa"><%@include file="../imagens/pesquisa.svg"%></a>
		<a href="conquista.jsp" class="menu-conquista"><%@include file="../imagens/conquistas.svg"%></a>
		<a href="cadastro-estabelecimento" class="menu-estabelecimento"><%@include file="../imagens/mais.svg"%></a>
		<a href="ranking.jsp" class="menu-ranking"><%@include file="../imagens/ranque.svg"%></a>
		<c:if test="${usuario != null}">
			<a href="perfil-usuario"><c:out value="${usuario.nomeDeUsuario}"/></a>
			<a href="<%=request.getContextPath()%>/encerrar-sessao" id="menu-sair"><button>Sair</button></a>
		</c:if>
		<c:if test="${usuario == null}">
			<a href="login-usuario" class="menu-login">Entrar</a> 
		</c:if>
	</div>
	<hr>
</header>