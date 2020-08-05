<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TDocu.aspx.cs" Inherits="MHacienda.modules.MReportes.TDocu" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mostrar reporte" />

        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="239px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="528px" ShowReportBody="False">
            <LocalReport ReportPath="Reportes\Documentos.rdlc">
            </LocalReport>
        </rsweb:ReportViewer>    
    </div>       
    </form>
</body>
</html>
