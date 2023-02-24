using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TccBancoTalentos.TelaCadastroVaga
{
    public partial class CadastroVaga : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void btnRegistar_Click(object sender, EventArgs e)
        {
            connection.Open();
            var comando = new MySqlCommand($@"INSERT INTO vagasdisponiveis (vaga,salario,cargah,empresa,requisito) VALUES (@vaga,@salario,@cargah,@empresa,@requisito)",connection);
            if(txtVaga.Text =="" || txtSalario.Text == "" || txtRequisito.Text == "" || txtCargaH.Text == "" || txtEmpresa.Text == "")
            {
                SiteMaster.ExibirAlert(this, "Preencha todos os campos!");
                return;
            }

            comando.Parameters.Add(new MySqlParameter("vaga", txtVaga.Text));
            comando.Parameters.Add(new MySqlParameter("salario", txtSalario.Text));
            comando.Parameters.Add(new MySqlParameter("cargah", txtCargaH.Text));
            comando.Parameters.Add(new MySqlParameter("empresa", txtEmpresa.Text));
            comando.Parameters.Add(new MySqlParameter("requisito", txtRequisito.Text));
            comando.ExecuteNonQuery();
            connection.Close();

            SiteMaster.ExibirAlert(this, "Vaga Cadastrada com sucesso!");
        }
    }
}