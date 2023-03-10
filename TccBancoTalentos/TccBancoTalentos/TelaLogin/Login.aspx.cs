using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TccBancoTalentos
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var user = new Negocio.Usuario().Verifica_Usuario(txtUser.Text, txtSenha.Text);

            if (user !=null)
            {
                Session["user"] = user;
                Response.Redirect("../TelaBusca/VisualizarUsuários.aspx");
            }
            else
            {
                SiteMaster.ExibirAlert(this, "Usuário e/ou senha incorretos!");
            }
                
        }

        protected void btnCad_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/TelaCadastro/CadastroUser.aspx");
        }
    }
}