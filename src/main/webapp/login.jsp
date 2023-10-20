<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Login</title>
</head>

<body>

  <header class="logo-me-inclui">
    <img src="" alt="logo">
  </header>

  <form id="form-login">

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
        <a href="">Esqueceu sua senha?<br> <input type="password" id="senha" name="senha" placeholder="Senha" required> </a>
      </div>

      <div class="l-entrar">
        <input type="submit" value="Entrar">
      </div>

      <div class="l-cadastro">
        <p>N�o possui uma conta?</p>
        <a href="" id="cadastro">Cadastrar-se</a>
        </div>

      <div id="logoAcesso">
        <img src="" alt="logo" id="logo-acesso">
        <p id="texto-acesso">Acesso Sem Barreiras</p>
      </div>

      <div class="imagem-login">
        <img src="" alt="Imagem pessoas">
      </div>
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
          Insira seu <b>e-mail</b> e enviaremos um c�digo de verifica��o de 4
        d�gitos na sua caixa de entrada.
        </p>
      </div>

      <div class="es-email">
        <input type="email" id="email" name="email-usuario" placeholder="E-mail">
      </div>

      <div class="es_bot�o">
        <input type="submit" value="Continuar" >
      </div>

      <div class="es_img">
        <img src="" alt="imagem senha bloqueada">
      </div>
    </div>



<!--Verifica��o-->
    <div id="vs">
      <div class="vs-paginacao">
        <p>1 - 2 - 3</p>
      </div>

      <div class="voltar">
        <a rel="stylesheet" href=""> voltar -> </a>
      </div>

      <div class="titulo">
        <h1>Verifica��o</h1>
      </div>

      <div class="vs-paragrafo">
        <p>Insira o c�digo de verifica��o de 4 d�gitos que enviamos para
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

      <div id="rs-bot�o">
        <button href="">Concluir</button>
      </div>

      <div class="rs-img">
        <img src="" alt="Imagem resetar senha">
      </div>
    </div>

  </form>
</body>