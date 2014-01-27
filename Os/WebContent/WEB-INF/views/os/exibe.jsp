<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Alteração de OS</title>
</head>
<body>
	<form action="alteraOs" method="POST">
	<!-- Adicionar alteraOs no requestMapping do OsController para retornar os/formulario = CONCLUÍDO-->
		<input type="hidden" id="id" name="id" value="${os.id}" /><br />
		
		Data de Abertura: <input type="text" id="dataAbertura" name="dataAbertura" value="${os.os_DataAbertura}"/><br />
		Título: <input type="text" id="titulo" name="titulo" value="${os.os_Titulo}"/><br />
		Empresa: <input type="text" id="empresa" name="empresa" value="${os.empresa}"/><br />
		Nome: <input type="text" id="nome" name="nome" value="${os.nome}"/><br />
		Telefone <input type="text" id="telefone" name="telefone" value="${os.telefone}"/><br />
		Email: <input type="text" id="email" name="email" value="${os.email}" /><br /> 
		Descrição: <input type="text" id="descricao" name="descricao" value="${os.os_Descricao}" /><br /> 
		Solução: <input type="text" id="solucao" name="solucao" value="${os.os_Solucao}"/><br />
		Data de Atendimento: <input type="text" id="dataAtendimento" name="dataAtendimento" value="${os.os_DataAbertura}"/><br />
		Data de Conclusão: <input type="text" id="dataConclusao" name="dataConclusao" value="${os.os_DataConclusao}"/><br />
		Observações: <input type="text" id="obs" name="obs" value="${os.os_Obs}"/><br />
		
		<input type="submit" value="Alterar" /> 

	</form>
</body>
</html>