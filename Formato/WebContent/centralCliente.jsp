<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Formato - Revisão textual</title>
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
	<!-- TRATAMENTO DE SESSAO -->



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
			<a href="#" class="w3-bar-item w3-button w3-padding-large w3-white">Central
				do cliente</a> <a href="#"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Contato</a>
			<a href="sobre.jsp"
				class="w3-bar-item w3-button w3-padding-large w3-hover-white">Sobre</a>
			
			<!-- SESSOES -->
			<c:if test="${sessionScope.usuarioLogado.login != null}">
				<!-- <a class="w3-bar-item  w3-hide-small w3-padding-large w3-right w3-small">Bem vindo ${sessionScope.usuarioLogado.login}</a>  -->
				<div class="w3-dropdown-hover">
      				<button class="w3-button w3-padding-large w3-hover-white">| Bem vindo ${sessionScope.usuarioLogado.login}</button>
      					<div class="w3-dropdown-content w3-bar-block w3-card-4">
        					<a href="dadosCliente.jsp" class="w3-bar-item w3-button">Meus dados cadastrais</a>
        					<form action="mvc?logica=logoff" method="post">
        						<button class="w3-bar-item w3-button" name="bntLogoff" value="Enviar">Fazer logof</button>
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



	<!-- First Grid -->
	<div class="w3-row-padding w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-twothird">

				<!--Login-->
				<div class="w3-container">
					<h2>Faça seu login</h2>
					<br>
					<h5>Realize seu login para ter acesso a seus orçamentos e
						alteração de dados cadastrais</h5>
					<button
						onclick="document.getElementById('id01').style.display='block'"
						class="w3-button w3-red w3-large">Clique aqui para
						efetuar o login</button>

					<div id="id01" class="w3-modal">
						<div class="w3-modal-content w3-card-4 w3-animate-zoom"
							style="max-width: 600px">

							<div class="w3-center">
								<br> <span
									onclick="document.getElementById('id01').style.display='none'"
									class="w3-button w3-xlarge w3-transparent w3-display-topright"
									title="Close Modal">×</span>
								<!--<img src="img_avatar4.png" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">-->
							</div>

							<form class="w3-container" action="mvc?logica=Login" method="post">
								<div class="w3-section">
									<label><b>Usuário</b></label> <input
										class="w3-input w3-border w3-margin-bottom" type="text"
										placeholder="Digite o usuário" name="login" required>
									<label><b>Senha</b></label> <input class="w3-input w3-border"
										type="password" placeholder="Digite a senha" name="senha" required>
									<button class="w3-button w3-block w3-red w3-section w3-padding"
										type="submit" name="btnLogin" value="login" >Login</button>
									<!--<input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me-->
								</div>
							</form>

							<div
								class="w3-container w3-border-top w3-padding-16 w3-light-grey">
								<button
									onclick="document.getElementById('id01').style.display='none'"
									type="button" class="w3-button w3-red">Cancelar</button>
								<!--<span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>-->
							</div>

						</div>
					</div>


				</div>

				<!--Registro-->

				<div class="w3-container">
					<br>
					<br>
					<h2>ou rgistre-se</h2>
					<h5>Faça seu registro para solicitar serviços e orçamentos</h5>
					<!--<button onclick="" class="w3-button w3-red w3-large">Clique aqui para efetuar o registro</button>-->
					<a href="registro.jsp" class="w3-button w3-red">Clique aqui
						para efetuar o registro</a> <br>
					<br>
					<br>
					<br>
				</div>
			</div>
		</div>
</div>
		<!-- Second Grid -->
		<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
			<div class="w3-content">
				<div class="w3-third w3-center"></div>

				<div class="w3-twothird"></div>
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
