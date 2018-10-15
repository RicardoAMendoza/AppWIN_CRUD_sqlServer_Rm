using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//using System.Windows.Forms; // MessageBox
// connect to database
using System.Data;
using System.Data.SqlClient;
using _3.Control; // capa de datos


namespace _1.Model
{
    public class clsTclient
    {
        /// <summary>
        /// object with the interactions with the data base
        /// </summary>
        private clsDataClient Control = new clsDataClient();

        /// <summary>
        /// call the info client from data base and returns the info in a table
        /// </summary>
        /// <returns>a client info table</returns>
        public DataTable displayClient()
        {
            DataTable table = new DataTable();
            // info client in a table object
            table = Control.display();
            return table;
        }

        /// <summary>
        /// insert info client in the data base
        /// </summary>
        public void insertClient(string clientNumber, string name, string lastName, string email, string img, string address, string cardNumber, string nip, string idagencies, string idemployee)
        {
            // we validate and convert data before sending it to the Control layer
            // we do not validate and convert data in the View layer 
            int IDagencies = Convert.ToInt32(idagencies);
            int IDemployee = Convert.ToInt32(idemployee);
            // object type Control
            Control.insert(clientNumber, name, lastName, email, img, address, cardNumber, nip, IDagencies, IDemployee);
        }

        /// <summary>
        /// update info client in the data base
        /// </summary>
        public void editClient(string idclient, string clientNumber, string name, string lastName, string email, string img, string address, string cardNumber, string nip, string idagencies, string idemployee)
        {
            // we validate and convert data in the the Model layer
            int IDclient = Convert.ToInt32(idclient);
            int IDagencies = Convert.ToInt32(idagencies);
            // with idclient we update one row in the table
            int IDemployee = Convert.ToInt32(idemployee);
            Control.update(IDclient, clientNumber, name, lastName, email, img, address, cardNumber, nip, IDagencies, IDemployee);
        }

        /// <summary>
        /// we delete one row in the data base
        /// </summary>
        public void deleteClient(string idclient)
        {
            // we validate and convert data in the the Model layer
            int IDclient = Convert.ToInt32(idclient);
            // with idclient we delete one row in the table
            Control.delete(IDclient);
        }
    }
}