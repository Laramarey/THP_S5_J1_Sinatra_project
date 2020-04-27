<html>
<head>
	<title>
		PAGE POTIN
	</title>
</head>
<body>
	<h1>Voici la page du potin <%= id %> </h1>
	<p> Son auteur : == <%= gossips.author %> == </p>
	<p>Le contenu du potin : == <%= gossips.content %> == </p>

	<a href='/'>Lien pour revenir à la page des potins</a>
</body>
</html>