using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TccBancoTalentos.TelaLogin
{
    public partial class LoginEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var user = new Negocio.Empresa().Verifica_Empresa(txtEmail.Text, txtSenha.Text);

            if (user != null)
            {
                Session["email"] = user;

                Response.Redirect("../TelaCadastro/CadastroVaga.aspx");
            }
            else
            {
                SiteMaster.ExibirAlert(this, "Email e/ou senha inválidos!");
            }
        }
    }
}