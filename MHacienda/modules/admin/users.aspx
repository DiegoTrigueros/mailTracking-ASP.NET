<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="MHacienda.modules.admin.users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
	<title>Ingresar usuarios</title>
	<link href="../../css/style.css" rel="stylesheet" />
	<link href="../../css/main.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"/>
	<script src="../../js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="../../js/jquery-3.2.1.min.js" type="text/javascript"></script>
        
</head>
<body>
    <div class="container module">
		<nav>
			<ul id="nav">
				<li><a href="../mainA.aspx">Página Principal</a></li>				
				<li><a href="../about.aspx">Sobre Nosotros</a></li>
				<li id="ses"><a href="../../default.aspx">Cerrar Sesión</a></li>
			</ul>
		</nav>
		<div class="form users">
			<h1 class="title">Ingreso de usuarios</h1>
			<form runat="server" id="form1" class="form-users">				
				<div class="1">
					<div class="input-container">
						<input type="text" name="user" id="user" required="true" runat="server">
						<label for="user">Código de empleado</label>
					</div>
					<div class="input-container">
						<input type="password" name="pass" id="pass" required="true" runat="server">
						<label for="pass">Contraseña</label>
					</div>
					<div class="input-container">
						<input type="text" name="nom" id="nom" required="true" runat="server">
						<label for="nom">Nombre</label>
					</div>
					<div class="input-container">
						<input type="text" name="ape" id="ape" required="true" runat="server">
						<label for="ape">Apellido</label>
					</div>					
				</div>
				<div class="2">
					<div class="input-container">
						<input type="text" name="dui" id="dui" required="true" runat="server" placeholder="________-_">
						<label for="dui">DUI</label>
					</div>
					<div class="input-container">
						<input type="text" name="nit" id="nit" required="true" runat="server" placeholder="____-______-___-_">
						<label for="nit">NIT</label>
					</div>
					<div class="input-container">
						<input type="text" name="tel" id="tel" required="true" runat="server" placeholder="____-____">
						<label for="tel">Teléfono</label>
					</div>
					<div class="input-container select">
						<label for="ofi">Oficina</label>
						<asp:DropDownList name="ofi" id="ofi" runat="server"></asp:DropDownList>
					</div>
				</div>
				<div class="3">
					<div class="input-container select">
						<label for="car">Cargo</label>
						<asp:DropDownList name="car" id="car" runat="server">
                            <asp:listitem value="Usuario">Usuario</asp:listitem>
                            <asp:listitem value="Administrador"> Administrador </asp:listitem>
						</asp:DropDownList>				
					</div>
					<div class="input-container button usu">
                        <asp:Button text="IR" ID="ingU" runat="server" OnClick="ingU_Click"/>
					</div>	
                    <center><asp:Label id="mensaje" runat="server" color="red" style="color : red"></asp:Label></center>
				</div>		
			</form>
		</div>
	</div>
</body>
</html>
