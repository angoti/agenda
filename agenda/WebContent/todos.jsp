<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agenda de contatos</title>
<style>
td, th, table {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<h1>Agenda Online</h1>
	<a href=listar>Listar todos</a>
	<a href=novo.html>Novo contato</a>
	<hr>
	<table>
		<tr>
			<th>Nome</th>
			<th>Telefone</th>
			<th>Operação</th>
		</tr>
		<c:forEach var="contato" items="${lista}">
			<tr>
				<td>${contato.nome}</td>
				<td>${contato.telefone}</td>
				<td><a href="excluir?id=${contato.id}">excluir</a> / <a href="#">alterar</a>
			</tr>
		</c:forEach>
	</table>
</body>
</html>