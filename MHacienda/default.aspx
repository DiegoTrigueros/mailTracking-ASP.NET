<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MHacienda._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sistema de rastreo de documentos</title>
    <link href="css/style.css" rel="stylesheet" />
	<link href="css/main.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#img').fadeOut(3000, function () {
                $('#img').css('display', 'none');
            });
        });
    </script>
</head>
<body>	
	<div class="image" id="img">
		<img src="img/Bienvenida.png" alt="Alternate Text" id="bienv"/>
	</div>
	<div class="container main">
		<div class="form login">
			<h1 class="title">Inicio de sesión</h1>
			<form runat="server" id="form1">				
				<div class="input-container">
					<input type="text" name="user" id="user" required="true" runat="server">
					<label for="user">Código de empleado</label>
				</div>
				<div class="input-container">
					<input type="password" name="pass" id="pass" required="true" runat="server">
					<label for="pass">Contraseña</label>
				</div>
				<div class="input-container button">
					<asp:button ID="enviar" runat="server" Text="IR" OnClick="enviar_Click"></asp:button>
				</div>
                </ br>
                <center><asp:Label ID="msg" runat="server" Style="color:red"></asp:Label></center>
				
                </div>
			</form>
		</div>	
	</div>
</body>
</html>
