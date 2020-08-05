<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainU.aspx.cs" Inherits="MHacienda.modules.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
	<title>Página principal</title>
	<link href="../css/style.css" rel="stylesheet" />
    <link href="../../css/main.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<script src="../js/jquery-3.2.1.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container module">
		    <nav>
			    <ul id="nav">
				    <li><a href="mainU.aspx">Página Principal</a></li>
				    <li><a href="users/nuevoD.aspx">Nuevo Documento</a></li>
				    <li><a href="about.aspx">Sobre Nosotros</a></li>
				    <li id="ses"><a href="">Cerrar Sesión</a></li>
			    </ul>
		    </nav>
            <div class="table">
			<div class="admin">
				<div class="table-card">
					<div class="table-header">
						<span class="table-title">
							Documentos enviados, Diego Trigueros
						</span>
					</div>
					<div class="wrapper">
                        
						<asp:GridView class="dataTable" runat="server" name="gv1" ID="gv1">
							<%--<thead>
								<tr>
									<th>Asunto</th>
									<th>Destinatario</th>
									<th>Fecha</th>
									<th>Hora</th>
									<th>Estado</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Firma</td>
									<td>Roberto González</td>
									<td>17/07/2017</td>
									<td>17:21</td>
									<td>Enviado</td>
								</tr>
								<tr>
									<td>Firma</td>
									<td>Roberto González</td>
									<td>17/07/2017</td>
									<td>17:21</td>
									<td>Enviado</td>
								</tr>
							</tbody>--%>
						</asp:GridView>
						<div class="table-footer">
							<div class="info">
								1-10 of 20
							</div>
							<div class="paginate">
								<ul class="pagination">
									<li class="paginate_button">
										<a href="#">
											<span class="icon-chevron-left"></span>
										</a>
									</li>
									<li class="paginate_button">
										<a href="#">
											<span class="icon-chevron-right"></span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	    </div>
    </form>
</body>
</html>
