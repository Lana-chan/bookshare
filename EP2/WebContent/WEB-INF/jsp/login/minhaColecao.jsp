<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>BookShare | Cole��o</title>
	
	<link rel="stylesheet" href="../content/css/estilo.css">

</head>

<body>

<jsp:include page='cabecalho.jsp'/>

<!-----------Corpo------------------->
<header id="cabecalhoSecao">
	<h2> Minha Cole��o </h2>
</header>


<fieldset class="grupo">
      <input name="menu" id="hello" type="radio" value="hello" checked="checked" />
      <label for="hello"><c>Inbox<br><z>(Livros recebidos)</z></c></label>
      <input name="menu" id="lorem" type="radio" value="lorem" />
      <label for="lorem"><c>Outbox<br><z>(Livros para doa��o)</z></c></label>
  
	<pp class="tab-hello">
	
	<!------ INBOX ------->
    <div id="tab1">
		<table class="tabelaColecao">
          <tr>
        
           <!--1 coluna: dados do livro-->
            <td class="colunaDados">
            <z4><u>Mem�rias de um Sargento de Mil�cias</u></z4>
            <z3><br><i>Manuel Ant�nio de Almeida</i></z3>
            <z><br>Propriet�rio: @Usuario</z>
            <z><br>Unidade: @Unidade </z>
            </td>
            
            
           <!--2 coluna: status do exemplar-->
            <td class="colunaStatus">
            <fieldset>
            <h5> Status</h5>
            <z3> @Resultado da solicitacao</z3>
            <fieldset>
            </td>
            
            
           <!--3 coluna: botoes de a��o-->
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

           <!--1 coluna: dados do livro-->
            <td class="colunaDados">
            <z4><u>O Menino Maluquinho</u></z4>
            <z3><br><i>Ziraldo</i></z3>
            <z><br>N�mero de interessados: </z>
            </td>
            
           <!--2 coluna: status do exemplar-->
            <td class="colunaStatus">
            <fieldset>
            <h5>Status</h5>
            <z3>@STATUS</z3>
            </fieldset>
            </td>
            
           <!--3 coluna: botoes de a��o-->
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
