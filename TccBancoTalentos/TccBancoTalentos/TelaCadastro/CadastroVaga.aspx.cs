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

            if (!IsPostBack)
            {
                connection.Open();

                droplistEstado.Items.Clear();

                var reader1 = new MySqlCommand("SELECT nome,id FROM estados ", connection).ExecuteReader();


                while (reader1.Read())
                {
                    var estado = new ListItem(reader1.GetString("nome"), Convert.ToString(reader1.GetInt32("id")));
                    droplistEstado.Items.Add(estado);
                }

                droplistEstado.SelectedIndex = 0;
                connection.Close();

                connection.Open();

                droplistCidade.Items.Clear();

                var reader2 = new MySqlCommand("SELECT C.nome,C.id FROM cidades C INNER JOIN estados E ON E.id = C.id_estado WHERE E.id =" + droplistEstado.SelectedValue, connection).ExecuteReader();

                droplistCidade.Items.Add("");

                while (reader2.Read())
                {
                    var cidade = new ListItem(reader2.GetString("nome"), Convert.ToString(reader2.GetInt32("id")));
                    droplistCidade.Items.Add(cidade);
                }

                connection.Close();
            }
        }

        protected void btnRegistar_Click(object sender, EventArgs e)
        {
            connection.Open();
            var comando = new MySqlCommand($@"INSERT INTO vagasdisponiveis (vaga,salario,cargah,empresa,cidade,estado) VALUES (@vaga,@salario,@cargah,@empresa,@cidade,@estado)",connection);
            if(txtVaga.Text =="" || txtSalario.Text == "" || txtCargaH.Text == "" || txtEmpresa.Text == "" || droplistCidade.SelectedValue == "" || droplistEstado.SelectedValue == "")
            {
                SiteMaster.ExibirAlert(this, "Preencha todos os campos!");
                return;
            }

            comando.Parameters.Add(new MySqlParameter("vaga", txtVaga.Text));
            comando.Parameters.Add(new MySqlParameter("salario", txtSalario.Text));
            comando.Parameters.Add(new MySqlParameter("cargah", txtCargaH.Text));
            comando.Parameters.Add(new MySqlParameter("empresa", txtEmpresa.Text));
            comando.Parameters.Add(new MySqlParameter("cidade", droplistCidade.SelectedValue));
            comando.Parameters.Add(new MySqlParameter("estado", droplistEstado.SelectedValue));
            comando.ExecuteNonQuery();
            connection.Close();

            SiteMaster.ExibirAlert(this, "Vaga Cadastrada com sucesso!");
        }
    }
}