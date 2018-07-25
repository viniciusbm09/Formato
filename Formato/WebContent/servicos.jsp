<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Formato - Revis�o textual</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Lato", sans-serif
}

.w3-bar, h1, button {
	font-family: "Montserrat", sans-serif
}

.fa-anchor, .fa-coffee {
	font-size: 200px
}
</style>
<body>

	<!-- Navbar -->
	<div class="w3-top">
		<div class="w3-bar w3-red w3-card w3-left-align w3-large">
			<a
				class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red"
				href="javascript:void(0);" onclick="myFunction()"
				title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a> <a
				href="index.jsp"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Apreenta��o</a>
			<a href="servicos.jsp" class="w3-bar-item w3-button w3-padding-large w3-white">Servi�os</a>
			<a href="centralCliente.jsp"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Central
				do cliente</a> <a href="contato.jsp"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Contato</a>
			<a href="sobre.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-white">Sobre</a>
			<!-- SESSOES -->
			<c:if test="${sessionScope.usuarioLogado.login != null}">
				<!-- <a class="w3-bar-item  w3-hide-small w3-padding-large w3-right w3-small">Bem vindo ${sessionScope.usuarioLogado.login}</a>  -->
				<div class="w3-dropdown-hover">
					<button class="w3-button w3-padding-large w3-hover-white w3-red">|
						Bem vindo ${sessionScope.usuarioLogado.login}</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">
						<a href="dadosCliente.jsp" class="w3-bar-item w3-button">Meus
							dados cadastrais</a>
						<form action="mvc?logica=logoff" method="post">
							<button class="w3-bar-item w3-button" name="bntLogoff"
								value="Enviar">Fazer logof</button>
						</form>


					</div>
				</div>
			</c:if>
			<!-- FIM SESSOES -->
		</div>

		<!-- Navbar on small screens -->
		<div id="navDemo"
			class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
			<a href="#" class="w3-bar-item w3-button w3-padding-large">Apresenta��o</a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large">Servi�os</a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large">Central
				do cliente</a> <a href="#"
				class="w3-bar-item w3-button w3-padding-large">Contato</a> <a
				href="#" class="w3-bar-item w3-button w3-padding-large">Sobre</a>
				
		</div>
	</div>



	<!-- First Grid -->
	<div class="w3-row-padding w3-padding-64 w3-container">


		<h1>Descri��o dos servi�os oferecidos</h1>
		<h5 class="w3-padding-32">A revis�o textual consiste na execu��o
			de servi�os de verifica��o e acertos que envolve toda estrutura do
			texto do documento. A revis�o textual evita perdas da sem�ntica da
			informa��o, informa��es incorretas, erros gramaticais e conceituais
			visando a entrega e apresenta��o do documento final de forma
			aceit�vel.</h5>

		<div class="w3-container">
			<h2>Tipos de revis�o</h2>


			<ul class="w3-ul w3-hoverable">
				<li>Revis�o gramatical: consiste na leitura do texto e sua
					adequa��o aos crit�rios gramaticais,ortogr�ficos e sint�ticos da
					norma culta da l�ngua portuguesa.</li>
				<li>Adequa��o �s normas da ABNT: revisa-se o texto de forma a
					garantir que atenda �s normas da Associa��o Brasileira de Normas
					T�cnicas (ABNT).</li>
				<li>Textual-gramatical: inclui tanto a revis�o gramatical
					quanto a an�lise cr�tica do texto, apontando aspectos de constru��o
					textual que levem a um texto mais claro.</li>
				<li>Edi��o/formata��o: prepara, de acordo com as normas
					editoriais, um texto ou uma sele��o de textos, com a��es de
					padroniza��o de fonte, inser��o de �ndice, formata��o etc.</li>
			</ul>
		</div>



	</div>

	<div class="w3-container">
		<h2>Veja as nossas formas de cobran�a</h2>
	</div>

	<div class="w3-row-padding">

		<div class="w3-third w3-margin-bottom">
			<ul class="w3-ul w3-border w3-center w3-hover-shadow">
				<li class="w3-red w3-xlarge w3-padding-32">Por p�gina</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Revis�o gramatical</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Adequa��o ABNT</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Textual-gramatical</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Edi��o/Formata��o</li>
				<li class="w3-padding-16">
					<h2 class="w3-wide">R$ 10,00</h2> <span class="w3-opacity">cada</span>
				</li>
				<li class="w3-light-grey w3-padding-24">
					<button class="w3-button w3-green w3-padding-large">Comprar</button>
				</li>
			</ul>
		</div>

		<div class="w3-third w3-margin-bottom">

			<ul class="w3-ul w3-border w3-center w3-hover-shadow">
				<li class="w3-gray w3-xlarge w3-padding-32">Por palavras</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Revis�o gramatical</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Adequa��o ABNT</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Textual-gramatical</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Edi��o/Formata��o</li>
				<li class="w3-padding-16">
					<h2 class="w3-wide">R$ 0,50</h2> <span class="w3-opacity">cada</span>
				</li>
				<li class="w3-light-grey w3-padding-24">
					<button class="w3-button w3-green w3-padding-large">Comprar</button>
				</li>
			</ul>
		</div>

		<div class="w3-third w3-margin-bottom">
			<ul class="w3-ul w3-border w3-center w3-hover-shadow">
				<li class="w3-black w3-xlarge w3-padding-32">Por lauda</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Revis�o gramatical</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Adequa��o ABNT</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Textual-gramatical</li>
				<li class="w3-padding-16"><b><input type="checkbox"
						name="vehicle" value="Bike"></b> Edi��o/Formata��o</li>
				<li class="w3-padding-16">
					<h2 class="w3-wide">R$ 50</h2> <span class="w3-opacity">cada</span>
				</li>
				<li class="w3-light-grey w3-padding-24">
					<button class="w3-button w3-green w3-padding-large">Comprar</button>
				</li>
			</ul>
		</div>

	</div>



	<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
		<h1 class="w3-margin w3-xlarge">Formato Revis�o Textual. Fa�a j�
			seu or�amento</h1>
	</div>

	<!-- Footer -->
	<footer class="w3-container w3-padding-64 w3-center w3-opacity">
	<div class="w3-xlarge w3-padding-32">
		<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
			class="fa fa-instagram w3-hover-opacity"></i> <i
			class="fa fa-snapchat w3-hover-opacity"></i> <i
			class="fa fa-pinterest-p w3-hover-opacity"></i> <i
			class="fa fa-twitter w3-hover-opacity"></i> <i
			class="fa fa-linkedin w3-hover-opacity"></i>
	</div>
	<p>
		Powered by <a href="https://www.w3schools.com/w3css/default.asp"
			target="_blank">w3.css</a>
	</p>
	</footer>

	<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>

</body>
</html>