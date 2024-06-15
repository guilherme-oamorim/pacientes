<!DOCTYPE html>
<html lang="pt-BR">

<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&family=Poppins:wght@200;500&display=swap"
	rel="stylesheet">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pacientes</title>
<link rel="stylesheet" href="../css/styles.css">
</head>

<body>
	<div class="container">
		<h1>Projeto Pacientes</h1>
		<h2>Cadastre-se</h2>

		<div class="box-form">
			<div class="box-item">
				<label for="nome" class="form-label">Nome</label> <input type="text"
					id="nome" name="nome" class="form-input" value="Fulano"
					placeholder="Nome Sobrenome" required minlength="3" maxlength="30">
			</div>
			<div class="box-item">
				<label for="email" class="form-label">E-mail</label> <input
					type="email" id="email" name="email" class="form-input"
					value="fulano@gmail.com" placeholder="email@seuemail.com" required>
			</div>
			<div class="box-item">
				<label for="data" class="form-label">Data de nascimento</label> <input
					type="date" id="data" name="data" class="form-input"
					value="1990-12-01" required>
			</div>
			<div class="box-item">
				<button class="form-btn" onclick="salvar()" >Cadastrar</button>
			</div>
			<div class="box-item">
				<a class="link" href="/relatorio">Relatório</a>
			</div>
		</div>

	</div>
</body>

<script src="./javaScript.js">
function salvar(){
	console.log("salvando...");
	
	var payload = {};
	payload.id = $("#id").val();
	payload.nome = $("#nome").val();
	payload.dataNasc = $("#dataNasc").val();
	payload.email = $("#email").val();
	
	console.log(payload);
	
	$.ajax({
		url: '/index',
	    type: "POST",
		headers: {
	     'Content-Type': 'application/json'
		},
	     data: JSON.stringify(payload)
		}).done(function (retorno) {
			console.log(retorno)
			alert(retorno);
		}).fail(function (retorno){
			alert(retorno);
		});
}
</script>
<script ></script>

</html>