using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TccBancoTalentos.Negocio
{
    public class Empresa
    {
        private MySqlConnection connection;

        public Empresa()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public Classes.Empresa Verifica_Empresa(string email, string senha)
        {
            var empresa = new Classes.Empresa();

            try
            {
                connection.Open();
                var comand = new MySqlCommand($"SELECT id,email FROM empresa WHERE email = @email and senha = @senha", connection);
                comand.Parameters.Add(new MySqlParameter("email", email));
                comand.Parameters.Add(new MySqlParameter("senha", senha));

                var reader = comand.ExecuteReader();
                if (reader.Read())
                {
                    empresa.ID = reader.GetInt32("id");
                    empresa.Email = reader.GetString("email");
                }
                else
                {
                    empresa = null;
                }
            }
            catch
            {
                empresa = null;
            }
            finally
            {
                connection.Close();
            }

            return empresa;
        }
    }
}