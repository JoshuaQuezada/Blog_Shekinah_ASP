using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity.Core.EntityClient;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Blog.Clases
{
    public class Cls_Conexion
    {
        ShekinahEntities PJ = new ShekinahEntities();
        public SqlConnection GetConnection()
        {
            string connection = ConfigurationManager.ConnectionStrings["ShekinahEntities"].ToString();
            string provider = new EntityConnectionStringBuilder(connection).ProviderConnectionString;
            SqlConnection Connectionsql = new SqlConnection(provider);

            return Connectionsql;
        }
    }
}