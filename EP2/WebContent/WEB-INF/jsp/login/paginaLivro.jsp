<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta charset="utf-8">
<title>BookShare | Notificações</title>
<link rel="stylesheet" href="/WEB-INF/css/estilo.css">
<link rel="stylesheet" href="/WEB-INF/css/estilo2.css">
</head>

<body>
<!-----------Cabecalho------------------->
<header id="cabecalho">
  <div id="cabecalhoLogo">
    	<a href="pesquisa.html">
        	<img src="imgs/logo_32.png">
        	<h1> BookShare </h1>
        </a>
   </div>
    
  <div id="cabecalhoWelcome">
    	<p> Bem-vinda, @usuaria </p>
    </div>

	<nav id="cabecalhoMenu">
    <a href="minhaColecao.html"><img src="imgs/colecao_32.png" alt="Coleção" class="headerImgMenu"></a> 
	  <a href="notificacoes.html">
      <img src="imgs/notificacoes_32.png" alt="Notificações" class="headerImgMenu"></a>
      <a href="pesquisa.html">
      <img src="imgs/pesquisa_32.png" alt="Pesquisa" class="headerImgMenu"></a>
	  <a href="configuracoes.html">
      <img src="imgs/config_32.png" alt="Configurações" class="headerImgMenu"></a> 
	  <a href="login.html">
      <img src="imgs/logout_32.png" alt="Log Out" class="headerImgMenu"></a>

    </nav>
    
</header>


<!-----------Corpo------------------->
<section id="paginaLivro">
	<div id="fotoLivro">
    	<img src="livro.foto" alt="Foto do livro" width="200" height="300">
    </div>
    
    <div id="infoLivro">
      <h1> Nome Livro </h1>
      <h5> Autor livro </h5>
      <h6> Sinopse do lviro aiwdnoandwonavomwoamaobn vaiu vhavnroav oawurvho vav rao </h6>
    </div>  
    
    <div id="donoLivro">
		<h6>O livro está em posse de:</h6>
        <img src="dono.foto" alt="Foto do dono" width="100" height="100">
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
    	<z2>Editora: </z2>
    </div>
    <div class="campo">
    	<z2>Idioma: </z2>
    </div>
    <div class="campo">
    	<z2>Edição: </z2>
    </div>
    <div class="campo">
    	<z2>Ano: </z2>
    </div>
    <div class="campo">
    	<z2>Número de páginas: </z2>
    </div>
    <div class="campo">
    	<z2>ISBN: </z2>
    </div>
    </fieldset>
</section>

<section id="historico">
	<h4>Este livro já pertenceu à:</h4>
    </section>
    <section>
    <div class="campo">
	<fieldset class="grupo">
    <img src="dono.foto" alt="Foto do dono" width="100" height="100">
    <h6><u>link para a pag do dono</u></h6>
    <h6>Até 15/05/2013</h6>
    </fieldset>
    <fieldset class="grupo">
    <img src="dono.foto" alt="Foto do dono" width="100" height="100">
    <h6><u>link para a pag do dono</u></h6>
    <h6>Até 15/05/2013</h6>
    </fieldset>
    <fieldset class="grupo">
    <img src="dono.foto" alt="Foto do dono" width="100" height="100">
    <h6><u>link para a pag do dono</u></h6>
    <h6>Até 15/05/2013</h6>
    </fieldset>
  </div>
</section>
    




</body>
</html>
