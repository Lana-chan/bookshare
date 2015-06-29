<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>BookShare | Cadastro de Usuário</title>
		
		<link rel="stylesheet" href="/content/css/estilo.css">
		<link rel="stylesheet" href="/content/css/estilo2.css">
	</head>
	
	<body id="paginasFixas">
    
  <header id="cabecalho">
  <div id="cabecalhoLogo">
    	<a href="pesquisa.html">
        	<img src="../content/imgs/logo_32.png">
        	<h1> BookShare </h1>
        </a>
   </div>
   </header>


	<section id="cadastro">		
		<form action="cadastra">
            <fieldset class="grupo">
            <legend> Dados da Matrícula </legend>
            
            <div class="campo">
				<label>NUSP: </label>
                <input type="text" name="pessoa.nusp" autofocus>
             </div>
             <div class="campo">
				<label>Unidade: </label>
 				<select name="pessoa.unidade">
			        <c:forEach items="${unidades}" var="unidade">
		                <option value="${unidade.getValue()}">
		                    <c:out value="${unidade.getNome()}"></c:out>
		                </option>
			        </c:forEach>
		        </select>
           </div>
            </fieldset>
            
            
            <fieldset class="grupo">
            <legend> Dados do aluno </legend>
            <div class="campo">
				<label>Nome: </label>
                <input type="text" name="pessoa.nome" autofocus>
            </div>
            <div class="campo">
				<label>Email: </label>
                <input type="email" name="pessoa.email" autofocus>
             </div>
             <div class="campo">
				<label>Senha: </label>
                <input type="password" name="pessoa.senha" autofocus>
             </div>
             <div class="campo">
				<label>Repita senha: </label>
                <input type="password" name="senha" autofocus>
             </div>
            </fieldset>
			
            <button type="submit" class="btnAcesso" id="btnPaginaFixa">Cadastre-me!</button>
		</form>
		</section>
	</body>
</html>
