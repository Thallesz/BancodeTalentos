using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TccBancoTalentos.TelaCadastroUser
{
    public partial class CadastroUser : System.Web.UI.Page
    {
        private MySqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);

            if(!IsPostBack)
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

        protected void checkboxConcord_CheckedChanged(object sender, EventArgs e)
        {
            if (checkboxConcord.Checked)
            {
                btnCadUser.Enabled = true;
            }
            else
            {
                btnCadUser.Enabled = false;
                SiteMaster.ExibirAlert(this, "Preencha todas as informações!");
            }

        }

        public static bool IsCpf(string cpf)
        {
            int[] multiplicador1 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            int[] multiplicador2 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            string tempCpf;
            string digito;
            int soma;
            int resto;
            cpf = cpf.Trim();
            cpf = cpf.Replace(".", "").Replace("-", "");
            if (cpf.Length != 11)
                return false;
            tempCpf = cpf.Substring(0, 9);
            soma = 0;

            for (int i = 0; i < 9; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador1[i];
            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = resto.ToString();
            tempCpf = tempCpf + digito;
            soma = 0;
            for (int i = 0; i < 10; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador2[i];
            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = digito + resto.ToString();
            return cpf.EndsWith(digito);
        }

        protected void btnCadUser_Click(object sender, EventArgs e)
        {
            if (IsCpf(txtCPFUser.Text) == false)
            {
                lblAlertaCpf.Text = "Insira um CPF válido";
                lblAlertaCpf.ForeColor = Color.Red;
                lblAlertaCpf.Visible = true;
            }
            else
            {

                string Caminho = Server.MapPath("~/Curriculos") ;

                if(oFile.HasFile)
                {

                    Caminho = Path.Combine(Caminho,oFile.FileName);

                    oFile.SaveAs(Caminho);  

                    lblConfirmCurriculo.Text = "Seu arquivo foi salvo como" + Caminho;
                }
                else
                {
                    lblConfirmCurriculo.Text = "Você não selecionou um arquivo.";
                                         
                }

                
                connection.Open();
                var comando = new MySqlCommand($@"INSERT INTO candidato (nome,cpf,email,celular,estado,cidade,senha,datanasc) VALUES (@nome,@cpf,@email,@celular,@estado,@cidade,@senha,@datanasc)", connection);


                if (txtNomeUser.Text == "" || txtCPFUser.Text == "" || txtEmail.Text == "" || txtCelular.Text == "" || txtSenha.Text == "" || droplistCidade.Text == "" || droplistEstado.Text == "" || txtNasc.Text == "" )
                {
                    SiteMaster.ExibirAlert(this, "Preencha todos os campos!");
                    return;
                }

                comando.Parameters.Add(new MySqlParameter("nome", txtNomeUser.Text));
                comando.Parameters.Add(new MySqlParameter("cpf", txtCPFUser.Text));
                comando.Parameters.Add(new MySqlParameter("email", txtEmail.Text));
                comando.Parameters.Add(new MySqlParameter("celular", txtCelular.Text));
                comando.Parameters.Add(new MySqlParameter("senha", txtSenha.Text));
                comando.Parameters.Add(new MySqlParameter("datanasc", txtNasc.Text));
                comando.Parameters.Add(new MySqlParameter("estado", droplistEstado.SelectedValue));
                comando.Parameters.Add(new MySqlParameter("cidade", droplistCidade.SelectedValue));
                comando.ExecuteNonQuery();
                connection.Close();

                SiteMaster.ExibirAlert(this, "Usuário cadastrado com sucesso!");
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
