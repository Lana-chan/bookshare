<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>BookShare | Página Inicial</title>


		<link rel="stylesheet" href="../content/css/estilo.css">
		<link rel="stylesheet" href="../content/css/estilo2.css">


</head>

<body>

<jsp:include page='cabecalho.jsp'/>

<section id="guiaAcesso">
	<div id="Pesquisa">
    	<h2> Encontre seu livro. </h2>
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
