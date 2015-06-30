<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta charset="utf-8">
<title>BookShare | Notificações</title>
		
		<link rel="stylesheet" href="../content/css/estilo.css">

</head>

<body>

<jsp:include page='cabecalho.jsp'/>


<!-----------Corpo------------------->
<section id="paginaLivro">
	<div id="fotoLivro">
    	<img src="livro.foto" alt="Foto do livro" width="200" height="300">
    </div>
    
    <div id="infoLivro">
      <h1> ${titulo} </h1>
      <h5> ${autor} </h5>
      <h6> ${sinopse} </h6>
    </div>  
    
    <div id="donoLivro">
		<h6>O livro está em posse de:</h6>
        <p> ${dono}</p>
        <br>
        <button type="submit" class="btnAcesso" id="btnPaginaNormal">Solicitar este livro</button>
        <section>
        <button type="submit" class="btnAcesso" id="btnPaginaNormal">Incluir livro</button>
        </section>
    </div>  
</section>

<section id="especs">
    <h4>Especificações</h4>
    <fieldset class="grupo">
    <div class="campo">
    	<z2>Editora: {$editora}</z2>
    </div>
    <div class="campo">
    	<z2>Idioma: {$idioma}</z2>
    </div>
    <div class="campo">
    	<z2>Edição: {$edicao}</z2>
    </div>
    <div class="campo">
    	<z2>Ano: {$ano}</z2>
    </div>
    <div class="campo">
    	<z2>Número de páginas: {$nroPaginas}</z2>
    </div>
    <div class="campo">
    	<z2>ISBN: {$ISBN}</z2>
    </div>
    </fieldset>
</section>


</body>
</html>
