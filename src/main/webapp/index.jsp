<style><%@include file="assets/estilos/padrao.css"%></style>
<style><%@include file="assets/estilos/tela-inicial.css"%></style>
<style><%@include file="assets/estilos/menu.css"%></style>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
  <title>Home</title>
  
</head>

<link rel="stylesheet" href="./assets/estilos/padrao.css">
<link rel="stylesheet" href="./assets/estilos/tela-inicial.css">

<body>
  <header class="template-grid"> 
    <div class="cabecalho-geral">
  	<div id="menu-logo">
		<a href="tela-inicial"><img  width="30" height="30" src="./assets/imagens/logo-meinclui.svg"></a>
	</div>	 
    <div class="cabecalho-geral">  
      <nav>
        <a class="botao-sem-borda texto-pequeno">Comunidade e Estabelecimentos</a>
        <button class="botao-medio"><a href="login-usuario" class="texto-pequeno">Acesse sua Conta</a></button>
      </nav>
    </div> 
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
      <a href="encontrar-estabelecimentos"> <button class="botao-grande texto-pequeno " style="color: var(--branco)">Encontre lugares</button></a>
    </div>

    <div class="texto-grande">
      <h1>
        No <b style="color: var(--laranja);">MeInclui</b> você pode:
      </h1>
    </div>

    <div id="div-comunidade">
      <nav>
        <img class="foto-familia" src="./assets/imagens/familia.svg" alt="">
      </nav>
      <div class="texto-medio">
        <div class="texto-comunidade" >
          <p> 
            O <b style="color: var(--laranja);">MeInclui!</b> é feito para a <b style="color: var(--azul);">comunidade</b> e mantido pela <b style="color: var(--azul);">comunidade</b>.
          </p>
        </div>
      </div>
    </div>

  </div>

  <div class="grid-home-direita">

    <div>
      <nav>
        <img src="./assets/imagens/imagem-pcd-home-1.svg" alt="">
      </nav>
    </div>

    <div class="cards-pequenos">
    <div class="card1">
      <div class="icone"> <img class ="icone-celular" src="./assets/imagens/icone-celular.svg" alt="icone-celular"></div>
      <p class="texto-pequeno-tela-inicial">Cadastrar estabelecimentos</p>
    </div>
<div class="card1">
  <div class="icone"> <img class ="icone-celular" src="./assets/imagens/icone-coracao.svg" alt="icone-coracao"></div>
      <p class="texto-pequeno-tela-inicial">Favoritar lugares</p>
    </div>
    <div class="card1">
      <div class="icone"> <img class ="icone-celular" src="./assets/imagens/icone-mensagem.svg" alt="icone-mensagem"></div>
      <p class="texto-pequeno-tela-inicial">Comentar nos estabelecimentos</p>
    </div>
    <div class="card1">
      <div class="icone"> <img class ="icone-celular" src="./assets/imagens/icone-gostei.svg" alt="icone-gostei"></div>
      <p class="texto-pequeno-tela-inicial">Curtir comentários</p>
    </div>
    <div class="card1">
      <div class="icone"> <img class ="icone-celular" src="./assets/imagens/icone-casa.svg" alt="icone-casa"></div>
      <p class="texto-pequeno-tela-inicial">Descobrir novos lugares</p>
    </div>
    
    </div>
 
    <div class="cards-maiores">
      <div class="card-laranja">
        <img class="foto-comunidade" src="./assets/imagens/icone-comunidade.svg" alt="">
        <p class="aliados-da-comunidade">Aliados da <br>comunidade</p>
        <p class="texto-aliados-da-comunidade">O ranque de Usuários é uma forma de incentivo. Quanto mais ativo ficar, mais chance de aparecer na nossa telinha!</p>
        <img class="icone-ir-pagina" src="./assets/imagens/icone-ir-para-a-página.svg" alt="">
      </div>
      <div class="card-laranja">
        <div class="foto-comunidade">
        <img src="./assets/imagens/icone-lupa.svg" alt="">
      </div>
        <p class="aliados-da-comunidade">Estabelecimentos <br>destaques</p>
        <p class="texto-aliados-da-comunidade">Consideramos estabelecimento destaque, o lugar com mais avaliações positivas. Com essa iniciativa, facilitamos muito mais á sua busca!</p>
        <a class="icone-ir-pagina" href="encontrar-estabelecimentos"> <img src="./assets/imagens/icone-ir-para-a-página.svg" alt=""> </a>
      </div>  
    </div>
  </div>
</body>
</html>