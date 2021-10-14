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
$nome = $_POST['nome'];
  $email = $_POST['email'];
  $assunto = $_POST['assunto'];
   $mensagem =  $_POST['msg'];

$sql = "INSERT INTO tweet(nome, email, assunto, mensagem)values('$nome', '$email', '$assunto', '$mensagem')";
$resultado_usuario = mysqli_query($conn, $sql);
mysqli_close($resultado_usuario);
  


?>