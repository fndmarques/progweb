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
<!-- Adicionar insereOs no request mapping do OsController para inserir nova Os -->
 
Data de Abertura: <input type="text" name="dataAbertura" /><br />
T�tulo: <input type="text" name="titulo" /><br />
Empresa: <input type="text" name="empresa" /><br />
Nome: <input type="text" name="nome"/><br />
Telefone <input type="text" name="telefone" /><br />
Email: <input type="text" name="email" /><br /> 
Descri��o: <input type="text" name="descricao" /><br />
Solu��o: <input type="text" name="solucao" /><br />
Data de Atendimento: <input type="text" name="dataAtendimento" /><br />
Data de Conc�us�o: <input type="text" name="dataConclusao" /><br />
Observa��es: <input type="text" name="obs" /><br />
 
 <input type="submit" value="Inserir">
 </form>
</body>
</html>