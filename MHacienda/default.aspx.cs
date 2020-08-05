using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;
namespace MHacienda
{
    public partial class _default : System.Web.UI.Page
    {

        SqlConnection cn = conn.connect();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Admin"] = null;
            Session["emp"] = null;
        }

        protected void enviar_Click(object sender, EventArgs e)
        {
            string cod = user.Value;
            string contra = pass.Value;
            SqlCommand select = new SqlCommand(string.Format("SELECT * FROM Usuarios WHERE Codigo ='{0}' AND Contrasena='{1}' ", cod, contra), cn);
            SqlCommand verificar1 = new SqlCommand(string.Format("SELECT COUNT(*) FROM Usuarios WHERE Codigo = '{0}'", cod), cn);
            SqlCommand verificar2 = new SqlCommand(string.Format("SELECT COUNT(*) FROM Usuarios WHERE Contrasena ='{0}'", contra), cn);
            SqlDataReader reader;
            /*String cmd = "SELECT  FROM "*/

            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            try
            {
                if (Convert.ToInt32(verificar1.ExecuteScalar().ToString()) <= 0)
                {
                    msg.Text = "Usuario incorrecto";
                }
                else if (Convert.ToInt32(verificar2.ExecuteScalar().ToString()) <= 0)
                {
                    msg.Text = "Contraseña incorrecto";
                }
                else
                {
                    sda.SelectCommand = select;
                    sda.Fill(ds, "Usuarios");
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        reader = select.ExecuteReader();
                        reader.Read();
                        string compruebo = reader[7].ToString();
                        string estado = reader[9].ToString();
                        if (compruebo == "Administrador")
                        {
                            if (estado == "False")
                            {
                                msg.Text = "Este usuario esta desactivado";
                            }
                            else
                            {
                                Session["Admin"] = cod;
                                Response.Redirect("/modules/mainA.aspx");
                            }
                        }
                        else
                        {
                            if (estado == "False")
                            {
                                msg.Text = "Este usuario esta desactivado";
                            }
                            else
                            {
                                Session.Add("emp", cod);
                                Response.Redirect("/modules/mainU.aspx");
                            }
                        }

                    }

                }
            }
            catch (SqlException en)
            {
                msg.Text = en.ToString();
            }
        }
    }
}