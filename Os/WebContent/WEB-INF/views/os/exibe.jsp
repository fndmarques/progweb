<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Alteração de OS</title>
</head>
<body>
	<form action="alteraOs" method="post">
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
						value="${os.os_Solucao}="SIM""></textarea></td>
			</tr>
			<td align="center"><h3><input type="checkbox" name="osconcluida" value="SIM"><b>OS
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



	<form action="alteraOs" method="POST">
		<!-- Adicionar alteraOs no requestMapping do OsController para retornar os/formulario = CONCLUÍDO-->
		<input type="hidden" id="id" name="id" value="${os.id}" /><br />

		//Data de Abertura: <input type="text" id="dataAbertura"
			name="dataAbertura" value="${os.os_DataAbertura}" /><br /> //Título:
		<input type="text" id="titulo" name="titulo" value="${os.os_Titulo}" /><br />
		//Empresa: <input type="text" id="empresa" name="empresa"
			value="${os.empresa}" /><br /> //Nome: <input type="text" id="nome"
			name="nome" value="${os.nome}" /><br /> //Telefone <input
			type="text" id="telefone" name="telefone" value="${os.telefone}" /><br />
		//Email: <input type="text" id="email" name="email"
			value="${os.email}" /><br /> //Descrição: <input type="text"
			id="descricao" name="descricao" value="${os.os_Descricao}" /><br />
		//Solução: <input type="text" id="solucao" name="solucao"
			value="${os.os_Solucao}" /><br /> //Prioridade: <input type="text"
			id="prioridade" name="prioridade" value="${os.os_Prioridade}" /><br />
		//Data de Conclusão: <input type="text" id="dataConclusao"
			name="dataConclusao" value="${os.os_DataConclusao}" /><br />
		Observações: <input type="text" id="obs" name="obs"
			value="${os.os_Obs}" /><br /> <input type="submit" value="Alterar" />

	</form>
	
	
	<a href=listaOs>Cancelar</a> e voltar para a listagem
</body>
</html>