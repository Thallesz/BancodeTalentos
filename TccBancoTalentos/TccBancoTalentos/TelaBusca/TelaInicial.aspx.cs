using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TccBancoTalentos.TelaBusca
{
    public partial class TelaInicial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnIrVaga_Click(object sender, EventArgs e)
        {
            Response.Redirect("../TelaBusca/VisualizarEmprego.aspx");
        }
    }
}