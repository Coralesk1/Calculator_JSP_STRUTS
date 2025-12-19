<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Meu Primeiro JSP</title>
    <link rel="stylesheet" type="text/css" href="css/Style.css">
</head>
<body>
    <h1>Calculadora</h1>


    <label for="number1:">Number:</label>
    <input type="number" id="number1" name="number1"></input>

    <label for="number2:">Number:</label>
    <input type="number" id="number2" name="number2"></input>

    <label for="number2:">Escolha a operação:</label>

    <select id="opcao" name="opcao">
        <option value="">Selecione...</option>
        <option value="1">Soma</option>
        <option value="2">Subtração</option>
        <option value="3">Multiplicação</option>
        <option value="3">Divisão</option>
        
    </select>

    <button>Calcular</button>
</body>
</html>