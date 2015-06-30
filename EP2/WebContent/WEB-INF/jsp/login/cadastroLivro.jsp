<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta charset="utf-8">
<title>BookShare | Cadastro</title>
	
	<link rel="stylesheet" href="../content/css/estilo.css">

</head>

<body>

<jsp:include page='cabecalho.jsp'/>


<!-----------Main------------------->
<header id="cabecalhoSecao">
	<h2> Cadastro de Livro </h2>
</header>
    
<section id="main">

<form>
	<fieldset class="grupo">
    
        <legend> Dados do livro </legend>
        <div class="campo">
        	<label>Título: </label>
            <input type="text" id="Livro.titulo">
        </div>
        <div class="campo">
            <label>Autor: </label>
            <input type="text" id="Livro.autor">
        </div>
        <div class="campo">
            <label>Editora: </label>
            <input type="text" id="Livro.editora">
        </div>
        <div class="campo">
            <label>Idioma: </label>
            <input type="text" id="Livro.idioma">
        </div>
        <div class="campo">
            <label>Edição: </label>
            <input type="text" id="Livro.edicao">
        </div>
        <div class="campo">
            <label>Ano: </label>
            <input type="text" id="Livro.ano">
        </div>
        <div class="campo">
            <label>Número de páginas: </label>
            <input type="text" id="Livro.nropag">
        </div>
        <div class="campo">
            <label>ISBN: </label>
            <input type="text" id="Livro.isbn">
        </div>
        <div class="campo">
            <label>Imagem: </label><input type="file" name="Livro.foto">
        </div>
        <div class="campo">
            <label>Sinopse: </label>
            <textarea name="sinopse" rows="10" cols="60"></textarea>
        </div>
	</fieldset> 
    
    <button type="submit" class="btnAcesso" id="btnPaginaNormal">Cadastrar livro</button>
</form>
</section>
    	



</body>
</html>
