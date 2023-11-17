<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style><%@include file="assets/estilos/padrao.css"%></style>
  <style><%@include file="assets/estilos/tela-inicial.css"%></style>
  <style><%@include file="assets/estilos/menu.css"%></style>
  <title>Home</title>
</head>

<body>
  <header class="template-grid"> 
  	<div id="menu-logo">
		<a href="tela-inicial"><img  width="30" height="30" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTEiIGhlaWdodD0iNDYiIHZpZXdCb3g9IjAgMCA1MSA0NiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4NCjxwYXRoIGQ9Ik0wIDIzVjQ2SDcuMzUzNTRIMTQuNzA3MUwxNC42ODcxIDM0LjY4MDFDMTQuNjY3MSAyOC40NTQxIDE0LjY3NzEgMjMuMzYwMiAxNC43MDcxIDIzLjM2MDJDMTQuNzM3MSAyMy4zNjAyIDE3LjA1ODIgMjcuMDIzNyAxOS44NTk1IDMxLjQ4OTlDMjIuOTYxIDM2LjQzOTggMjUuMDEyIDM5LjYwOTQgMjUuMTAyMSAzOS41ODg4QzI1LjE3MjEgMzkuNTc4NSAyNy41MDMyIDM1Ljk1NjIgMzAuMjg0NiAzMS41NDE0QzMzLjA1NTkgMjcuMTI2NiAzNS4zNjcgMjMuNDczNCAzNS40MjcgMjMuNDIxOUMzNS40NzcxIDIzLjM2MDIgMzUuNTE3MSAyNy41MjggMzUuNTE3MSAzNC42NTk1VjQ2SDQyLjk3MDdINTAuNDI0MlYyM1YwTDQxLjI5OTkgMC4wMjA1ODAzTDMyLjE2NTUgMC4wNTE0NTI2TDMxLjg5NTMgMC41NjU5OTRDMzEuNDg1MSAxLjM0ODEgMzEuMDI0OSAyLjg3MTE0IDMwLjg1NDggNC4wNDQyOUMzMC4zNTQ2IDcuNDA5MzkgMzEuNTI1MiAxMC45OTA2IDM0LjAwNjQgMTMuNjc2NUwzNC43MTY3IDE0LjQyNzdMMzQuMDI2NCAxNS4zMjNDMzMuMDA1OSAxNi42NTA2IDMxLjgyNTMgMTguNDEwMyAzMC45MTQ5IDE5Ljk2NDJDMjkuMjU0MSAyMi43OTQyIDI3LjE5MzEgMjcuNTE3NyAyNi4wNjI1IDMxLjA3ODNDMjUuOTEyNSAzMS41NjIgMjUuNzUyNCAzMS45OTQyIDI1LjcwMjQgMzIuMDQ1NkMyNS41OTIzIDMyLjE2OTEgMjUuNjAyMyAxOC41MjM1IDI1LjcxMjQgMTguMjM1M0MyNS43NjI0IDE4LjExMTkgMjUuODgyNCAxOC4wMDg5IDI1Ljk4MjUgMTguMDA4OUMyNi4zMTI3IDE3Ljk5ODcgMjYuOTkzIDE3LjYxNzkgMjcuNDYzMiAxNy4xNzU0QzI5LjIyNDEgMTUuNDk4IDI4Ljc4MzggMTIuNjA2MyAyNi42MTI4IDExLjUzNkMyNi4xNTI2IDExLjMwOTYgMjUuOTIyNSAxMS4yNjg1IDI1LjIxMjEgMTEuMjY4NUMyNC4yMDE2IDExLjI2ODUgMjMuNjcxNCAxMS40NzQzIDIyLjk1MSAxMi4xNjM4QzIyLjI0MDcgMTIuODMyNyAyMS45MTA1IDEzLjYyNTEgMjEuOTEwNSAxNC42NjQ0QzIxLjkxMDUgMTUuMzUzOSAyMS45NjA2IDE1LjU5MDYgMjIuMjAwNyAxNi4xMDUxQzIyLjYzMDkgMTcuMDQxNiAyMy40MzEzIDE3Ljc0MTQgMjQuMzkxNyAxNy45OTg3TDI0LjgxMTkgMTguMTIyMVYyNS4xMzAyQzI0LjgxMTkgMjguOTg5MyAyNC43ODE5IDMyLjExNzcgMjQuNzUxOSAzMi4wODY4QzI0LjcyMTkgMzIuMDU1OSAyNC41MTE4IDMxLjQ1OTEgMjQuMjcxNyAzMC43NTkzQzIzLjQxMTMgMjguMjE3NCAyMi4wODA2IDI0LjkyNDQgMjEuMDIwMSAyMi43NjMzQzE5Ljg3OTYgMjAuNDI3MyAxOC4xODg3IDE3LjY4OTkgMTYuNjE4IDE1LjYxMTJMMTUuNzI3NiAxNC40MzhMMTYuNDE3OSAxMy42NzY1QzE5Ljc1OTUgMTAuMDMzNiAyMC41ODk5IDUuMTk2ODcgMTguNjM5IDAuODEyOTczTDE4LjI3ODggMEg5LjE0NDRIMFYyM1oiIGZpbGw9IiMwMzMyNkMiLz4NCjwvc3ZnPg0K"></a>
	</div>	 
    <div class="cabecalho-geral">  
      <nav>
        <a href="tela-inicial" class="botao-sem-borda texto-pequeno">Home</a>
        <a class="botao-sem-borda texto-pequeno" href="ranking">Ranking</a>
        <a class="botao-sem-borda texto-pequeno" href="">Fale Conosco</a>
        <button class="botao-medio"><a href="login-usuario" class="texto-pequeno">Acesse sua Conta</a></button>
      </nav>
    </div> 
  </header>

<div class="template-grid">

  <div class="grid-home-esquerda">
    <div class="texto-grande">
      <h1> Buscar estabelecimentos acessíveis é mais fácil com o <b style="color: var(--laranja);">MeInclui!</b> </h1>
    </div>

    <div class="texto-medio">
      <p> 
        Com uma plataforma simples e intuitiva é possível localizar estabelecimentos próximos a sua residência
        rapidamente. 
      </p>
      <p> 
        Que tal conhecer agora mesmo? 
      </p>
    </div>

    <div>
      <button class="botao-grande texto-pequeno "> 
        Encontre lugares 
      </button>
    </div>

    <div class="texto-grande">
      <h1>
        No <b style="color: var(--laranja);">MeInclui</b> você pode:
      </h1>
    </div>

    <div class="texto-medio">
      <p> 
        Conheça nossos <b style="color: var(--laranja);">usuários</b> e <b style="color: var(--azul);">estabelecimentos</b> destaques 
      </p>
    </div>

    <div class="texto-grande">
      <h1 style="color: var(--laranja);">
          Fale conosco!
      </h1>
    </div>

    <div class="texto-grande">
      <h1>
        Somos a <b style="color: var(--azul);">porta aberta da comunicação,</b> conectando-se através do seu <b style="color: var(--laranja);">Feedback.</b> Preencha o formulário ao lado ou
        nos envie um e-mail!
      </h1>
    </div>

  </div>



  <div class="grid-home-direita">

    <div>
      <nav>
        <img src="./assets/imagens/imagem-pcd-home-1.svg" alt="">
      </nav>
    </div>

  </div>
</div>





































  <div id="home-corpo">

    <div id="ranking">
      <div class="home-ranking-titulo">
        <h3> Conheça nossos <b>usuários</b> e <i>estabelecimentos</i> destaques </h3>
      </div>

      <div id="home-ranking-cards">
        <div class="home-ranking-card">
          <h3> Usuários Destaque </h3>
          <p>O ranking de Usuário destaque é uma forma de incentivo. Quanto mais ativo ficar, mais chance de aparecer na
            nossa telinha!</p>
          <a href="">Ir para a página -></a>
        </div>

        <div class="home-ranking-card">
          <h3> Estabelecimentos Destaques </h3>
          <p>Consideramos estabelecimento destaque, o lugar com mais avaliações positivas. Com essa iniciativa,
            facilitamos muito mais á sua busca! </p>
          <a href="">Ir para a página -></a>
        </div>
      </div>

      <div id="home-frase-d-efeito">
        <h2>O <b>MeInclui!</b> é feito para a <i>comunidade</i> e mantido pela <i>comunidade</i>.</h2>
      </div>
    </div>

    <div id="fale_conosco">
      <div id="titulo_fc">
        <h2>Fale Conosco!</h2>
      </div>

      <div class="paragrafo">
        <p>Somos a porta da comunicação aberta, conectando-se através do seu Feedback. Preencha o formulário ao lado ou
          nos envie um e-mail!</p>
      </div>

      <div id="conteudo_fc">
        <form>
          <div class="informacao">
            <label for="pnome">Nome</label>
            <input type="text" id="pnome" name="pnome">
          </div>

          <div class="informacao">
            <label for="snome">Sobrenome</label>
            <input type="text" id="snome" name="snome">
          </div>

          <div class="informacao">
            <label for="email">Email</label>
            <input type="email" id="email" name="email">
          </div>

          <div class="informacao">
            <label for="mensagem">Informe a Sua Mensagem</label>
            <input type="text" id="mensagem" name="mensagem">
          </div>

          <div id="button_fc">
            <input type="submit" value="ENVIAR">
          </div>
        </form>
      </div>
    </div>

    <div id="home-contato">
      <h2>NOSSO E-MAIL</h2>
      <p>acessosembarreira@gmail.com</p>

      <h2>NOS VISITE</h2>
      <p>Av. Brasil, 610 - Ponta Aguda, Blumenau - SC, 89050-000</p>
    </div>
  </div>

  <footer>
    <p>MeInclui!© 2023 - Todos os direitos reservados.</p>
    <div id="home-fotter-links">
      <a href="" name="home-email">.</a>
      <a href="" name="home-github">.</a>
      <a href="" name="home-insta">.</a>
    </div>
  </footer>

</body>
</html>