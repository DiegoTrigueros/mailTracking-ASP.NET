using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace MHacienda
{
    public class Oficinas
    {
        String nombre, ubicacion;
        
        public string ObtNombre {
            get { return nombre; }
            set { nombre = value; }
        }
        public string ObtUbicacion {
            get { return ubicacion; }
            set { ubicacion = value; }
        }

        public string RegistroOficina(string nom, string ubi,SqlConnection cn) {
            string msg = "";
            bool estado;
            string select = "SELECT Nombre FROM Oficinas";
            string comp = "SELECT COUNT(Nombre) FROM Oficinas";
            string insert = string.Format("INSERT INTO Oficinas VALUES ('{0}','{1}')",nom,ubi);
            SqlCommand cmd = new SqlCommand(select, cn);
            SqlCommand com = new SqlCommand(comp,cn);
            SqlDataAdapter ver = new SqlDataAdapter();
            DataSet ds = new DataSet();
            ver.SelectCommand = cmd;
            ver.Fill(ds,"Oficinas");
            if (ds.Tables[0].Rows.Count > 0) {
                if (com.ExecuteScalar().ToString() == nombre)
                {
                    msg = "¡Oficina ya ingresada, intenta otro nombre!";
                }
                else {
                    try {
                        SqlCommand inst = new SqlCommand(insert, cn);
                        inst.ExecuteNonQuery();
                        msg = "¡Registro Exitoso!";
                    } catch (Exception ex) {
                        msg = ex.ToString();
                    }
                    
                }
            }
            return msg;
        }
    }
}