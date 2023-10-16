<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastre o Estabelecimento!</title>
</head>
<body>
    <div id="pagina">
        <div id="cabecalho">
            <h1>Cadastre o Estabelecimento</h1>
        </div>
            <form id="regForm" action="inserir-estabelecimento">

                <div class="indentificador">
                    <p>1 - 2</p> 
                </div>

                <div id="cadastro_estabelecimento">
                    <div id="voltar">
                        <a href="">Voltar</a>
                    </div>

                    <div class="conteudo_cadastro">
                        <input type="text" id="nome_e" name="nome" placeholder="Nome do estabelecimento" required>

                        <div id="categorias">
                        <input list="categoria" name="categoria" placeholder="Categoria">
                            <datalist id="categoria">
                                <option value="Estabelecimento Comercial">
                                <option value="Docerias">
                                <option value="Saúde">
                                <option value="Restaurantes">
                                <option value="Bar">
                            </datalist>
                        </div>

                        <div id="fotoPerfil">
                            <input type="file" id="imagem" nome="foto_perfil">
                            <p>Selecione Uma Foto De Perfil</p>    
                        </div>
                        <input type="submit" value="Continuar" id="continuar">
                    </div>

                    <div class="imgPessoa">
                        <img src="" alt="Imagem pessoa" id="imgPessoa">
                    </div>
                
                    <div class="cadastro_estabelecimento">
                        <div class="cc_texto">
                            <input type="text" id="logradouro" name="logradouro" placeholder="Logradouro" required>
                            <input type="text" id="t_logradouro" name="tipo_logradouro" placeholder="Tipo Logradouro" required>
                            <input type="text" id="cidade" name="cidade" placeholder="Cidade" required>
                            <input type="text" id="numero" name="numero" placeholder="Número" required>
                            <input type="text" id="estado" name="estado" placeholder="Estado" required>
                            <input type="text" id="bairro" name="bairro" placeholder="Bairro" required>
                            <input type="text" id="complemento" name="complemento" placeholder="Complemento" required>
                        </div>
                        <div id="finalizar_cadastro">
                            <input type="submit" value="Finalizar">
                        </div>

                        <div class="imgPessoas">
                            <img src="" alt="Imagem pessoas" id="imgPessoa2">
                        </div>

                    </div>
                </div>
            </form>
</body>
</html>