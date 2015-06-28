<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>BookShare | Configura��es</title>
<link rel="stylesheet" href="WebContent/WEB-INF/css/estilo.css">
<link rel="stylesheet" href="css/estilo2.css">
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
    <a href="minhaColecao.html"><img src="imgs/colecao_32.png" alt="Cole��o" class="headerImgMenu"></a> 
	  <a href="notificacoes.html">
      <img src="imgs/notificacoes_32.png" alt="Notifica��es" class="headerImgMenu"></a>
      <a href="pesquisa.html">
      <img src="imgs/pesquisa_32.png" alt="Pesquisa" class="headerImgMenu"></a>
	  <a href="configuracoes.html">
      <img src="imgs/config_32.png" alt="Configura��es" class="headerImgMenu"></a> 
	  <a href="login.html">
      <img src="imgs/logout_32.png" alt="Log Out" class="headerImgMenu"></a>

    </nav>
    
</header>


<!-----------Main------------------->
<header id="cabecalhoSecao">
	<h2> Configura��es de Conta </h2>
    <h3> Ap�s personalizar seu perfil, n�o esque�a de salvar </h3>
</header>
    
<section id="main">

<form>
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
      <label>Senha: </label>
      <input type="password" name="pessoa.senha">
      </div>
      <div class="campo">
      <label>Nova senha: </label>
      <input type="password" name="pessoa.senha">
      </div>   
    </fieldset>  
    
    <button type="submit" class="btnAcesso" id="btnPaginaNormal">Salvar Altera��es</button>
</form>
</section>
    	



</body>
</html>
