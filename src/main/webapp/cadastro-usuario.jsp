<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
    <html lang="pt">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Cadastre-se!</title>
        </head>
        <body>
            <div id="Pagina">
                <div id="cadastrar-se">
                    <h1>Cadastrar-se</h1>
                </div>
                <div id="cadastro-usuario">
                    <form action="inserir-usuario">
                        <div id="conteudo-cadastro">
                            <div id="voltar">
                                <a href="">Voltar</a>
                            </div>

                            <div class="conteudo-nome-completo">
                                <input type="text" id="nome-completo" name="nome-usuario" placeholder="Nome Completo" required>
                            </div>

                            <div class="conteudo-nome-usuario">
                                <input type="text" id="nusuario" name="nome-de-usuario" placeholder="Nome de Usuário"required>
                            </div>

                            <div class="conteudo-cpf-usuario">
                                <input type="text" id="cpf" name="cpf-usuario" placeholder="CPF" required minlength="14" maxlength="14">
                            </div>

                            <div class="conteudo-email-usuario">
                                <input type="email" id="email" name="email-usuario" placeholder="E-mail" required>
                            </div>

                            <div class="pronome-usuario">
                                <select name="pronome-usuario" id="pronome-usuario" placeholder="E-mail">
                                    <option value="" selected>Pronomes</option>
                                    <option value="ele">Ele</option>
                                    <option value="ela">Ela</option>
                                    <option value="elu">Elu</option>
                                    <option value="qualquer">Qualquer pronome</option>
                                    <option value="nao-informar">Não Informar</option>
                                </select>
                            </div>

                            <div class="ddn-usuario">
                                <input type="date" id="data_de_nascimento_usuario" name="data-nascimento-usuario" placeholder="Data de Nascimento" required min="1900-01-01">
                            </div>

                            <div class="senha-usuario">
                                <input type="password" id="senha" name="senha-usuario" placeholder="Digite uma senha" required>
                            </div>

                            <div class="confirmar-senha-usuario">
                                <input type="password" id="confirma_senha" placeholder="Confirme sua senha" required>
                            </div>

                            <div class="termos-uso">
                                <input type="checkbox" id="termos-uso" value="termos"> Li e Aceito os <a href="">Termos</a>
                            </div>

                            <div class="confirmar">
                                <input type="submit" id="confirmar" value="Confirmar">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </body>
    </html>