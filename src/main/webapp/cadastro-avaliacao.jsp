<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
	<html lang="pt">
		<head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Avaliacao</title>
        </head>
	<body>
		<form action="inserir-avaliacao" method="post">
			<label>1. Os corredores asseguram uma faixa livre de barreiras ou obstáculos, e é seguido de acordo com o fluxo de pessoas?</label>
			<input type="radio" name="resposta-1" value="1">
			<input type="radio" name="resposta-1" value="2">
			<input type="radio" name="resposta-1" value="3">
			<input type="radio" name="resposta-1" value="4">
			<input type="radio" name="resposta-1" value="5">
			
			<label>2. As portas e corredores possuem tamanho necessário para cadeirantes?</label>
			<input type="radio" name="resposta-2" value="1">
			<input type="radio" name="resposta-2" value="2">
			<input type="radio" name="resposta-2" value="3">
			<input type="radio" name="resposta-2" value="4">
			<input type="radio" name="resposta-2" value="5">
			
			<label>3. O estabelecimento possui banheiro com entrada independente para pessoas com deficiência física, de modo que pode entrar acompanhado?</label>
			<input type="radio" name="resposta-3" value="1">
			<input type="radio" name="resposta-3" value="2">
			<input type="radio" name="resposta-3" value="3">
			<input type="radio" name="resposta-3" value="4">
			<input type="radio" name="resposta-3" value="5">
			
			<label>4. O estabelecimento possui rampas?</label>
			<input type="radio" name="resposta-4" value="1">
			<input type="radio" name="resposta-4" value="2">
			<input type="radio" name="resposta-4" value="3">
			<input type="radio" name="resposta-4" value="4">
			<input type="radio" name="resposta-4" value="5">
			
			<label>5. Possui proteção contra queda ao longo das áreas de circulação?</label>
			<input type="radio" name="resposta-5" value="1">
			<input type="radio" name="resposta-5" value="2">
			<input type="radio" name="resposta-5" value="3">
			<input type="radio" name="resposta-5" value="4">
			<input type="radio" name="resposta-5" value="5">
			
			<input type="submit" value="Avaliar!"> 
		</form>
	</body>
</html>