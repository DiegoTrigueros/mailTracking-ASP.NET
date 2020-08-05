using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MHacienda.modules
{
    public partial class user : System.Web.UI.Page
    {
        SqlConnection cn = conn.connect();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}