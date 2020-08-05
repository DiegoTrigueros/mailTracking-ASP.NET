<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="offices.aspx.cs" Inherits="MHacienda.modules.admin.offices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
	<title>Ingresar oficinas</title>
	<link href="../../css/style.css" rel="stylesheet" />
	<link href="../../css/main.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"/>
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
        <div class="form ofi">
            <h1 class="title">Ingreso de oficinas</h1>
            <form runat="server">            
			    <div class="input-container">
                    <input type="text" name="nomO" id="nomO" required="true" runat="server">
                    <label for="pass">Nombre</label>
                </div>
                <div class="ubicacion">
					<div class="input-container select ofi">
						<label for="">Edificio</label>
						<select name="edif" id="edif" runat="server">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</div>	
					<div class="input-container select ofi">
						<label for="">Nivel</label>
						<select name="niv" id="niv" runat="server">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
						</select>
					</div>	
					<div class="input-container select ofi">
						<label for="">Ala</label>
						<select name="ala" id="ala" runat="server">
							<option value="A">A</option>
							<option value="B">B</option>
							<option value="C">C</option>
							<option value="D">D</option>
						</select>
					</div>	
				</div>
                <div class="input-container button">
                            <asp:Button text="IR" ID="ingU" runat="server" OnClick="ingU_Click"/>
                </div>
                <center><asp:Label id="mensaje" runat="server" color="red" style="color : red"></asp:Label></center>
            </form>
        </div>
    </div>
</body>
</html>
