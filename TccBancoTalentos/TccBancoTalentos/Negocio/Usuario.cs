using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TccBancoTalentos.Negocio
{
    public class Usuario
    {
        private MySqlConnection connection;

        public Usuario()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public Classes.Usuario Verifica_Usuario(string email,string senha)
        {
            var usuario = new Classes.Usuario();

            try
            {
                connection.Open();
                var comand = new MySqlCommand($"SELECT id,email FROM candidato WHERE email = @email and senha = @senha", connection);
                comand.Parameters.Add(new MySqlParameter("email", email));
                comand.Parameters.Add(new MySqlParameter("senha", senha));

                var reader = comand.ExecuteReader();
                if (reader.Read())
                {
                    usuario.ID = reader.GetInt32("id");
                    usuario.Email = reader.GetString("email");
                }
                else
                {
                    usuario = null;
                }

            }
            catch
            {
                usuario = null;
            }
            finally
            {
                connection.Close();
            }

            return usuario;
        }
    }
}