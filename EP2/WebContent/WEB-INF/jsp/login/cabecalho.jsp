<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>




</head>
<body>
<!-----------Cabecalho------------------->
<header id="cabecalho">
  <div id="cabecalhoLogo">
    	<a href="pesquisa">
        	<img src="../content/imgs/logo_32.png">
        	<h1> BookShare </h1>
        </a>
   </div>
    
  <div id="cabecalhoWelcome">
    	<p> Bem-vinda, ${nome} </p>
    </div>

	<nav id="cabecalhoMenu">
     <a href="minhaColecao">
     <img src="../content/imgs/colecao_32.png" alt="Coleção" class="headerImgMenu"></a> 
	  <a href="notificacoes">
      <img src="../content/imgs/notificacoes_32.png" alt="Notificações" class="headerImgMenu"></a>
      <a href="pesquisa">
      <img src="../content/imgs/pesquisa_32.png" alt="Pesquisa" class="headerImgMenu"></a>
	  <a href="configuracoes">
      <img src="../content/imgs/config_32.png" alt="Configurações" class="headerImgMenu"></a> 
	  <a href="informaUsuarioSenha">
      <img src="../content/imgs/logout_32.png" alt="Log Out" class="headerImgMenu"></a>

    </nav>
    
</header>
</body>
</html>