<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="procedure.aspx.cs" Inherits="MHacienda.modules.admin.procedure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
	<title>Ingresar trámites</title>
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
		    <div class="form ofi">
			    <h1 class="title">Agregar trámite</h1>
			    <form runat="server" id="form1" class="form-login">				

				    <div class="input-container">
					    <input type="text" name="name" id="name" required="true" runat="server">
					    <label for="pass">Nombre de trámite</label>
				    </div>				
				    <div class="input-container button">
					    <asp:Button text="IR" ID="ingU" runat="server" />
				    </div>
			    </form>
		    </div>
    </div>
</body>
</html>
