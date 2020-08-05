<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mreportes.aspx.cs"  Inherits="MHacienda.modules.admin.MReportes"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
	<title>Generar reportes</title>
	<link href="../../css/style.css" rel="stylesheet" />
	<link href="../../css/main.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<script src="../../js/jquery-3.2.1.min.js" type="text/javascript"></script>
</head>
<body>
    <div class="container module">
		<nav>
			<ul id="nav">
				<li><a href="../mainA.aspx">Página Principal</a></li>				
				<li><a href="../about.aspx">Sobre Nosotros</a></li>
				<li id="ses"><a href="">Cerrar Sesión</a></li>
			</ul>
		</nav>
		<div class="icons">
			<div class="images">
				<a href=""><div class="icon" id="2"><img src="../../img/001-contract.png" alt=""><label>Todos los documentos</label></div></a>
				<a href=""><div class="icon" id="5"><img src="../../img/002-weekly-calendar.png" alt=""><label>Oficinas</label></div></a>				
				<a href=""><div class="icon" id="1"><img src="../../img/003-wall-calendar.png" alt=""><label>Trámites</label></div></a>
				<a href=""><div class="icon" id="4"><img src="../../img/004-office-material.png" alt=""><label>Estados</label></div></a>
			</div>
		</div>
	</div>
</body>
</html>

