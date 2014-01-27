<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nova OS</title>
</head>
<body>
	<form action="insereOs" method="post">
		<!-- Adicionar insereOs no request mapping do OsController para inserir nova Os = CONCLUÍDO -->
		<table>
				<tr>
					<td>Data de Abertura:<input type="text" readonly size="25" name="os_DataAbertura" /></td>
				<tr>
				</tr>
				<tr></tr>
				<tr>
					<td>Empresa: <input type="text" size="50" name="empresa" /></td>
				</tr>
				<tr>
					<td>Nome: <input type="text" size="50" name="nome" /></td>
				</tr>
				<tr>
					<td>Telefone: <input type="text" size="20" name="telefone" /></td>
				</tr>
				<tr>
					<td>Email:<input type="text" size="40" name="email" /></td>
				</tr>
				<tr><td></td></tr>

				<tr>
					<td align="center">Título: <input type="text" size="100"
						name="os_Titulo" /></td>
				</tr>
				<tr>
					<td align="center">Descrição:</td>
				</tr>
				<tr>
					<td><textarea rows="3" cols="100" name="os_Descricao"></textarea></td>
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
					<td><textarea rows="3" cols="100" name="os_Solucao"></textarea></td>
				</tr>
				<tr>
					<td>Data de Conclusão:<input type="text" readonly size="25" name="os_DataConclusao" /></td>
				</tr>

				<tr>
					<td align="center">Observações:</td>
				</tr>
				<tr>
					<td><textarea rows="3" cols="100" name="os_obs"></textarea></td>
				</tr>
				<tr>
					<td align="center"><b><input type="submit"
							value="Inserir Ordem de Serviço"></b></td>
				</tr>
			</table>
			</form>
			Caso não redirecione automaticamente, acesse o link para o <a href=listaOs>Sistema</a>
</body>
</html>