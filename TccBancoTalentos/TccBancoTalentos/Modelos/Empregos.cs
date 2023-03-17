using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TccBancoTalentos.Modelos
{
    public class Empregos
    {
        private MySqlConnection connection;

        public Empregos()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

    }
}