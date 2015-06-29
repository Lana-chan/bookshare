<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<title>BookShare | Cole��o</title>
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


<!-----------Corpo------------------->
<header id="cabecalhoSecao">
	<h2> Minha Cole��o </h2>
</header>


<fieldset class="grupo">
	  <link rel="stylesheet" href="css/teste.css">
      <input name="menu" id="hello" type="radio" value="hello" checked="checked" />
      <label for="hello"><c>Inbox<br><z>(Livros recebidos)</z></c></label>
      <input name="menu" id="lorem" type="radio" value="lorem" />
      <label for="lorem"><c>Outbox<br><z>(Livros para doa��o)</z></c></label>
  
	<pp class="tab-hello">
    <div id="tab1">
		<table class="tabelaColecao">
          <tr>
          <!--1 coluna: imagem-->
            <td class="colunaImagem">
				<div class="campo">
    			<img src="livro.foto" alt="Foto do livro" width="120" height="180">
                </div>
            </td>
           <!--2 coluna: dados do livro-->
            <td class="colunaDados">
            <z4><u>Mem�rias de um Sargento de Mil�cias</u></z4>
            <z3><br><i>Manuel Ant�nio de Almeida</i></z3>
            <z><br>Propriet�rio: @Usuario</z>
            <z><br>Unidade: @Unidade </z>
            </td>
           <!--3 coluna: status do exemplar-->
            <td class="colunaStatus">
            <fieldset>
            <h5> Status</h5>
            <z3> Solicita��o aprovada. Aguardando confirma��o de entrega.</z3>
            <fieldset>
            </td>
           <!--4 coluna: botoes de a��o-->
            <td class="colunaBotoesAcao">
            <button type="submit" class="btnAcesso" id="btnConfirma"><z2>Confirmar Recebimento</z2></button>
            <button type="submit" class="btnAcesso" id="btnCancela"><z2>Cancelar Transa��o</z2></button>
            </td>
          </tr>
        </table>
		</div>
    </pp>
    
    
    <!------ OUTBOX ------->
    <pp class="tab-lorem">
    	<div id="tab2">
		<table class="tabelaColecao">
          <tr>
          <!--1 coluna: imagem-->
            <td class="colunaImagem">
				<div class="campo">
    			<img src="livro.foto" alt="Foto do livro" width="120" height="180">
                </div>
            </td>
           <!--2 coluna: dados do livro-->
            <td class="colunaDados">
            <z4><u>O Menino Maluquinho</u></z4>
            <z3><br><i>Ziraldo</i></z3>
            <z><br>N�mero de interessados: </z>
            </td>
           <!--3 coluna: status do exemplar-->
            <td class="colunaStatus">
            <fieldset>
            <h5>Status</h5>
            <z3>Aguardando a sua aprova��o para um dos interessados.</z3>
            </fieldset>
            </td>
           <!--4 coluna: botoes de a��o-->
            <td class="colunaBotoesAcao">
            <button type="submit" class="btnAcesso" id="btnConfirma"><z2>Aprovar doa��o</z2></button>
            <button type="submit" class="btnAcesso" id="btnCancela"><z2>Excluir da lista</z2></button>
            </td>
          </tr>
        </table>
        
       <section> 
       <fieldset>
        <button type="submit" class="btnAcesso" id="btnPaginaNormal">Incluir livro</button>
        </fieldset>
        </section>
        
	</div>
    </pp>
</fieldset> 
  
 




    

</body>
</html>
