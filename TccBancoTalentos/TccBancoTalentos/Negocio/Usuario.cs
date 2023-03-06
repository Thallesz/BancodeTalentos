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

        public Classes.Usuario Verifica_Usuario(string user,string senha)
        {
            var usuario = new Classes.Usuario();

            try
            {
                connection.Open();
                var comand = new MySqlCommand($"SELECT id,user FROM gerente WHERE user = @user and senha = @senha", connection);
                comand.Parameters.Add(new MySqlParameter("user", user));
                comand.Parameters.Add(new MySqlParameter("senha", senha));

                var reader = comand.ExecuteReader();
                if (reader.Read())
                {
                    usuario.ID = reader.GetInt32("id");
                    usuario.User = reader.GetString("user");
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