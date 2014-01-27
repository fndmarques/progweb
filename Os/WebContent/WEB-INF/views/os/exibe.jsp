<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Alteração de OS</title>
</head>
<body>
	<form action="alteraOs" method="post">
	<input type="hidden" id="id" name="id" value="${os.id}"><br />
		<!-- Adicionar alteraOs no requestMapping do OsController para retornar os/formulario = CONCLUÍDO-->
		<table>
			<tr>
				<td>Data de Abertura:<input type="text" readonly size="25"
					name="os_DataAbertura" value="${os.os_DataAbertura}"/></td>
			<tr>
			</tr>
			<tr></tr>
			<tr>
				<td>Empresa: <input type="text" size="50" name="empresa"
					value="${os.empresa}" /></td>
			</tr>
			<tr>
				<td>Nome: <input type="text" size="50" name="nome"
					value="${os.nome}" /></td>
			</tr>
			<tr>
				<td>Telefone: <input type="text" size="20" name="telefone"
					value="${os.telefone}" /></td>
			</tr>
			<tr>
				<td>Email:<input type="text" size="40" name="email"
					value="${os.email}" /></td>
			</tr>
			<tr>
				<td></td>
			</tr>

			<tr>
				<td align="center">Título: <input type="text" size="100"
					name="os_Titulo" value="${os.os_Titulo}" /></td>
			</tr>
			<tr>
				<td align="center">Descrição:</td>
			</tr>
			<tr>
				<td><textarea rows="3" cols="100" name="os_Descricao"
						value="${os.os_Descricao}"></textarea></td>
			</tr>
			<tr>
				<td>Prioridade:<input type="radio" name="os_Prioridade"
					value="Normal" checked>Normal <input type="radio"
					name="prioridade" value="Alta">Alta
				</td>
			</tr>
			<tr>
				<td align="center">Solução:</td>
			</tr>
			<tr>
				<td><textarea rows="3" cols="100" name="os_Solucao"
						value="${os.os_Solucao}"></textarea></td>
			</tr>
			<td align="center"><h3><input type="checkbox" name="os_DataConclusao" value="SIM"><b>OS
				Concluída</b></h3></td>
			</tr>
			<tr>
				<td>
			<tr>
				<td>Data de Conclusão:<input type="text" readonly size="25"
					name="os_DataConclusao" /></td>
			</tr>

			<tr>
				<td align="center">Observações:</td>
			</tr>
			<tr>
				<td><textarea rows="3" cols="100" name="os_obs"
						value="${os.os_Obs}"></textarea></td>
			</tr>
			<tr>
				<td align="center"><input type="submit"
					value="Alterar Ordem de Serviço"></td>
			</tr>
		</table>
	</form>
	
	<a href=listaOs>Cancelar</a> e voltar para a listagem
</body>
</html>