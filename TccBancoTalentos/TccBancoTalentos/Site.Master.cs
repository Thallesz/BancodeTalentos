using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TccBancoTalentos
{
    public partial class SiteMaster : MasterPage
    {
        public static string ConnectionString = "Server=mysql8003.site4now.net;User ID=a97033_talento;Password=talento2023;DataBase=db_a97033_talento";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static void ExibirAlert(Page page, string mensagem)
        {
            page.ClientScript.RegisterStartupScript(
                 page.GetType(),
                 "MessageBox" + Guid.NewGuid(),
                 "<script language='javascript'>alert('" + mensagem + "');</script>"
              );
        }



        public static void ExibirAlert(Page page, string mensagem, string pagina)
        {
            page.ClientScript.RegisterStartupScript(
                 page.GetType(),
                 "MessageBox" + Guid.NewGuid(),
                 "<script language='javascript'>alert('" + mensagem + "');window.location = '" + pagina + "';</script>"
              );
        }

        protected void btnCad_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TelaCadastro/CadastroUser.aspx");
        }
    }
}