<?php require_once('header.php')?>
<h1 style="font-size: 70px; text-align: center;">Página Inicial</h1>
<h3> Configuração </h3>
<?php 
	foreach ($config as $k => $v) {
	 	echo "[$k] =>  $v";
	 	echo '<br>'; 	
	 } 
?>

<h3> Rede Sociais </h3>
<?php 
	foreach ($social as $k => $v) {
	 	echo "[$k] =>  $v";
	 	echo '<br>'; 	
	 } 
?>

<?php require_once('footer.php')?>
<script>
    // scripts opcionais
</script>
</body>
</html>
