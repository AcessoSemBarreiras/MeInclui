<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa</title>
</head>
<body>
  <header>
    <a href="home.jsp" id="home">.</a>
    <a href="cadastroEstabelecimentoInicial.jsp" id="addEstabelecimento">.</a>
    <a href="ranking.jsp" id="ranking">.</a>
    <a href="login.jsp" id="login">Entrar</a>
  </header>

    <div class="barraPesquisa">
      <form action="/resultado_da_pesquisa.html" method="post">
        <input type="submit" value=".">
        <input type="text" id="pesquisa" name="q" placeholder="Digite sua pesquisa aqui">
    </form>
    </div>
    <div id="conteudo">
      <!-- usa os b para mudar a cor e o i tbm -->
      <h1>O Que Deseja Ver Hoje?</h1>
      <p> <b>Navegue</b> pelos <b>estabelecimentos</b> presentes no <i>MeInclui!</i> e ajude a tornar os locais mais <b>acessíveis</b> com suas <b>avaliações.</b> </p>
      <h3>Filtre sua Busca para um resultado mais agradável!</h3>
    </div>
    <div id="predio">
      <img src="" alt="imagem De um prédio">
    </div>
</body>
</html>