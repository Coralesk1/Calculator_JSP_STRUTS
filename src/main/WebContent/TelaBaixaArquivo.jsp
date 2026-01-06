<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- No Struts 1, usamos as taglibs html e bean --%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>

<%-- Resuminho sobre as tags

html: =  Cria componentes de formulário (inputs, buttons, forms).
bean: = Acessa, escreve ou define valores de objetos Java.
logic: = Faz condicionais (if) e repetições (for).
--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculadora JSP</title>
    <link rel="stylesheet" type="text/css" href="css/Style.css">
</head>
<body>
    <h1>Calculadora</h1>

    <html:form action="/Calculadora" method="post">

        <label for="number1">Number 1:</label>
        <input type="number" name="calculadora.numero1">

        <label for="number2">Number 2:</label>
        <input type="number" name="calculadora.numero2">

        <label for="opcao">Escolha a operação:</label>
        <select name="calculadora.opcao">
            <option value="">Selecione...</option>
            <option value="1">Soma</option>
            <option value="2">Subtração</option>
            <option value="3">Multiplicação</option>
            <option value="4">Divisão</option>
        </select>

        <%-- botão do tipo submit para disparar o formulario --%>
        <button type="submit">Calcular</button>
    </html:form>

    <h3>Resultado:
        <bean:write name="CalculadoraForm" property="calculadora.resultado" />
    </h3>

</body>
</html>