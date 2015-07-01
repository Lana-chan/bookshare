<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="utf-8">
<title>BookShare | Configurações</title>
	
	<link rel="stylesheet" href="../content/css/estilo.css">

</head>

<body>

<jsp:include page='cabecalho.jsp'/>


<!-----------Main------------------->
<header id="cabecalhoSecao">
	<h2> Configurações de Conta </h2>
    <h3> Após personalizar seu perfil, não esqueça de salvar </h3>
</header>
    
<section id="main">

<form action="atualiza">
	<fieldset class="grupo">
    
        <legend> Perfil </legend>
        <div class="campo">
        	<label>Nome: </label>
            <input type="text" name="pessoa.nome">
        </div>
        <div class="campo">
            <label>Email: </label>
            <input type="email" name="pessoa.email">
        
	</fieldset>
    
    <fieldset class="grupo">
    <legend> Segurança </legend>
    <div class="campo">
      <label>Nova Senha: </label>
      <input type="password" name="pessoa.senha">
      </div>
      <div class="campo">
      <label>Repita a nova senha: </label>
      <input type="password" name="senha">
      </div>   
    </fieldset>  
    
    <button type="submit" class="btnAcesso" id="btnPaginaNormal">Salvar Alterações</button>
</form>
</section>
    	



</body>
</html>
