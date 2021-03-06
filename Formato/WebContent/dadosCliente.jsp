<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Formato - Revis�o textual</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
			<a href="servicos.jsp"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Servi�os</a>
			<a href="#"
				class="w3-bar-item w3-button w3-button w3-padding-large w3-white">Central
				do cliente</a> <a href="contato.jsp"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Contato</a>
			<a href="sobre.jsp"
				class="w3-bar-item w3-button w3-padding-large w3-hover-white">Sobre</a>
			<!-- SESSOES -->
			<c:if test="${sessionScope.usuarioLogado.login != null}">
				<!-- <a class="w3-bar-item  w3-hide-small w3-padding-large w3-right w3-small">Bem vindo ${sessionScope.usuarioLogado.login}</a>  -->
				<div class="w3-dropdown-hover">
					<button class="w3-button w3-padding-large w3-hover-white w3-red">|
						Bem vindo ${sessionScope.usuarioLogado.login}</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">
						<a href="dadosCliente.jsp" class="w3-bar-item w3-button">Meus
							dados cadastrais</a>
						<form action="mvc?logica=Logoff" method="post">
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

		<!-- Dados cadastrais -->
		<div class="w3-row-padding w3-padding-64 w3-container">
			<div class="w3-content">
				<div class="w3-container">
					<form action="mvc?logica=AtualizarCadastro"
						class="w3-container w3-card-4 w3-light-grey w3-text-red w3-margin"
						method="post">
						<h2 class="w3-center">Altera��o de dados cadastrais</h2>

						<div class="w3-row w3-section">
							<div class="w3-col" style="width: 50px">
								<i class="w3-xxlarge fa fa-user"></i>
							</div>
							<div class="w3-rest">
								<input class="w3-input w3-border" name="nomecompleto"
									type="text" placeholder="Nome completo"
									value="${sessionScope.usuarioLogado.nomecompleto}">
							</div>
						</div>

						<div class="w3-row w3-section">
							<div class="w3-col" style="width: 50px">
								<i class="w3-xxlarge fa fa-envelope-o"></i>
							</div>
							<div class="w3-rest">
								<input class="w3-input w3-border" name="email" type="text"
									placeholder="Email" value="${sessionScope.usuarioLogado.email}">
							</div>
						</div>

						<div class="w3-row w3-section">
							<div class="w3-col" style="width: 50px">
								<i class="w3-xxlarge fa fa-phone"></i>
							</div>
							<div class="w3-rest">
								<input class="w3-input w3-border" name="telefone" type="number"
									placeholder="Telefone"
									value="${sessionScope.usuarioLogado.telefone}">
							</div>
						</div>

						<br>
						<button
							class="w3-button w3-block w3-section w3-red w3-ripple w3-padding"
							name="btnEnviar" value="${sessionScope.usuarioLogado.login}">Enviar</button>

					</form>
				</div>

				<!--Envio do arquivo-->
				<div class="w3-container">
					<form action="upload"
						class="w3-container w3-card-4 w3-light-grey w3-text-red w3-margin"
						method="post" enctype="multipart/form-data">
						
						<h2 class="w3-center">Envio do arquivo</h2>

						<div class="w3-row w3-section">
							<h4>Clique no bot�o 'Procurar' para selecionar o arquivo de
								texto a ser analisado. Somente pode ser enviado aquivo no
								formato de pdf.</h4>
						</div>

						<div class="w3-row w3-section">
							<input type="file" id="myFile" name="arquivo"
								class="w3-button  w3-block  w3-section w3-ripple w3-padding" required>
						</div>


						<b><input type="checkbox" value="gramatical"></b> Revis�o
						gramatical<br> <b><input type="checkbox" value="ABNT"></b>
						Adequa��o ABNT<br> <b><input type="checkbox"
							value="Textual"></b> Textual-gramatical<br> <b><input
							type="checkbox" value="Formata��o"></b> Edi��o/Formata��o<br>

						<p>
							<input class="w3-radio" type="radio" name="porPagina"
								value="pagina" checked> <label>Por p�gina</label>
						</p>
						<p>
							<input class="w3-radio" type="radio" name="porPalavra"
								value="palavra"> <label>Por palavra</label>
						</p>
						<p>
							<input class="w3-radio" type="radio" name="porLauda"
								value="lauda"> <label>Por lauda (Uma lauda
								equivale a um texto com 1.250 caracteres (incluindo os espa�os))</label>
						</p>


						<br>
						<button	class="w3-button w3-block w3-section w3-red w3-ripple w3-padding"
							type="submit" name="btnEnviar" value="Upload">Enviar</button>

					</form>
				</div>

				<!--Op��o de cobran�a-->



			</div>
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