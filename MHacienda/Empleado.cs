using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace MHacienda
{
    public class Empleado
    {
        string cod, contra, nombre, apellido, dui, nit, telefono, oficina, cargo;

        public string  ObtCod{
            get { return this.cod; }
            set { cod = value; }
            }
        public string ObtContra {
            get { return this.contra; }
            set { contra = value; }
        }
        public string ObtNom
        {
            get { return this.nombre; }
            set { nombre = value; }
        }
        public string ObtApe
        {
            get { return this.apellido; }
            set { apellido = value; }
        }

        public string ObtDui
        {
            get { return this.dui; }
            set { dui = value; }
        }

        public string ObtNit
        {
            get { return this.nit; }
            set { nit = value; }
        }

        public string ObtTel
        {
            get { return this.telefono; }
            set { telefono = value; }
        }
        public string ObtOfi
        {
            get { return this.oficina; }
            set { oficina = value; }
        }

        public string ObtCargo
        {
            get { return this.cargo; }
            set { cargo = value; }
        }

        public string IngresarUsuario(string codigo,string contrasena, string nombres, string apellidos,string Dui, string Nit, string telefonos, string oficinas, string cargos,SqlConnection cn)
        {
            string mensaje = "";
            Boolean estado = true;
            SqlCommand select = new SqlCommand(string.Format("SELECT Codigo,DUI,NIT FROM Usuarios"), cn);
            SqlCommand compruebo1 = new SqlCommand(string.Format("SELECT COUNT(*) FROM Usuarios WHERE Codigo='{0}'", codigo), cn);
            SqlCommand compruebo2 = new SqlCommand(string.Format("SELECT COUNT(*) FROM Usuarios WHERE DUI='{0}'", dui), cn);
            SqlCommand compruebo3 = new SqlCommand(string.Format("SELECT COUNT(*) FROM Usuarios WHERE NIT='{0}'", nit), cn);
            SqlDataAdapter verifico = new SqlDataAdapter();
            DataSet ds = new DataSet();
            verifico.SelectCommand = select;
            verifico.Fill(ds, "Usuarios");
            if (ds.Tables[0].Rows.Count > 0)

            {

                if (compruebo1.ExecuteScalar().ToString() != "0")
                {
                    mensaje= "¡Codigo de empleado ya existente!";
                }
                else if (compruebo2.ExecuteScalar().ToString() != "0")
                {
                    mensaje= "¡DUI ya registrado!";
                }
                else if (compruebo3.ExecuteScalar().ToString() != "0")
                {
                    mensaje = "¡NIT ya existente!";
                }
                else
                {
                    SqlCommand cmd = new SqlCommand(string.Format("INSERT INTO Usuarios VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')",codigo, nombres, apellidos, Dui, Nit, telefonos, oficinas, cargos, contrasena,estado), cn);

                    cmd.ExecuteNonQuery();
                    mensaje= "¡Registro exitoso!";
                }
            }
            return mensaje;
        }
    }
}