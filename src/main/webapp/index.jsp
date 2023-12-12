<!DOCTYPE html>
<html lang="pt-br">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Página inicial</title>
		<link rel="stylesheet" href="style.css">
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
			crossorigin="anonymous">
	</head>

	<body>
		<header class="navigation-header">
			<nav>
				<div class="logo-container">
					<img src="./img/urbes-logo.png" alt="Logo da Urbes">
				</div>

				<ul class="navigation-items">
					<li><a class="nav-item-t" href="/">Home</a></li>

					<li class="nav-item dropdown nav-item-t">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button"
							data-bs-toggle="dropdown" aria-expanded="false">
							Rotas
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#itinerários">Itinerarios</a></li>
							<li><a class="dropdown-item" href="./cadastroDeItinerarios.html">Cadastro
									de
									Itinerarios</a></li>
						</ul>
					</li>
					<li>
						<a class="nav-item-t" href="#mapa">Mapa do site</a>
					</li>
					<li>
						<a class="nav-item-t" href="#utilidades">Utilidades</a>
					</li>
					<li>
						<a class="nav-item-t" href="#noticias">Noticias</a>
					</li>
				</ul>
			</nav>
		</header>
		<main class="main-content">
			<div>
				<h1><i>Linhas mais utilizadas</i></h1>
				<div class="card-container">
					<div class="card">
						<h3>UFSCAR 80</h3>
						<p>Do Terminal Sao Paulo para a universidade.</p>
						<p>Plataforma: P.1 - Ponto: B</p>
					</div>
					<div class="card">
						<h3>Ipanema das Pedras 67</h3>
						<p>Do Terminal Santo Antonio para Ipanema.</p>
						<p>Plataforma: P1 - Ponto: C</p>
					</div>
					<div class="card">
						<h3>Havana 33</h3>
						<p>Do Terminal Santo Antonio para Havana.</p>
						<p>Plataforma: P.1 - Ponto: D</p>
					</div>
					<div class="card">
						<h3>Jardim Europa 18</h3>
						<p>Do Terminal Sao Paulo para o Jardim Europa.</p>
						<p>Plataforma: P.1 - Ponto: D</p>
					</div>
					<div class="card">
						<h3>Campolim 65</h3>
						<p>Do Terminal Sao Paulo para o Jardim Europa.</p>
						<p>Plataforma: P5 - Ponto: Q</p>
					</div>
					<div class="card">
						<h3>Green Valley 51</h3>
						<p>Do Terminal Sao Paulo para o Jardim Europa.</p>
						<p>Plataforma: P.2 - Ponto: F</p>
					</div>
					<div class="card">
						<h3>Guadalajara 12</h3>
						<p>Do Terminal Sao Paulo para o Jardim Europa.</p>
						<p>Plataforma: P1 - Ponto: D</p>
					</div>
					<div class="card">
						<h3>Tatiana 441</h3>
						<p>Do Terminal Sao Paulo para o Jardim Europa.</p>
						<p>Plataforma: P1 Ponto: C</p>
					</div>
				</div>
			</div>

			<div id="carouselExample" class="carousel slide" data-ride="carousel"
				data-interval="2000">
				<div class="carousel-inner text-center">
					<div class="carousel-item active">
						<img src="./img/onibusSorocaba.webp" class="d-block mx-auto"
							style="max-width: 500px;" alt="...">
					</div>
					<div class="carousel-item">
						<img src="./img/onibus1.jpg" class="d-block mx-auto"
							style="max-width: 500px;" alt="...">
					</div>
					<div class="carousel-item">
						<img src="./img/onibus2.jpg" class="d-block mx-auto"
							style="max-width: 500px;" alt="...">
					</div>
				</div>
			</div>
		</main>
		<script src="./jquery-3.6.2.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
	</body>

</html>