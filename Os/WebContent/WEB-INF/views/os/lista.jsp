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
	<h1>
		<b>Sistema de abertura e controle de chamados</b>
	</h1>

	<table border=1>
		<tr bgColor="#AA0000">
			<td><b><font color="#FFFFFF">Id</font></b></td>
			<td><b><font color="#FFFFFF">Data de Abertura</font></b></td>
			<td><b><font color="#FFFFFF">Título</font></b></td>
			<td><b><font color="#FFFFFF">Empresa</font></b></td>
			<td><b><font color="#FFFFFF">Nome</font></b></td>
			<td><b><font color="#FFFFFF">Telefone</font></b></td>
			<td><b><font color="#FFFFFF">E-mail</font></b></td>
			<td><b><font color="#FFFFFF">Descrição</font></b></td>
			<td><b><font color="#FFFFFF">Solução</font></b></td>
			<td><b><font color="#FFFFFF">Prioridade</font></b></td>
			<td><b><font color="#FFFFFF">Data de Conclusão</font></b></td>
			<td><b><font color="#FFFFFF">Observações</font></b></td>
		</tr>

		<c:forEach items="${oses}" var="os" varStatus="i">
			<c:choose>

				<c:when test="${i.count % 2 == 0}">
					<tr bgColor="#FFFFFF">
				</c:when>
				<c:otherwise>
					<tr bgColor="#FFFFBB">
				</c:otherwise>
			</c:choose>
			<td>${os.id}</td>
			<td>${os.os_DataAbertura}</td>
			<td>${os.os_Titulo}</td>
			<td>${os.empresa}</td>
			<td>${os.nome}</td>
			<td>${os.telefone}</td>
			<td>${os.email}</td>
			<td>${os.os_Descricao}</td>
			<td>${os.os_Solucao}</td>
			<td>${os.os_Prioridade}</td>
			<td>${os.os_DataConclusao}</td>
			<td>${os.os_Obs}</td>
			<td><a href="removeOs?id=${os.id}">Remover</a></td>
			<!--  Colocar removeOs como requestMapping no OsController para remover OS = CONCLUÍDO -->
			</tr>

		</c:forEach>
	</table>
	<br>
	<a href="novaOs">Inserir Nova OS</a>
	<!-- Colocar "novaOs" como request mapping no OsController para redirecionar para os/formulario = CONCLUÍDO -->

</body>
</html>