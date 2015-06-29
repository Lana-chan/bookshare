<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>BookShare | Cadastro de Usuário</title>
		
				<link rel="stylesheet" href="css/estilo.css">
		<link rel="stylesheet" href="css/estilo2.css">
	</head>
	
	<body id="paginasFixas">
    
  <header id="cabecalho">
  <div id="cabecalhoLogo">
    	<a href="pesquisa.html">
        	<img src="imgs/logo_32.png">
        	<h1> BookShare </h1>
        </a>
   </div>
   </header>


	<section id="cadastro">		
		<form action="#" method="post">
            <fieldset class="grupo">
            <legend> Dados da Matrícula </legend>
            
            <div class="campo">
				<label>NUSP: </label>
                <input type="text" name="usuario.numusp" autofocus>
             </div>
             <div class="campo">
				<label>Unidade: </label>
                <select name="Usuario.unidade">
                  <option value="">--</option>
              	</select>
           </div>
            </fieldset>
            
            
            <fieldset class="grupo">
            <legend> Dados do aluno </legend>
            <div class="campo">
				<label>Nome: </label>
                <input type="text" name="usuario.nome" autofocus>
            </div>
            <div class="campo">
				<label>Email: </label>
                <input type="email" name="usuario.email" autofocus>
             </div>
             <div class="campo">
				<label>Senha: </label>
                <input type="password" name="usuario.senha" autofocus>
             </div>
            </fieldset>
            
			<div class="campo">
            <label><input type="checkbox" name="vehicle">Li e concordo com os Termos de Uso.</label>
            </div>
			
            <button type="submit" class="btnAcesso" id="btnPaginaFixa">Cadastre-me!</button>
		</form>
		</section>
	</body>
</html>
