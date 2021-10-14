<?php 

session_start();


?>


<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>CNS-Serviços de telecomunicação</title>
    <link rel="icon" href="imagens/Gogo04.png">

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="estilo05.css" rel="stylesheet">
<!-- Jquery - -->
<script src="jquery-2.2.1"></script>
<script>
  $(document).ready( function(){

    //verifica se os campos de usuário e senha foram devidamente preenchidos
    $('#btn_login').click(function(){
          var campo_vazio = false;
          if( $('#cNome').val() == '' ){
              $('#cNome').css({'border-color' : '#A94442'});
              campo_vazio = true;
          }else{
            $('#cNome').css({'border-color' : '#ccc'});
          }

          if( $('#cEmail').val() ==''){
            $('#cEmail').css({'border-color' : '#A94442'});
            campo_vazio = true;
          }else{
            $('#cEmail').css({'border-color' : '#ccc'});
          }

           if( $('#cAssunto').val() ==''){
            $('#cAssunto').css({'border-color' : '#A94442'});
            campo_vazio = true;
          }else{
            $('#cAssunto').css({'border-color' : '#ccc'});
          }

           if( $('#cMsg').val() ==''){
            $('#cMsg').css({'border-color' : '#A94442'});
            campo_vazio = true;
          }else{
            $('#cMsg').css({'border-color' : '#ccc'});
          }

          if(campo_vazio) return false;
    });
  });
</script>

    <style>
      /* -- rodape -- */
      footer {
       background: #000;
       padding: 50px 0px 20px 0px;
       position: relative;
     }
     
.navbar-inverse .navbar-nav>li>a, footer .nav a {
	color: white;
}

.navbar-inverse .navbar-nav>li>a:hover, footer .nav a:hover {
	color: #9bf0e1;
	background: none;
}


  #rodape h4 {
	color: #919496;
	font-size: 12px;
	text-transform: uppercase;
}
     .item-rede-social{
       float: right;
     }
     </style>
     


 
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>


	<!-- Static navbar -->
  <nav class="navbar navbar-default navbar-static-top">
	    <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <img src="imagens/Logo CNS.png" />
	        </div>
	        
	        <div id="navbar" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav navbar-right">
            <li><a href="index.html">Home</a></li>
							
						</ul>
</div>
	        </div><!--/.nav-collapse -->
	      </div>

	    </nav>



<div class="container" >
<div class="col-md-4"> </div>
<form class="form-signin" method="POST" action="valida.php">
<div class="col-md-4"> </div>
<h2 class="form-signin-heading">Área restrita</h2><br/>
<label for="inputEmail" class="sr-only" >Email</label>
<input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email" required autofocus><br/>
<label for="inputSenha" class="sr-only" >Senha</label>
<input type="password" name="senha" id="inpuPassword" class="form-control" placeholder="Senha" required><br/>
<button class="btn btn-lg btn-danger btn-block" type="submit">Acessar</button>
</form>

<p class="text-center text-danger">
    <div class="col-md-5"> </div>

    <?php
    if(isset($_SESSION['loginErro'])){
        echo $_SESSION['loginErro'];
        unset($_SESSION['loginErro']);
    }
    
    ?>


</p>


<div class="col-md-4"> </div>
<div class="col-md-4"> </div>
</div>
        



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>