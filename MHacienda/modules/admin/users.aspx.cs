using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MHacienda.modules.admin
{
    public partial class users : System.Web.UI.Page
    {
        SqlConnection cn = conn.connect();
        
        protected void Page_Load(object sender, EventArgs e)
        {
         
            if (Session["Admin"] == null)
            {
                Response.Redirect("../../default.aspx");
            }else { 
             //Comobobox de oficinas 
                SqlDataAdapter ad = new SqlDataAdapter(string.Format("SELECT * FROM Oficinas"), cn);
                DataSet dsOfi = new DataSet();
                ad.Fill(dsOfi, "Oficinas");
                ofi.DataSource = dsOfi.Tables["Oficinas"].DefaultView;
                ofi.DataTextField = "Nombre";
                ofi.DataValueField = "Codigo";

                ofi.DataBind();                
            }
        }

        protected void ingU_Click(object sender, EventArgs e)
        {

            Empleado emp = new Empleado();
            emp.ObtCod = user.Value;
            emp.ObtContra = pass.Value;
            emp.ObtNom = nom.Value;
            emp.ObtApe = ape.Value;
            emp.ObtDui = dui.Value;
            emp.ObtNit = nit.Value;
            emp.ObtTel = tel.Value;
            emp.ObtOfi = ofi.SelectedValue;
            emp.ObtCargo = car.SelectedValue;

            mensaje.Text = emp.IngresarUsuario(emp.ObtCod, emp.ObtContra, emp.ObtNom, emp.ObtApe, emp.ObtDui, emp.ObtNit, emp.ObtTel, emp.ObtOfi, emp.ObtCargo,cn);
         
        }
        }
    }
