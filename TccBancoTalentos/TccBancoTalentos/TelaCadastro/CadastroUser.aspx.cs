using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Drawing;
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
                SiteMaster.ExibirAlert(this, "Dados Inválidos.");
                return;
            }
            else
            {               
                    connection.Open();
                    string endereco = txtEstado.Text + "," + txtCidade.Text + ",";
                    var comando = new MySqlCommand($@"INSERT INTO usuario (nome,cpf,email,celular,endereco) VALUES (@nome,@cpf,@email,@celular,@endereco)", connection);
                    if (txtNomeUser.Text == "" || txtCPFUser.Text == "" || txtEmail.Text == "" || txtCidade.Text == "" || txtCelular.Text == "")
                    {
                        SiteMaster.ExibirAlert(this, "Preencha todos os campos!");
                        return;
                    }

                    comando.Parameters.Add(new MySqlParameter("nome", txtNomeUser.Text));
                    comando.Parameters.Add(new MySqlParameter("cpf", txtCPFUser.Text));
                    comando.Parameters.Add(new MySqlParameter("email", txtEmail.Text));
                    comando.Parameters.Add(new MySqlParameter("celular", txtCelular.Text));
                    comando.Parameters.Add(new MySqlParameter("endereco", endereco));
                    comando.ExecuteNonQuery();  
                    connection.Close();

                    SiteMaster.ExibirAlert(this, "Usuário cadastrado com sucesso!");
                


            }

        }

        protected void txtCPF_TextChanged(object sender, EventArgs e)
        {
            if (IsCpf(txtCPFUser.Text) == false)
            {
                lblAlertaCpf.Text = "CPF invalido!";
                lblAlertaCpf.ForeColor = Color.Red;
            }
            else
            {
                lblAlertaCpf.Text = "";
            }

        }
    }
}
