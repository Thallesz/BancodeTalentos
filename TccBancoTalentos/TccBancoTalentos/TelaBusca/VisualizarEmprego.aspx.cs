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

            DataTable empregos = new DataTable();

            empregos.Columns.Add("vaga");
            empregos.Columns.Add("salario");
            empregos.Columns.Add("cargah");
            empregos.Columns.Add("empresa");
            empregos.Columns.Add("estado");
            empregos.Columns.Add("cidade");

            connection.Open();

            var comando = new MySqlCommand($"SELECT E.id,E.nome estado,C.nome cidade,vaga,salario,cargah,empresa,estado,cidade from vagasdisponiveis VD  " +
                $"INNER JOIN estados E ON VD.estado = E.id INNER JOIN cidades C ON VD.cidade = C.id  ", connection);

            var reader = comando.ExecuteReader();
            while (reader.Read())
            {
                var linha = empregos.NewRow();
                linha["vaga"] = reader.GetString("vaga");
                linha["salario"] = reader.GetFloat("salario");
                linha["cargah"] = reader.GetTimeSpan("cargah");
                linha["empresa"] = reader.GetString("empresa");
                linha["estado"] = reader.GetString("estado");
                linha["cidade"] = reader.GetString("cidade");

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

        protected void droplistEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
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
}