<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cálculo de Média</title>
</head>
<body>
    <h2>Cálculo de Média</h2>
    <%
        // Verifica se o formulário foi submetido
        if (request.getMethod().equals("POST")) {
            // Recupera as notas enviadas pelo formulário
            double nota1 = Double.parseDouble(request.getParameter("nota1"));
            double nota2 = Double.parseDouble(request.getParameter("nota2"));

            // Calcula a média das notas
            double media = (nota1 + nota2) / 2;
    %>

    <p>A média das notas é: <%= media %></p>

    <% } else { %>

    <form action="calcularMedia.jsp" method="post">
        <label for="nota1">Nota 1:</label>
        <input type="number" id="nota1" name="nota1" required><br><br>

        <label for="nota2">Nota 2:</label>
        <input type="number" id="nota2" name="nota2" required><br><br>

        <button type="submit">Calcular Média</button>
    </form>

    <% } %>
</body>
</html>
