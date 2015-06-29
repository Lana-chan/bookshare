<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>BookShare | Página Inicial</title>


		<link rel="stylesheet" href="/content/css/estilo.css">
		<link rel="stylesheet" href="/content/css/estilo2.css">


</head>

<body>

<!-----------Cabecalho------------------->
<header id="cabecalho">
  <div id="cabecalhoLogo">
    	<a href="paginaInicial.jsp">
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
	  <a href="configuracoes.html">
      <img src="imgs/config_32.png" alt="Configurações" class="headerImgMenu"></a> 
	  <a href="index2.html">
      <img src="imgs/logout_32.png" alt="Log Out" class="headerImgMenu"></a>
    </nav>
    
</header>


<section id="guiaAcesso">
	<div id="Pesquisa">
    	<h2> Econtre seu livro. </h2>
      <input type="search">
        <p> Buscar por: 
          <input type="radio" value="exemplar.titulo"> 
          Título
        <input type="radio" value="exemplar.autor"> Autor
        <input type="radio" value="exemplar.ISBN"> ISBN
    	<br> <input type="checkbox" value="exemplar.unidade"> Pesquisar somente na minha unidade.
    </p>
    <button type="submit" class="btnAcesso" id="btnPaginaNormal">Pesquisar</button>
	</div>
    
    <div id="IncluiLivro">
      <h2> Sentindo-se caridoso? </h2>
      <p> Compartilhe seu livro com outras pessoas! <br><br> Faça a felicidade de outro uspiano e doe o seu livro! </p>
    	<form action="listaLivros">
      <button type="submit" class="btnAcesso" id="btnPaginaNormal">Doar livro</button>
      </form>
    </div>    
</section>


</body>
</html>
