using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TccBancoTalentos.TelaCadastro
{
    public partial class CadastroEmpresa : System.Web.UI.Page
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

        protected void btnCadUser_Click(object sender, EventArgs e)
        {
            if(IsCnpj(txtCNPJEmpresa.Text) == false)
            {
                lblCNPJ.Text = "CNPJ Inválido";
                lblCNPJ.ForeColor = Color.Red;
                lblCNPJ.Visible = true;
            }
            else
            {
                connection.Open();

                var comando = new MySqlCommand($@"INSERT INTO empresa (nome,cnpj,email,senha,estado,cidade) VALUES (@nome,@cnpj,@email,@senha,@estado,@cidade)",connection);

                comando.Parameters.Add(new MySqlParameter("nome", txtNomeEmpresa.Text));
                comando.Parameters.Add(new MySqlParameter("cnpj", txtCNPJEmpresa.Text));
                comando.Parameters.Add(new MySqlParameter("email", txtEmailEmpresa.Text));
                comando.Parameters.Add(new MySqlParameter("senha", txtSenhaEmpresa.Text));
                comando.Parameters.Add(new MySqlParameter("estado", droplistEstado.SelectedValue));
                comando.Parameters.Add(new MySqlParameter("cidade", droplistCidade.SelectedValue));
                comando.ExecuteNonQuery();

                connection.Close();

                SiteMaster.ExibirAlert(this, "Empresa cadastrada com sucesso!");
            }
        }

        public static bool IsCnpj(string cnpj)
        {
            int[] multiplicador1 = new int[12] { 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
            int[] multiplicador2 = new int[13] { 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
            int soma;
            int resto;
            string digito;
            string tempCnpj;
            cnpj = cnpj.Trim();
            cnpj = cnpj.Replace(".", "").Replace("-", "").Replace("/", "");
            if (cnpj.Length != 14)
                return false;
            tempCnpj = cnpj.Substring(0, 12);
            soma = 0;
            for (int i = 0; i < 12; i++)
                soma += int.Parse(tempCnpj[i].ToString()) * multiplicador1[i];
            resto = (soma % 11);
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = resto.ToString();
            tempCnpj = tempCnpj + digito;
            soma = 0;
            for (int i = 0; i < 13; i++)
                soma += int.Parse(tempCnpj[i].ToString()) * multiplicador2[i];
            resto = (soma % 11);
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = digito + resto.ToString();
            return cnpj.EndsWith(digito);
        }

    }
}