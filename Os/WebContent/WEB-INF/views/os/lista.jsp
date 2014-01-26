<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script type="text/javascript" src="resources/js/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listagem das OS</title>
</head>
<body>

<img src="resources/images/ufabc.jpg" alt="Logo UFABC" />

	<table border=1>
		<tr>
			<td><b>Id</b></td>
			<td><b>Data de Abertura</b></td>
			<td><b>Título</b></td>
			<td><b>Empresa</b></td>
			<td><b>Nome</b></td>
			<td><b>Telefone</b></td>
			<td><b>E-mail</b></td>
			<td><b>Descrição</b></td>
			<td><b>Solução</b></td>
			<td><b>Data de Atendimento</b></td>
			<td><b>Data de Conclusão</b></td>
			<td><b>Observações</b></td>
		</tr>
		
		<c:forEach items="${suporte}" var="os">
			<tr>
				<td>${os.id}</td>
				<td>${os.os_DataAbertura}</td>
				<td>${os.os_Titulo}</td>
				<td>${os.empresa}</td>
				<td>${os.nome}</td>
				<td>${os.telefone}</td>
				<td>${os.email}</td>
				<td>${os.os_Descricao}</td>
				<td>${os.os_DatAtendimento}</td>
				<td>${os.os_DataConclusao}</td>
				<td>${os.os_Obs}</td>
				<td><a href="removeOs?id=${os.id}">Remover</a></td>
				<!--  Colocar removeOs como requestMapping no OsController para remover OS -->
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="novaOs">Inserir Nova OS</a>
	<!-- Colocar "novaOs" como request mapping no OsController para redirecionar para os/formulario-->
	
</body>
</html>