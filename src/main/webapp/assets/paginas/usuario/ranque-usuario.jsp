<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>Ranque de usuario!</title>
<style><%@include file="../../estilos/padrao.css"%></style>
<style><%@include file="../../estilos/ranque.css"%></style>
</head>
<body>
	<%@ include file="../menu.jsp"%>
	
	<div class="temp-grid tela">
	<div class="cabecalho conteudo">
		<div class="texto-grande titulo">
			<h3>Aliados da Comunidade</h3>
		</div>
		
		
		<div class="filtros-ranque">
			<a href="comunidade-geral" class="texto-medio navegacao<c:if test="${pagina == 1}"><c:out value=" atual"></c:out></c:if>">Geral</a>
			<a href="comunidade-anual" class="texto-medio navegacao<c:if test="${pagina == 2}"><c:out value=" atual"></c:out></c:if>">Anual</a>
			<a href="comunidade-mensal" class="texto-medio navegacao<c:if test="${pagina == 3}"><c:out value=" atual"></c:out></c:if>">Mensal</a>
			<a href="comunidade-semanal" class="texto-medio navegacao<c:if test="${pagina == 4}"><c:out value=" atual"></c:out></c:if>">Semanal</a>
			<a href="comunidade-diaria" class="texto-medio 	navegacao<c:if test="${pagina == 5}"><c:out value=" atual"></c:out></c:if>">Diário</a>
		</div>
	</div>

	<div class="conteudo informativo">
		<p class="texto-medio" style="color: var(--laranja)">Seja você também um destaque!</p>
		<p class="texto-pequeno texto-complementar">Nosso ranking de usuários destaques está a todo vapor. A nossa métrica para definir um destaque é de acordo com as atividades desenvolvidas pelo usuário dentro da nossa plataforma. Cada atividade listada abaixo gera uma pontuação que a somatória pode te levar ao top 10. São elas: </p>
		<p class="texto-pequeno texto-complementar">Fazer comentários;</p>
		<p class="texto-pequeno texto-complementar">Avaliar estabelecimentos;</p>
		<p class="texto-pequeno texto-complementar">Cadastrar estabelecimentos;</p>
		<p class="texto-pequeno texto-complementar">Número de curtidas recebidas</p>
	<div class="linha">
		<img class="estrela" alt="Estrela" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTIiIGhlaWdodD0iNDEiIHZpZXdCb3g9IjAgMCA1MiA0MSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMzLjQzMTIgNC44OTU4OEw1MSA0Ljg5NTg4TTMzLjQzMTIgMzYuMTA0MUg1MU00NS45ODAzIDIwLjVINTFNMzUuNjY0OSAyMy44ODA5TDI5LjAzOSAyNy4zMTM4QzI4LjEzNTQgMjcuNzgxOSAyNy4yMzE5IDI5LjAzMDMgMjcuMDgxMyAzMC4wNzA1TDI2LjA3NzQgMzYuMjg2MkMyNS40MjQ4IDQwLjI2NTIgMjIuNjY0IDQxLjIwMTUgMTkuOTAzMiAzOC4zNDA3TDE1LjIzNDkgMzMuNTAzNEMxNC40NTY5IDMyLjY5NzIgMTIuOTI1OSAzMi4yMjkxIDExLjgyMTUgMzIuNDg5Mkw2LjAyMzgyIDMzLjg2NzVDMS40NTU5MiAzNC45NTk4IC0wLjMyNjA1NiAzMi40MzcyIDIuMDU4MjggMjguMjVMNS4zOTYzNiAyMi40MjQ1QzUuOTk4NzIgMjEuMzU4MiA1Ljk5ODcyIDE5LjY0MTggNS4zOTYzNiAxOC41NzU1TDIuMDU4MjggMTIuNzVDLTAuMzI2MDU2IDguNTYyODUgMS40NTU5MiA2LjA0MDE4IDYuMDIzODIgNy4xMzI0N0wxMS44MjE1IDguNTEwODRDMTIuOTAwOCA4Ljc3MDkgMTQuNDMxOCA4LjMwMjc4IDE1LjIzNDkgNy40OTY1N0wxOS45MDMyIDIuNjU5MjlDMjIuNjY0IC0wLjIwMTQ2NSAyNS40NDk5IDAuNzM0NzgzIDI2LjA3NzQgNC43MTM4M0wyNy4wODEzIDEwLjkyOTVDMjcuMjU3IDExLjk2OTcgMjguMTM1NCAxMy4yMTgxIDI5LjAzOSAxMy42ODYyTDM1LjY2NDkgMTcuMTE5MUMzOS4yNTQgMTguOTY1NiAzOS4yNTQgMjIuMDM0NCAzNS42NjQ5IDIzLjg4MDlaIiBzdHJva2U9IiNGRjc4MUMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==">
		<hr class="linha-laranja">
		<img class="estrela" alt="Estrela" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTMiIGhlaWdodD0iNDIiIHZpZXdCb3g9IjAgMCA1MyA0MiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE5LjA2NzggMzYuNjA0MUgxLjQ5OTAyTTE5LjA2NzggNS4zOTU4OEgxLjQ5OTAyTTYuNTE4NjkgMjFIMS40OTkwMk0xNi44MzQxIDE3LjYxOTFMMjMuNDYgMTQuMTg2MkMyNC4zNjM2IDEzLjcxODEgMjUuMjY3MSAxMi40Njk3IDI1LjQxNzcgMTEuNDI5NUwyNi40MjE3IDUuMjEzODNDMjcuMDc0MiAxLjIzNDc4IDI5LjgzNSAwLjI5ODUzMSAzMi41OTU4IDMuMTU5MjlMMzcuMjY0MSA3Ljk5NjU3QzM4LjA0MjIgOC44MDI3OCAzOS41NzMyIDkuMjcwOSA0MC42Nzc1IDkuMDEwODNMNDYuNDc1MiA3LjYzMjQ3QzUxLjA0MzEgNi41NDAxOCA1Mi44MjUxIDkuMDYyODUgNTAuNDQwNyAxMy4yNUw0Ny4xMDI3IDE5LjA3NTVDNDYuNTAwMyAyMC4xNDE4IDQ2LjUwMDMgMjEuODU4MiA0Ny4xMDI3IDIyLjkyNDVMNTAuNDQwNyAyOC43NUM1Mi44MjUxIDMyLjkzNzIgNTEuMDQzMSAzNS40NTk4IDQ2LjQ3NTIgMzQuMzY3NUw0MC42Nzc1IDMyLjk4OTJDMzkuNTk4MyAzMi43MjkxIDM4LjA2NzMgMzMuMTk3MiAzNy4yNjQxIDM0LjAwMzRMMzIuNTk1OCAzOC44NDA3QzI5LjgzNSA0MS43MDE1IDI3LjA0OTEgNDAuNzY1MiAyNi40MjE3IDM2Ljc4NjJMMjUuNDE3NyAzMC41NzA1QzI1LjI0MiAyOS41MzAzIDI0LjM2MzYgMjguMjgxOSAyMy40NiAyNy44MTM4TDE2LjgzNDEgMjQuMzgwOUMxMy4yNDUgMjIuNTM0NCAxMy4yNDUgMTkuNDY1NiAxNi44MzQxIDE3LjYxOTFaIiBzdHJva2U9IiNGRjc4MUMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==">
	</div>
	</div>
				<div class="cards-ranque conteudo">
		
<c:set var="top3Usuarios" value="${comunidade.subList(0, 3)}" />
<c:set var="outrosUsuarios" value="${comunidade.subList(3, comunidade.size())}" />	

<div class="cards-ranque conteudo">
    <c:forEach var="cm" items="${top3Usuarios}" varStatus="posicao">
        <c:if test="${posicao.index <= 2}">
            <div class="card-usuario">
                <div class="card-sup">
                    <img class="foto-usuario" alt="" src='<c:out value="${cm.get('usuario').fotoUsuario.urlFoto() }"/>'>
                </div>
                <div class="card-inf">
                    <div class="linha-um">
                        <p class="texto-medio nome-usuario"><c:out value="${cm.get('usuario').nomeDeUsuario }"/></p>
                        <p class="texto-grande posicao-usuario">#<c:out value="${posicao.count}"/></p>
                    </div>
                    <p class="texto-pequeno pontuacao-usuario"><c:out value="${cm.get('soma')}"/> pontos</p>
                    <div class="linha">
                        <hr class="linha-cinza">
                    </div>
                    <p class="texto-secundario">Conquistas</p>
                </div>
            </div>
        </c:if>
    </c:forEach>
</div>
</div>
<div class="outros-destaques conteudo">
	<div class="div-titulo-outros">
	    <p class="texto-grande titulo-outros">Outros Destaques</p>
	</div>
    <div id="outros">
        <div class="div-tabela-outros">
            <table class="tabela-outros">
                <tr class="linha-tabela">
                    <th class="cabecalho-tabela-posicao texto-grande">#</th>
                    <th class="cabecalho-tabela texto-grande">Nome</th>
                    <th class="cabecalho-tabela texto-grande">Pontos</th>
                    <th class="cabecalho-tabela texto-grande">Conquistas</th>                  
                </tr>
                <c:forEach var="cm" items="${outrosUsuarios}" varStatus="posicaoOutros">
                    <tr class="linha-tabela">
                        <td class="coluna-tabela-posicao texto-grande">#<c:out value="${posicaoOutros.count + 3}"/></td>
	                    <td class="coluna-tabela texto-grande"><img class="img-usuario-tabela" src="<c:out value="${cm.get('usuario').fotoUsuario.urlFoto()}"/>"><p><c:out value="${cm.get('usuario').nomeDeUsuario}" /></p></td>
                        <td class="coluna-tabela texto-grande"><c:out value="${cm.get('soma')}"/></td>
                        <td class="coluna-tabela texto-grande">.</td>
                    </tr>
                </c:forEach>
            </table>
        </div>        
    </div>
</div>
		</div>
		<%@ include file="../rodape.jsp"%>
</body>
</html>