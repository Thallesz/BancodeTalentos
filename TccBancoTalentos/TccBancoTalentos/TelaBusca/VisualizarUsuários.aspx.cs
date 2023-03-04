using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TccBancoTalentos.TelaBusca
{
    public partial class VisualizarUsuários : System.Web.UI.Page
    {
        private MySqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);

            DataTable usuarios = new DataTable();
            usuarios.Columns.Add("id");
            usuarios.Columns.Add("nome");
            usuarios.Columns.Add("formacao");
            usuarios.Columns.Add("cpf");
            usuarios.Columns.Add("rg");
            usuarios.Columns.Add("email");
            usuarios.Columns.Add("endereco");
            usuarios.Columns.Add("celular");

            connection.Open();

            var comando = new MySqlCommand($"SELECT id,nome,formacao,cpf,rg,email,endereco,celular FROM usuario", connection);

            var reader = comando.ExecuteReader();
            while (reader.Read())
            {
                var linha = usuarios.NewRow();
                linha["id"] = reader.GetInt32("id");
                linha["nome"] = reader.GetString("nome");
                linha["formacao"] = reader.GetString("formacao");
                linha["cpf"] = reader.GetString("cpf");
                linha["rg"] = reader.GetString("rg");
                linha["email"] = reader.GetString("email");
                linha["endereco"] = reader.GetString("endereco");
                linha["celular"] = reader.GetString("celular");
                usuarios.Rows.Add(linha);
            }

            connection.Close();
            Session["tabela"] = usuarios;
            grdUsuarios.DataSource = usuarios;
            grdUsuarios.DataBind();
        }

        protected void grdUsuarios_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           

        }

    }
}