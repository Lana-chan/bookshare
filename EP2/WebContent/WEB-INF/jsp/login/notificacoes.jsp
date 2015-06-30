<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookShare | Notifições</title>

	<link rel="stylesheet" href="../content/css/estilo.css">

</head>

<body>

<jsp:include page='cabecalho.jsp'/>

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