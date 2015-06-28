<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exemplo EP2</title>
</head>
<body>
	<br><br><br><br>
	<form action="autentica">
		<center>
			<table>
				<tr>
					<td colspan="2" align="center">${dataHoje}</td>
				</tr>

				<tr>
					<td>NUSP:</td>
					<td><input type="number" name="pessoa.nusp" /></td>
				</tr>
				<tr>
					<td>Senha:</td>
					<td><input type="password" name="pessoa.senha" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Entrar" /></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>