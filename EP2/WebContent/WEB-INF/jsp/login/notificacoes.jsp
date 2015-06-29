<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookShare | Notifições</title>
		<link rel="stylesheet" href="/content/css/estilo.css">
		<link rel="stylesheet" href="/content/css/estilo2.css">
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

<body>
<!-----------Corpo------------------->
<header id="cabecalhoSecao">
	<h2> Notificações </h2>
</header>

<section id="notificacoes">
	<div class="solicitacaoRecebida">
    <p> USUARIO solicita LIVRO </p>
    <blockquote> mensagem </blockquote>
    </div>
    
    <div class="solicitacaoNegada">
    <p>A sua solicitação de LIVRO foi negada.</p>
    </div>
    
    <div class="transacaoConfirmada">
    <p>A transação do LIVRO foi confirmada por USUARIO.</p>
    </div>
    
    <div class="recebeuAvaliacao">
    <p>Você foi avaliado em AVALIAÇÃO por USUARIO.</p>
    </div>
    
    <div class="mensagem">
    <p>USUARIO disse (DATA):</p>
    <blockquote> mensagem </blockquote>
    </div>
    
    <div class="transaçãoCancelada">
    <p>A transação do LIVRO foi cancelada por USUARIO.</p>
    </div>
    
</section>

</body>

</html>