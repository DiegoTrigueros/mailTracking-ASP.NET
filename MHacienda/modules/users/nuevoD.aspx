<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nuevoD.aspx.cs" Inherits="MHacienda.modules.users.nuevoD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">
	<title>Nuevo documento</title>
	<link href="../../css/style.css" rel="stylesheet" />
	<link href="../../css/main.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<script src="../../js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="../../js/modal.js" type="text/javascript"></script>
</head>
<body>
    <div class="container module">
		<nav>
			<ul id="nav">
				<li><a href="../mainU.aspx">Página Principal</a></li>
				<li><a href="nuevoD.aspx">Nuevo Documento</a></li>
				<li><a href="../about.aspx">Sobre Nosotros</a></li>
				<li id="ses"><a href="">Cerrar Sesión</a></li>
			</ul>
		</nav>
		<form runat="server" id="docu">
		<div class="modal" id="modal">
			<div class="model-close">
				<div class="nuevo active" id="nuevoD">
					<p>
						<span class="icon-file-empty"></span><label>Nuevo documento</label>
					</p>
				</div>
				<div class="copia" id="reenviar">
					<p>
						<span class="icon-files-empty"></span><label>Reenviar documento</label>
					</p>
				</div>
			</div>
			<div class="tab nuevoD" id="nuevo">
				<div class="left">
					<div class="input-container select">
					<label for="">Tipo de documento</label>
					<asp:DropDownList Font-Name="" id="docu2" runat="server"></asp:DropDownList>
				</div>
				<div class="input-container select">
					<label for="">Asunto</label>
					<asp:DropDownList name="" id="asu" runat="server">

					</asp:DropDownList>
				</div>
				<div class="input-container select">
					<label for="">Destinatario</label>
					<asp:DropDownList name="" id="asu2" runat="server">

					</asp:DropDownList>
				</div>				
				</div>
				<div class="right">
					
				<div class="input-container select text">
					<label for="pass">Descripción</label>
					<textarea name="desc" id="desc" cols="30" rows="10"></textarea>
				</div>
				<div class="input-container button">
					<asp:button Text="ENVIAR" runat="server"/>
				</div>
				</div>
			</div>
			<div class="tab copiaD" id="copia">
				<div class="left">
					<div class="input-container select">
						<label for="">Documento original</label>
						<asp:DropDownList name="" id="docuO" runat="server">

						</asp:DropDownList>
					</div>
					<div class="input-container select">
					<label for="">Asunto</label>
					<asp:DropDownList name="" id="asu3" runat="server">

					</asp:DropDownList>
				</div>
					<div class="input-container select">
						<label for="">Destinatario</label>
						<asp:DropDownList name="" id="asu4" runat="server">

						</asp:DropDownList>
					</div>

				</div>
				<div class="right">
					<div class="input-container select text">
					<label for="pass">Descripción</label>
					<textarea name="desc" id="desc" cols="30" rows="10"></textarea>
				</div>
				<div class="input-container button">
					<asp:Button Text="ENVIAR" runat="server"/>
				</div>
				</div>
			</div>			
		</div>
		</form>
	</div>	
</body>
</html>
