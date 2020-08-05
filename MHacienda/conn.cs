using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace MHacienda
{
    public class conn
    {
        public static SqlConnection connect()
        {
            //DESKTOP-VGAH3JT
            String cadena = "Data Source=DESKTOP-VGAH3JT\\SQLEXPRESS;Initial Catalog=MHacienda;Integrated Security=True";
            SqlConnection con = new SqlConnection(cadena);
            con.Open();
            return con;
        }
    }
}