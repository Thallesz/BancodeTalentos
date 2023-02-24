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
        }



        protected void btnBuscaEM_Click(object sender, EventArgs e)
        {
            DataTable empregos = new DataTable();
            try
            {
                Log.Information("Adicionando Colunas");
                empregos.Columns.Add("id");
                empregos.Columns.Add("vaga");
                empregos.Columns.Add("salario");
                empregos.Columns.Add("cargah");
                empregos.Columns.Add("requisitos");
                empregos.Columns.Add("empresa");
                Log.Information("Colunas Adicionadas");
            }
            catch(Exception j)
            {
                Log.Error("Informações Não encontradas!" + j.Message);
            }
            finally
            {
                Log.Warning("Fim");
            }

            connection.Open();

            var comando = new MySqlCommand($"SELECT id,vaga,salario,cargah,requisito,empresa from vagasdisponiveis", connection);

            var reader = comando.ExecuteReader();
            while (reader.Read())
            {
                var linha = empregos.NewRow();
                linha["id"] = reader.GetInt32("id");
                linha["vaga"] = reader.GetString("vaga");
                linha["salario"] = reader.GetFloat("salario");
                linha["cargah"] = reader.GetTimeSpan("cargah");
                linha["requisitos"] = reader.GetString("requisito");
                linha["empresa"] = reader.GetString("empresa");
                empregos.Rows.Add(linha);

            }

            connection.Close();
            Session["tabela"] = empregos;
            grdEmpregos.DataSource = empregos;
            grdEmpregos.DataBind();

            }

        protected void grdEmpregos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var emprego = (DataTable)Session["tabela"];
            if(e.CommandName == "candidatar")
            {
                Response.Redirect("~/TelaCadastro/CadastroUser.aspx");
            }
        }
    }
}