<?php


  /*  session_start();
    if(!isset($_SESSION['usuarioNome'])) header("Location: admin.php?erro=1");
*/

 

$servidor = "localhost";
$usuario = "root";
$senha = "";
$dbname = "funvildevendas";
//cria a conexao
$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);
if(!$conn){
    die("falha na conexao: " . mysqli_connect_error());
}else{
    //echo "Conexao realizada com sucesso";
    
}

$sql = "SELECT id_tweet, nome, email, assunto, mensagem,  DATE_FORMAT(data_inclusao, '%d %b %Y %T') AS data_inclusao FROM tweet ORDER BY data_inclusao DESC ";
$resultado_usuario = mysqli_query($conn, $sql);
if($resultado_usuario){
      while($tweet = mysqli_fetch_array($resultado_usuario) ){
        echo '<a href="#" class="list-group-item">';
        echo '<h4 class="list-group-item-heading">'.$tweet['nome'].' <small> - '.$tweet['data_inclusao'].'</small></h4>';
        echo '<h5 class="list-group-item-heading"><span style="color:rgb(79, 79, 233);">'.$tweet['email'].'</span> <em> - '.$tweet['assunto'].'</em></h5>';
		echo '<p class="list-group-item-text"><small>Mensagem:<br> </small>'.$tweet['mensagem'].'</p>';
		echo '</a>';
      }
}else{
    echo 'Erro ao execucao da onsulta.';
   
}






?>