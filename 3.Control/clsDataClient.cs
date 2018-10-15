using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms; // MessageBox
// connect to database
using System.Data;
using System.Data.SqlClient;


namespace _3.Control
{
    public class clsDataClient
    {
        // encapsulate the variable
        private clsDataConnection connection = new clsDataConnection();
        
        // Read rows
        SqlDataReader read;
        // Store query rows
        DataTable table = new DataTable();
        // execute instructions or stored procedures
        SqlCommand command = new SqlCommand();

        // LOAD CLIENT IN THE dataGridView
        public DataTable display()
        {
            try
            {
                // OPEN CONNECTION
                command.Connection = connection.openConnection();
                // TRANSACTION SQL  
                // command.CommandText = "select * from tclient";
                // command.CommandType = CommandType.Text;

                // PROCEDURE SQL
                // CommandText -> to execute de transaction or peocedure sql
                command.CommandText = "selectallTclient";
                // tell the command to retrieve data with procedure type
                // always specify the command type
                command.CommandType = CommandType.StoredProcedure;
                read = command.ExecuteReader(); // to read rows - return roads
                table.Load(read);
                // CLOSE CONNECTION
                connection.closeConnection();
                return table;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error : " + " " + ex.Message);
                return null;
            }
        }

        // INSERT
        public void insert(string clientNumber, string name, string lastName, string email, string img, string address, string cardNumber, string nip, int idagencies, int idemployee)
        {
            try
            {
                // OPEN CONNECTION
                command.Connection = connection.openConnection();
                // command.CommandText = "insert into tclient values('"+clientNumber+"','"+name+"','"+lastName+"','"+email+"','"+img+"','"+address+"','"+cardNumber+"','"+nip+"',"+idagencies+","+idemployee+")";
                // tell the command to retrieve data with text type
                // command.CommandType = CommandType.Text;

                // command
                command.CommandText = "insertTclient";
                // command type
                command.CommandType = CommandType.StoredProcedure;
                // command parameter
                command.Parameters.AddWithValue("@aclientNumber", clientNumber);
                command.Parameters.AddWithValue("@aname", name);
                command.Parameters.AddWithValue("@alastName", lastName);
                command.Parameters.AddWithValue("@aemail", email);
                command.Parameters.AddWithValue("@aimg", img);
                command.Parameters.AddWithValue("@aaddress", address);
                command.Parameters.AddWithValue("@acardNumber", cardNumber);
                command.Parameters.AddWithValue("@anip", nip);
                command.Parameters.AddWithValue("@aidagencies", idagencies);
                command.Parameters.AddWithValue("@aidemployee", idemployee);
                // to execute instructions sql
                command.ExecuteNonQuery();
                // to reuse the object SqlCommand command
                command.Parameters.Clear();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error : " + " " + ex.Message);
            }
        }

        // UPDATE
        public void update(int idclient, string clientNumber, string name, string lastName, string email, string img, string address, string cardNumber, string nip, int idagencies, int idemployee)
        {
            try
            {
                // OPEN CONNECTION
                command.Connection = connection.openConnection();
                // command
                command.CommandText = "updateTclient";
                // command type
                command.CommandType = CommandType.StoredProcedure;
                // we use idclient in the contional
                command.Parameters.AddWithValue("@aidclient", idclient);
                // command parameter
                command.Parameters.AddWithValue("@aclientNumber", clientNumber);
                command.Parameters.AddWithValue("@aname", name);
                command.Parameters.AddWithValue("@alastName", lastName);
                command.Parameters.AddWithValue("@aemail", email);
                command.Parameters.AddWithValue("@aimg", img);
                command.Parameters.AddWithValue("@aaddress", address);
                command.Parameters.AddWithValue("@acardNumber", cardNumber);
                command.Parameters.AddWithValue("@anip", nip);
                command.Parameters.AddWithValue("@aidagencies", idagencies);
                command.Parameters.AddWithValue("@aidemployee", idemployee);
                // to execute instructions sql
                command.ExecuteNonQuery();
                // to reuse the object SqlCommand command
                command.Parameters.Clear();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error : " + " " + ex.Message);
            }
        }

        // DELETE
        public void delete(int idclient)
        {
            // OPEN CONNECTION
            command.Connection = connection.openConnection();
            // command
            command.CommandText = "deleteTclient";
            // command type
            command.CommandType = CommandType.StoredProcedure;
            // command parameter
            command.Parameters.AddWithValue("@aidclient", idclient);
            // to execute instructions sql
            command.ExecuteNonQuery();
            // to reuse the object SqlCommand command
            command.Parameters.Clear();
        }
    }
}
