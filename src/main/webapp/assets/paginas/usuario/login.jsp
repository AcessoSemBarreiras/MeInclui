<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <style><%@include file="../../estilos/menu.css"%></style>
</head>

<body>
	<header>
		<div id="menu-logo">
			<a href="tela-inicial"><img  width="30" height="30" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTEiIGhlaWdodD0iNDYiIHZpZXdCb3g9IjAgMCA1MSA0NiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4NCjxwYXRoIGQ9Ik0wIDIzVjQ2SDcuMzUzNTRIMTQuNzA3MUwxNC42ODcxIDM0LjY4MDFDMTQuNjY3MSAyOC40NTQxIDE0LjY3NzEgMjMuMzYwMiAxNC43MDcxIDIzLjM2MDJDMTQuNzM3MSAyMy4zNjAyIDE3LjA1ODIgMjcuMDIzNyAxOS44NTk1IDMxLjQ4OTlDMjIuOTYxIDM2LjQzOTggMjUuMDEyIDM5LjYwOTQgMjUuMTAyMSAzOS41ODg4QzI1LjE3MjEgMzkuNTc4NSAyNy41MDMyIDM1Ljk1NjIgMzAuMjg0NiAzMS41NDE0QzMzLjA1NTkgMjcuMTI2NiAzNS4zNjcgMjMuNDczNCAzNS40MjcgMjMuNDIxOUMzNS40NzcxIDIzLjM2MDIgMzUuNTE3MSAyNy41MjggMzUuNTE3MSAzNC42NTk1VjQ2SDQyLjk3MDdINTAuNDI0MlYyM1YwTDQxLjI5OTkgMC4wMjA1ODAzTDMyLjE2NTUgMC4wNTE0NTI2TDMxLjg5NTMgMC41NjU5OTRDMzEuNDg1MSAxLjM0ODEgMzEuMDI0OSAyLjg3MTE0IDMwLjg1NDggNC4wNDQyOUMzMC4zNTQ2IDcuNDA5MzkgMzEuNTI1MiAxMC45OTA2IDM0LjAwNjQgMTMuNjc2NUwzNC43MTY3IDE0LjQyNzdMMzQuMDI2NCAxNS4zMjNDMzMuMDA1OSAxNi42NTA2IDMxLjgyNTMgMTguNDEwMyAzMC45MTQ5IDE5Ljk2NDJDMjkuMjU0MSAyMi43OTQyIDI3LjE5MzEgMjcuNTE3NyAyNi4wNjI1IDMxLjA3ODNDMjUuOTEyNSAzMS41NjIgMjUuNzUyNCAzMS45OTQyIDI1LjcwMjQgMzIuMDQ1NkMyNS41OTIzIDMyLjE2OTEgMjUuNjAyMyAxOC41MjM1IDI1LjcxMjQgMTguMjM1M0MyNS43NjI0IDE4LjExMTkgMjUuODgyNCAxOC4wMDg5IDI1Ljk4MjUgMTguMDA4OUMyNi4zMTI3IDE3Ljk5ODcgMjYuOTkzIDE3LjYxNzkgMjcuNDYzMiAxNy4xNzU0QzI5LjIyNDEgMTUuNDk4IDI4Ljc4MzggMTIuNjA2MyAyNi42MTI4IDExLjUzNkMyNi4xNTI2IDExLjMwOTYgMjUuOTIyNSAxMS4yNjg1IDI1LjIxMjEgMTEuMjY4NUMyNC4yMDE2IDExLjI2ODUgMjMuNjcxNCAxMS40NzQzIDIyLjk1MSAxMi4xNjM4QzIyLjI0MDcgMTIuODMyNyAyMS45MTA1IDEzLjYyNTEgMjEuOTEwNSAxNC42NjQ0QzIxLjkxMDUgMTUuMzUzOSAyMS45NjA2IDE1LjU5MDYgMjIuMjAwNyAxNi4xMDUxQzIyLjYzMDkgMTcuMDQxNiAyMy40MzEzIDE3Ljc0MTQgMjQuMzkxNyAxNy45OTg3TDI0LjgxMTkgMTguMTIyMVYyNS4xMzAyQzI0LjgxMTkgMjguOTg5MyAyNC43ODE5IDMyLjExNzcgMjQuNzUxOSAzMi4wODY4QzI0LjcyMTkgMzIuMDU1OSAyNC41MTE4IDMxLjQ1OTEgMjQuMjcxNyAzMC43NTkzQzIzLjQxMTMgMjguMjE3NCAyMi4wODA2IDI0LjkyNDQgMjEuMDIwMSAyMi43NjMzQzE5Ljg3OTYgMjAuNDI3MyAxOC4xODg3IDE3LjY4OTkgMTYuNjE4IDE1LjYxMTJMMTUuNzI3NiAxNC40MzhMMTYuNDE3OSAxMy42NzY1QzE5Ljc1OTUgMTAuMDMzNiAyMC41ODk5IDUuMTk2ODcgMTguNjM5IDAuODEyOTczTDE4LjI3ODggMEg5LjE0NDRIMFYyM1oiIGZpbGw9IiMwMzMyNkMiLz4NCjwvc3ZnPg0K"></a>
		</div>	
	</header>

  <form action="entrar" method="get">

<!--Login-->
    <div id="l">
      <div class="titulo">
        <h1>Login</h1>
      </div>

      <div class="voltar">
        <a rel="stylesheet" href=""> voltar -> </a>
      </div>

      <div class="l-email">
        <input type="email" id="email" name="email" placeholder="E-mail" required>
      </div>

      <div class="l-senha">
        <a href="">Esqueceu sua senha?<br> </a>
        <input type="password" id="senha" name="senha" placeholder="Senha" required> 
      </div>
	
      <div class="l-entrar">
        <input type="submit" value="Entrar">
      </div>
      </div>
	</form>
      <div class="l-cadastro">
        <p>Não possui uma conta?</p>
        <a href="cadastro-usuario" id="cadastro">Cadastrar-se</a>
        </div>

      <div id="logoAcesso">
        <img src="" alt="logo" id="logo-acesso">
        <p id="texto-acesso">Acesso Sem Barreiras</p>
      </div>

      <div class="imagem-login">
        <img src="" alt="Imagem pessoas">
      </div>




<!--Esqueceu a senha-->
    <div id="es">
      <div class="es-paginacao">
        <p>1 - 2 - 3</p>
      </div>

      <div class="voltar">
        <a rel="stylesheet" href=""> voltar -> </a>
      </div>

      <div class="titulo">
        <h1>Esqueceu a Senha?</h1>
      </div>

      <div class="es-paragrafo">
        <p>
          Insira seu <b>e-mail</b> e enviaremos um código de verificação de 4
        dígitos na sua caixa de entrada.
        </p>
      </div>

      <div class="es-email">
        <input type="email" id="email" name="email-usuario" placeholder="E-mail">
      </div>

      <div class="es_botão">
        <input type="submit" value="Continuar" >
      </div>

      <div class="es_img">
        <img src="" alt="imagem senha bloqueada">
      </div>
    </div>



<!--Verificação-->
    <div id="vs">
      <div class="vs-paginacao">
        <p>1 - 2 - 3</p>
      </div>

      <div class="voltar">
        <a rel="stylesheet" href=""> voltar -> </a>
      </div>

      <div class="titulo">
        <h1>Verificação</h1>
      </div>

      <div class="vs-paragrafo">
        <p>Insira o código de verificação de 4 dígitos que enviamos para
          seu e-mail.</p>
      </div>

      <div class="vs-digitos">
        <input type="number" id="numero1" name="numero1" max="9" min="1" required> <input type="number" id="numero1"
        name="numero1" max="9" min="1" required> <input type="number" id="numero1" name="numero1" max="9" min="1"
        required> <input type="number" id="numero1" name="numero1" max="9" min="1" required>
      </div>

      <div id="vs_verificar">
        <input type="submit" value="Verificar">
      </div>

      <div class="vs-img">
        <img src="" alt="Imagem verificacao de senha">
      </div>
    </div>



<!--Redefina sua senha-->
    <div id="rs">
      <div class="rs-paginacao">
        <p>1 - 2 - 3</p>
      </div>

      <div class="voltar">
        <a rel="stylesheet" href=""> voltar -> </a>
      </div>

      <div class="titulo">
        <h1>Redefina sua senha</h1>
      </div>

      <div class="rs-redefinir">
        <input type="password" id="n_senha" nome="nova_senha" placeholder="Nova Senha" required> <br> <input
          type="password" id="cn_senha" nome="confirme_senha" placeholder="Confirme Sua Senha" required>
      </div>

      <div id="rs-botão">
        <button href="">Concluir</button>
      </div>

      <div class="rs-img">
        <img src="" alt="Imagem resetar senha">
      </div>
    </div>

  </form>
</body>