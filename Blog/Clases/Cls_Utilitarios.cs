using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Blog.Clases
{
    public class Cls_Utilitarios
    {
        Cls_Conexion Connection = new Cls_Conexion();
        SqlConnection ConnectionDB = new SqlConnection();
        public DataSet GetDataSet(string Query, string Table)
        {
            ConnectionDB = Connection.GetConnection();
            DataSet dsGetDataSet = new DataSet();
            SqlDataAdapter DataAdapter = new SqlDataAdapter(Query, ConnectionDB);

            DataAdapter.Fill(dsGetDataSet, Table);
            ConnectionDB.Close();

            return dsGetDataSet;
        }
    }
}