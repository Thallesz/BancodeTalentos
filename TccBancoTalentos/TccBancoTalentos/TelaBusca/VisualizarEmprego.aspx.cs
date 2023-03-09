using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Serilog;

namespace TccBancoTalentos
{
    public partial class VisualizarEmprego : System.Web.UI.Page
    {
        private MySqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);

            if(!IsPostBack)
            {
                connection.Open();

                droplistCidade.Items.Clear();

                var reader1 = new MySqlCommand("SELECT distinct cidade from vagasdisponiveis", connection).ExecuteReader();

                droplistCidade.Items.Add("");

                while (reader1.Read())
                {
                    var cidade = new ListItem(reader1.GetString("cidade"));
                    droplistCidade.Items.Add(cidade);
                }

                connection.Close();
            }

            DataTable empregos = new DataTable();
          
                empregos.Columns.Add("vaga");
                empregos.Columns.Add("salario");
                empregos.Columns.Add("cargah");
                empregos.Columns.Add("empresa");
                empregos.Columns.Add("cidade");
                empregos.Columns.Add("estado");

            connection.Open();

            var comando = new MySqlCommand($"SELECT vaga,salario,cargah,empresa,cidade,estado from vagasdisponiveis where (1=1) ", connection);

            if (droplistCidade.SelectedIndex > 0)
            {
                comando.CommandText += $" AND cidade like '{droplistCidade.SelectedItem.Text}'";
            }

            var reader = comando.ExecuteReader();
            while (reader.Read())
            {
                var linha = empregos.NewRow();
                linha["vaga"] = reader.GetString("vaga");
                linha["salario"] = reader.GetFloat("salario");
                linha["cargah"] = reader.GetTimeSpan("cargah");
                linha["empresa"] = reader.GetString("empresa");
                linha["cidade"] = reader.GetString("cidade");
                linha["estado"] = reader.GetString("estado");
                empregos.Rows.Add(linha);

            }
           
            Session["tabela"] = empregos;
            grdEmpregos.DataSource = empregos;
            grdEmpregos.DataBind();
            connection.Close();
        }

        protected void grdEmpregos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var emprego = (DataTable)Session["tabela"];
            if (e.CommandName == "candidatar")
            {
                Response.Redirect("~/TelaCadastro/CadastroUser.aspx");
            }
        }
    }
}