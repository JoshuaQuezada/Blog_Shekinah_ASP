using Blog.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog
{
    public partial class Login : System.Web.UI.Page
    {
        Cls_Utilitarios Utilities = new Cls_Utilitarios();
        DataSet Ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Aceptar_Click(object sender, EventArgs e)
        {
            string username = txt_UserName.Value;
            string password = txt_Password.Value;

            Ds = Utilities.GetDataSet("SELECT COUNT(*) AS Dato FROM tbUsers as U WHERE u.Usu_FullUserName = '" + username + "' AND U.Usu_Password = '" + password + "'", "T");
            string conteo = Ds.Tables["T"].Rows[0]["Dato"].ToString();
            if (conteo != "0")
            {
                Response.Redirect("Index.aspx");
            }
        }
    }
}