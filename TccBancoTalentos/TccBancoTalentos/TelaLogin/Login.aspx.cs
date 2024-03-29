﻿using System;
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
            var user = new Negocio.Usuario().Verifica_Usuario(txtEmail.Text, txtSenha.Text);

            if (user !=null)
            {
                Session["email"] = user;
                Response.Redirect("../TelaBusca/VisualizarEmprego.aspx");
            }
            else
            {
                SiteMaster.ExibirAlert(this, "Email e/ou senha inválidos!");
            }
                
        }
    }
}