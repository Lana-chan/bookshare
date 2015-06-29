<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta charset="utf-8">
<title>BookShare | Notificações</title>
<link rel="stylesheet" href="css/estilo.css">
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

<section id="guiaAcesso">
	<div id="Pesquisa">
      <input type="search" size="50">
      <button type="submit" class="btnAcesso" id="btnPaginaNormal"><img src="imgs/pesquisa_32.png" alt="Pesquisar"></button>
        <z2><br> Buscar por: 
          <input type="radio" value="exemplar.titulo"> 
          Título
        <input type="radio" value="exemplar.autor"> Autor
        <input type="radio" value="exemplar.ISBN"> ISBN
    	<input type="checkbox" value="exemplar.unidade"> Pesquisar somente na minha unidade.
    </z2>
</div>
</section>

<section id="resultados">
	<div>
	<h5>Resultados encontrados para "Física":</h5>
    </div>
</section>

<section>
		<div class="campo">
 			<img src="livro.foto" alt="Foto do livro" width="120" height="180">
            
            <div>
        		<z4><u>Memórias de um Sargento de Milícias</u></z4>
            	<z3><br><i>Manuel Antônio de Almeida</i></z3>
            	<z><br>Proprietário: @Usuario</z>
            	<z><br>Unidade: @Unidade </z>
        	</div>
			<div>
    			<button type="submit" class="btnAcesso" id="btnPaginaNormal">Incluir livro</button>
    		</div>
        </div>
        </section>



</body>
</html>
