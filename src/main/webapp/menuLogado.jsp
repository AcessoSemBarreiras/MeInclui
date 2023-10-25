<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<header class="cabecalho-pu">
			<div class="logo-me-inclui">
				<a href="index.jsp"><img></a>
			</div>
			<a href="tela-pesquisa.jsp" name="pesquisar">.</a> <a
				href="cadastro-estabelecimento.jsp" name="add-estabelecimento">.</a>
			<a href="" name="ranking">.</a> 
			<p name="perfil-usuario"><c:out value="${usuario.nome}"/></p>
		</header>