<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainA.aspx.cs" Inherits="MHacienda.modules.mainA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
	<title>Página principal</title>
	<link href="../css/style.css" rel="stylesheet" />
	<link href="../css/main.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"/>
	<script src="../js/jquery-3.2.1.min.js" type="text/javascript"></script>
</head>
<body>
    <div class="container module">
		<nav>
			<ul id="nav">
				<li><a href="mainA.aspx">Página Principal</a></li>				
				<li><a href="about.aspx">Sobre Nosotros</a></li>
				<li id="ses"><a href="../default.aspx">Cerrar Sesion</a></li>
			</ul>
		</nav>
		<div class="icons">
			<div class="images">
				<a href="admin/users.aspx"><div class="icon" id="2"><img src="../img/boss.png" alt=""><label>Usuarios</label></div></a>
				<a href="admin/offices.aspx"><div class="icon" id="5"><img src="../img/office-material.png" alt=""><label>Oficinas</label></div></a>
				<a href="admin/procedure.aspx"><div class="icon" id="1"><img src="../img/check-mark.png" alt=""><label>Trámites</label></div></a>
				<a href="admin/status.aspx"><div class="icon" id="4"><img src="../img/customer-service.png" alt=""><label>Estados</label></div></a>
				<a href="admin/reports.aspx"><div class="icon" id="6"><img src="../img/circular-graphic.png" alt=""><label>Reportes</label></div></a>
			</div>
		</div>
	</div>
</body>
</html>
