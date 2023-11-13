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
  <title>Home</title>
</head>

<body>
  <header class="template-grid"> 
    <div class="cabecalho-geral">
      <nav>
          <img src="./assets/imagens/logo-meinclui.svg" alt="MeInclui">
      </nav>       
      <nav>
        <button class="botao-sem-borda texto-pequeno">Home</button>
        <button class="botao-sem-borda texto-pequeno">Ranking</button>
        <button class="botao-sem-borda texto-pequeno">Fale Conosco</button>
        <button class="botao-medio texto-pequeno">Acesse sua Conta</button>
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







    <div>
      <form class="">
        <div>
          <label for="pnome">Nome</label>
          <input type="text" id="pnome" name="pnome">
        </div>

        <div>
          <label for="snome">Sobrenome</label>
          <input type="text" id="snome" name="snome">
        </div>

        <div>
          <label for="email">Email</label>
          <input type="email" id="email" name="email">
        </div>

        <div>
          <label for="mensagem">Informe a Sua Mensagem</label>
          <input type="text" id="mensagem" name="mensagem">
        </div>

        <div id="button_fc">
          <input type="submit" value="ENVIAR">
        </div>
      </form>
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