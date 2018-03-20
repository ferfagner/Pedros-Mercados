<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pedros Mercados</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey w3-content" style="max-width:1600px">


<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container">
    <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
      <i class="fa fa-remove"></i>
    </a>
    <img src="https://s-media-cache-ak0.pinimg.com/originals/f3/12/16/f31216af823d9004d5dcc82bea71ad33.jpg" style="width:45%;" class="w3-round"><br><br>
    <h4><b>Pedros Mercados</b></h4>
    <p class="w3-text-grey">O Melhor Mercado de Brasilia</p>
  </div>
  <div class="w3-bar-block">
    <a href="#portfolio" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-user fa-fw w3-margin-right"></i>LOGIN</a> 
    <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-th-large fa-fw w3-margin-right"></i>PRODUTOS</a> 
    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>CONTATO</a>
  </div>
  <div class="w3-panel w3-large">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
  <header id="portfolio">
    <a href="#"><img src="/w3images/avatar_g2.jpg" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <div class="w3-container w3-padding-large" style="margin-bottom:32px">
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
	
 	<h1>Logado com Sucesso!</h1>

  <div class="w3-container w3-padding-large" style="margin-bottom:32px">
  <header id="about">
    <h1><b>PRODUTOS</b></h1>
    <p>Veja aqui nossos produtos a venda.</p>
    <hr>

      <!-- Pricing Tables -->
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third w3-margin-bottom">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-black w3-xlarge w3-padding-32">Cliente Básico</li>
          <li class="w3-padding-16"><% 
String valor = (String) request.getAttribute("codigo");
// trate o resto
%> </li>
          <li class="w3-padding-16">20% de Desconto em Limpeza</li>
          <li class="w3-padding-16">15% de Desconto em Eletronicos</li>
          <li class="w3-padding-16">25% de Desconto em Eletrodomésticos</li>
          <li class="w3-padding-16">
            <h2>R$ 150,00</h2>
            <span class="w3-opacity">/Mês</span>
          </li>
          <li class="w3-light-grey w3-padding-24">
          <a href ="#portfolio"> <button class="w3-button w3-teal w3-padding-large w3-hover-black">Contratar</button></a>
          </li>
        </ul>
      </div>
      
      <div class="w3-third w3-margin-bottom">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
            <li class="w3-black w3-xlarge w3-padding-32">Cliente Médio</li>
          <li class="w3-padding-16">20% de Desconto em Alimentação</li>
          <li class="w3-padding-16">25% de Desconto em Limpeza</li>
          <li class="w3-padding-16">20% de Desconto em Eletronicos</li>
          <li class="w3-padding-16">30% de Desconto em Eletrodomésticos</li>
          <li class="w3-padding-16">
            <h2>R$ 200,00</h2>
            <span class="w3-opacity">/Mês</span>
          </li>
          <li class="w3-light-grey w3-padding-24">
          <a href ="#portfolio"> <button class="w3-button w3-teal w3-padding-large w3-hover-black">Contratar</button></a>
          </li>
        </ul>
      </div>
      
      <div class="w3-third">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
           <li class="w3-black w3-xlarge w3-padding-32">Cliente Premium</li>
          <li class="w3-padding-16">25% de Desconto em Alimentação</li>
          <li class="w3-padding-16">30% de Desconto em Limpeza</li>
          <li class="w3-padding-16">25% de Desconto em Eletronicos</li>
          <li class="w3-padding-16">35% de Desconto em Eletrodomésticos</li>
          <li class="w3-padding-16">
            <h2>R$ 300,00</h2>
            <span class="w3-opacity">/Mês</span>
          </li>
          <li class="w3-light-grey w3-padding-24">
           <a href ="#portfolio"> <button class="w3-button w3-teal w3-padding-large w3-hover-black">Contratar</button></a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  
  <!-- Contact Section -->
  <div class="w3-container w3-padding-large w3-grey">
    <h4 id="contact"><b>Contato</b></h4>
    <div class="w3-row-padding w3-center w3-padding-24" style="margin:0 -16px">
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
        <p>contato@pedrosmercados.com.br</p>
      </div>
      <div class="w3-third w3-teal">
        <p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
        <p>Brasilia ,DF</p>
      </div>
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
        <p>(61)98110-1167</p>
      </div>
    </div>
    <hr class="w3-opacity">
    <form action="/action_page.php" target="_blank">
      <div class="w3-section">
        <label>Nome</label>
        <input class="w3-input w3-border" type="text" name="Name" required>
      </div>
      <div class="w3-section">
        <label>Email</label>
        <input class="w3-input w3-border" type="text" name="Email" required>
      </div>
      <div class="w3-section">
        <label>Mensagem</label>
        <input class="w3-input w3-border" type="text" name="Message" required>
      </div>
      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-paper-plane w3-margin-right"></i>Enviar Mensagem</button>
    </form>
  </div>

  <!-- Footer -->
  <footer class="w3-container w3-padding-32 w3-dark-grey">
  <div class="w3-row-padding">
    <div class="w3-third">
      <h3>FOOTER</h3>
      <p>Pedros Mercados foi desenvolvido para ajudar todos os nossos clientes com os melhores descontos</p>
      <p>Powered by <a href="#" target="_blank">FagnerWeb</a></p>
    </div>
  
  </div>
  </footer>
  
  <div class="w3-black w3-center w3-padding-24">Powered by <a href="#" title="W3.CSS" target="_blank" class="w3-hover-opacity">Fagnerweb</a></div>

<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>