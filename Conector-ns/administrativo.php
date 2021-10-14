<?php
    session_start();
    /* */
	if(!isset($_SESSION['usuarioNome'])) header("Location: admin.php?erro=1");
	?>


<!DOCTYPE HTML>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">

		<title>Area administrativa</title>
		<link rel="icon" href="imagens/Gogo04.png">
		
		<!-- bootstrap - link cdn -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		
		<!-- Jquery - -->
		<script src="jquery-2.2.1"></script>

 <script type="text/javascript">
         $(document).ready( function(){

	

										 
                     function atualizatweets(){
						  $.ajax({
							url: 'get_admin.php',
							method:"post",
						  success: function(data){
							$('#tweets').html(data);
						  }

						  });
						}
						atualizatweets();
});
 </script>



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
							<li><a href="sair.php">Sair</a></li>
							
						</ul>
</div>
	        </div><!--/.nav-collapse -->
	      </div>

	    </nav>


	    <div class="container">
	 

	    	<div class="col-md-3">
				<div class="panel panel-default">
				<div class="panel-body"> 
				 <h4><?= $_SESSION['usuarioNome']?></h4>
				 <h5>conector.ns@gmail.com</h5>
				<hr/>

         <div class="col-md-6">
				 Status <br/> 
				 </div>
      <div class="col-md-6"> 
			Mensagens <br/> 
			</div>
				</div>
				</div>
				
				</div>
			<div class="col-md-6">
			<div class="panel panel-default"> 
			<div class="panel-body">

			<form id="form_tweet">
			      <div class="input-group">
						<input type="text" class="form-control" maxlength="0" id="txt_tweet" name="txt_tweet" placeholder="Conector-ns/ soluções tecnologica!" maxlength="140">
						<span class="input-group-btn">
							 <button class="btn btn-default" id="btn_tweet" type="button"><span style="color:blue;">@</span> Online
							 </button>
						<span>
						</div>
			</form>
		    	</div>
			
			</div>
			<div id="tweets" class="list-group" >
			
			
			
			
			
			
			
			
			</div>      
  </div>
   	

			<div class="col-md-3">
			   
			<div class="panel panel-default"> 
			<diiv class="panel-body">
			    <h4><a href="#"> <center><marquee>Bem-vindo Administrador</marquee></center></a></h4>
			
			</div>
			</div>
			
			</div>
            

			<div class="clearfix"></div>
			<br />
		

		</div>


	    </div>
	
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	</body>
</html>

