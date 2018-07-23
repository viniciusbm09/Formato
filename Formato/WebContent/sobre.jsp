<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Formato - Revisão textual</title>
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
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Apreentação</a>
			<a href="servicos.jsp"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Serviços</a>
			<a href="centralCliente.jsp"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Central
				do cliente</a> <a href="#"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Contato</a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large w3-white">Sobre</a>
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
			<a href="#" class="w3-bar-item w3-button w3-padding-large">Apresentação</a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large">Serviços</a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large">Central
				do cliente</a> <a href="#"
				class="w3-bar-item w3-button w3-padding-large">Contato</a> <a
				href="#" class="w3-bar-item w3-button w3-padding-large">Sobre</a>
		</div>
	</div>





	<!-- Second Grid -->
	<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-third w3-center">
				<i class="fa-coffee w3-padding-64 w3-text-red w3-margin-right"></i>
			</div>

			<div class="w3-twothird">
				<h1>Sobre os autores</h1>
				<h5 class="w3-padding-32">Esta, é uma empresa fictícia criada
					para realização de um trabalho acadêmico em atendimento à
					disciplina de Programação para internet do curso de Sistemas de
					Informação do Instuto Federal de Educação, Ciência e Tecnologia de
					Goiás - Campus Goiânia-GO, ministrada pelo professor Dr. Raphael
					Gomes, ano 2018.</h5>

				<p class="w3-text-grey">Neste trabalho desenvolvemos uma pagina
					comercial com apresentação textual do portifólio da referida
					empresa, onde destacamos os serviços realizados. Criamos também
					todo o serviço que mantém o funcionamento da página com a
					implementação de uma biblioteca para leitura dos arquivos PDF,
					implementação de persistência de dados em banco de dados MySQL,
					lógica de Programação na liguagem Java com a implementação de JPS.
				</p>
				<p class="w3-text-grey">
					A inteface visual da página em html foi feita com base em template
					disponibilizado pela <a href="https://www.w3schools.com">W3
						Schools</a> utilizando o "Start Page Template".
				</p>
				<p class="w3-text-grey">Participaram desse projeto os alunos:
				<li class="w3-bar">
					<div class="w3-bar-item">
						<span class="w3-large">Gilberto Vampré</span><br> <span>Github:
							<a href="https://github.com/GilbertoWolf">https://github.com/GilbertoWolf</a>
						</span>
					</div>
				</li>

				<li class="w3-bar">
					<div class="w3-bar-item">
						<span class="w3-large">Nathan Martins</span><br> <span>Github:
							<a href="https://github.com/nathanmartins">https://github.com/nathanmartins</a>
						</span>
					</div>
				</li>

				<li class="w3-bar">
					<div class="w3-bar-item">
						<span class="w3-large">Vinicius Barros</span><br> <span>Github:
							<a href="https://github.com/viniciusbm09">https://github.com/viniciusbm09</a>
						</span>
					</div>
				</li>
				

			</div>
		</div>
	</div>

	<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
		<h1 class="w3-margin w3-xlarge">Formato Revisão Textual. Faça já
			seu orçamento</h1>
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
