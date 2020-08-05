using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;
namespace MHacienda.modules.MReportes
{
    public partial class TDocu : System.Web.UI.Page
    {
        SqlConnection cn = conn.connect();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        private void mostrarReporte()
        {
            ReportViewer1.Reset();
            DataTable dt = GetData();
            ReportDataSource rds = new ReportDataSource("DataSet1", dt);
            ReportViewer1.LocalReport.DataSources.Add(rds);
            ReportViewer1.LocalReport.ReportPath = "Reportes/Documentos.rdlc";
            ReportViewer1.ShowReportBody = true;
            ReportViewer1.LocalReport.Refresh();                             
        }
        private DataTable GetData()
        {
            DataTable dt = new DataTable();            
            SqlCommand cmd = new SqlCommand("Documentos", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            return dt;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            mostrarReporte();
        }
    }
}