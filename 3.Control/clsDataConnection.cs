using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
// connect to database
using System.Data;
using System.Data.SqlClient;

namespace _3.Control
{
    public class clsDataConnection
    {
        // Error 40: Could not open a connection to SQL Server fixed with  http://msdn.microsoft.com/en-us/library/ms174212.aspx
        // in My computer : C:\Windows\SysWOW64\SQLServerManager14.msc
        private SqlConnection Conexion = new SqlConnection("Data Source = .; DataBase = bd_crud_client; Integrated Security=true");

        // OPPEN CONNECTION
        public SqlConnection openConnection()
        {
            try
            {

                if (Conexion.State == ConnectionState.Closed)
                {
                    Conexion.Open();
                }
                return Conexion;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error : " + " " + ex.Message);
                return null;
            }
        }

        // CLOSE CONNECTION
        public SqlConnection closeConnection()
        {
            try
            {
                if (Conexion.State == ConnectionState.Open)
                {
                    Conexion.Close();
                }
                return Conexion;
            }
            catch(Exception ex)
            {
                MessageBox.Show("Error : " + " " + ex.Message);
                return null;
            }
        }
    }
}
