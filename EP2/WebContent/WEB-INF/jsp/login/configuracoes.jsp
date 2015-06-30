<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="utf-8">
<title>BookShare | Configura��es</title>
	
	<link rel="stylesheet" href="../content/css/estilo.css">

</head>

<body>

<jsp:include page='cabecalho.jsp'/>


<!-----------Main------------------->
<header id="cabecalhoSecao">
	<h2> Configura��es de Conta </h2>
    <h3> Ap�s personalizar seu perfil, n�o esque�a de salvar </h3>
</header>
    
<section id="main">

<form action="salvarConfiguracoes">
	<fieldset class="grupo">
    
        <legend> Perfil </legend>
        <div class="campo">
        	<label>Nome: </label>
            <input type="text" id="pessoa.nusp">
        </div>
        <div class="campo">
            <label>Unidade: </label>
            <input type="text" id="pessoa.unidade">
        </div>
        <div class="campo">
            <label>Email: </label>
            <input type="email" id="pessoa.email">
        
	</fieldset>
    
    <fieldset class="grupo">
    <legend> Seguran�a </legend>
    <div class="campo">
      <label>Nova Senha: </label>
      <input type="password" name="pessoa.senha">
      </div>
      <div class="campo">
      <label>Repita a nova senha: </label>
      <input type="password" name="pessoa.senha">
      </div>   
    </fieldset>  
    
    <button type="submit" class="btnAcesso" id="btnPaginaNormal">Salvar Altera��es</button>
</form>
</section>
    	



</body>
</html>
