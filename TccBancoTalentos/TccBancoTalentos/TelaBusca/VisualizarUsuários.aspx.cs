﻿using MySqlConnector;
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
            usuarios.Columns.Add("cpf");
            usuarios.Columns.Add("email");
            usuarios.Columns.Add("estado");
            usuarios.Columns.Add("cidade");
            usuarios.Columns.Add("celular");

            connection.Open();

            var comando = new MySqlCommand($"SELECT CT.id,E.nome estado,C.nome cidade,CT.nome,cpf,email,CT.cidade,CT.estado,celular FROM candidato CT " +
                $"INNER JOIN estados E ON CT.estado = E.id INNER JOIN cidades C ON CT.cidade = C.id", connection);


            var reader = comando.ExecuteReader();
            while (reader.Read())
            {
                var linha = usuarios.NewRow();
                linha["id"] = reader.GetInt32("id");
                linha["nome"] = reader.GetString("nome");
                linha["cpf"] = reader.GetString("cpf");
                linha["email"] = reader.GetString("email");
                linha["estado"] = reader.GetString("estado");
                linha["cidade"] = reader.GetString("cidade");
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
            if (e.CommandName == "deletar")
            {               

                int index = Convert.ToInt32(e.CommandArgument);
                var tabela = (DataTable)Session["tabela"];

                connection.Open();

                var commando = new MySqlCommand("DELETE FROM candidato WHERE id = " + tabela.Rows[index]["id"].ToString(), connection);
                commando.ExecuteNonQuery();

                connection.Close();

                SiteMaster.ExibirAlert(this, "Candidato excluido com sucesso!");

                DataTable usuarios = new DataTable();
                usuarios.Columns.Add("id");
                usuarios.Columns.Add("nome");
                usuarios.Columns.Add("cpf");
                usuarios.Columns.Add("email");
                usuarios.Columns.Add("estado");
                usuarios.Columns.Add("cidade");
                usuarios.Columns.Add("celular");

                connection.Open();

                var comando = new MySqlCommand($"SELECT CT.id,E.nome estado,C.nome cidade,CT.nome,cpf,email,CT.cidade,CT.estado,celular FROM candidato CT " +
                $"INNER JOIN estados E ON CT.estado = E.id INNER JOIN cidades C ON CT.cidade = C.id", connection);

                var reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    var linha = usuarios.NewRow();
                    linha["id"] = reader.GetInt32("id");
                    linha["nome"] = reader.GetString("nome");
                    linha["cpf"] = reader.GetString("cpf");
                    linha["email"] = reader.GetString("email");
                    linha["estado"] = reader.GetString("estado");
                    linha["cidade"] = reader.GetString("cidade");
                    linha["celular"] = reader.GetString("celular");
                    usuarios.Rows.Add(linha);
                }

                connection.Close();
                Session["tabela"] = usuarios;
                grdUsuarios.DataSource = usuarios;
                grdUsuarios.DataBind();
            }

        }

    }
}