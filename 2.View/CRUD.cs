using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using _1.Model; // capa de negocios

namespace _2.View
{
    public partial class CRUD : Form
    {
        // MODEL
        clsTclient Model = new clsTclient();
        // store the idclient variable, this is going to be used in the button update
        private string idclient = null; // no space in memory = null;
        private bool update = false;

        public CRUD()
        {
            InitializeComponent();
        }

        private void CRUD_Load(object sender, EventArgs e)
        {
            displayClients();
        }
        /// <summary>
        /// loads the info client in to the dataGridView
        /// </summary>
        private void displayClients()
        {
            // newModel cleans the object everytime it is called
            // newModel cleans the view with every click
            clsTclient newModel = new clsTclient();
            dataGridViewClients.DataSource = newModel.displayClient();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            // info client
            string clientNumber = txtclientNumber.Text.Trim();
            string name = txtname.Text.Trim();
            string lastName = txtlastName.Text.Trim();
            string email = txtemail.Text.Trim();
            string img = txtimg.Text.Trim();
            string address = txtaddress.Text.Trim();
            string cardNumber = txtcardNumber.Text.Trim();
            string nip = txtnip.Text.Trim();
            string idagencies = txtidagencies.Text.Trim();
            string idemployee = txtidemployee.Text.Trim();

            if (update == false)
            {
                // INSERT
                try
                {
                    Model.insertClient(clientNumber, name, lastName, email, img, address, cardNumber, nip, idagencies, idemployee);
                    MessageBox.Show("Msg : " + " " + " New client has been inserted in the data base");
                    // in the dataGridView
                    displayClients();
                    // cleans the text boxws in the form
                    cleanTextbox();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error in the insertion : " + " " + ex.Message);
                }
            }
            // UPDATE
            if(update==true)
            {
                try
                {
                    Model.editClient(idclient, clientNumber, name, lastName, email, img, address, cardNumber, nip, idagencies, idemployee);
                    MessageBox.Show("Msg : " + " " + " client has been updated");
                    // in the dataGridView
                    displayClients();
                    // cleans the text boxws in the form
                    cleanTextbox();
                    // to reset application
                    update = false;
                }
                catch(Exception ex)
                {
                    MessageBox.Show("Error in the edition : " + " " + ex.Message);
                }
            }
        }

        /// <summary>
        /// fills the text boxes with the info from the dataGridView
        /// </summary>
        private void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                if(dataGridViewClients.SelectedRows.Count>0)
                {
                    update = true;
                    idclient = dataGridViewClients.CurrentRow.Cells["idclient"].Value.ToString();

                    txtclientNumber.Text = dataGridViewClients.CurrentRow.Cells["clientNumber"].Value.ToString();
                    txtname.Text = dataGridViewClients.CurrentRow.Cells["name"].Value.ToString();
                    txtlastName.Text = dataGridViewClients.CurrentRow.Cells["lastName"].Value.ToString();
                    txtemail.Text = dataGridViewClients.CurrentRow.Cells["email"].Value.ToString();
                    txtimg.Text = dataGridViewClients.CurrentRow.Cells["img"].Value.ToString();
                    txtaddress.Text = dataGridViewClients.CurrentRow.Cells["address"].Value.ToString();
                    txtcardNumber.Text = dataGridViewClients.CurrentRow.Cells["cardNumber"].Value.ToString();
                    txtnip.Text = dataGridViewClients.CurrentRow.Cells["nip"].Value.ToString();
                    txtidagencies.Text = dataGridViewClients.CurrentRow.Cells["idagencies"].Value.ToString();
                    txtidemployee.Text = dataGridViewClients.CurrentRow.Cells["idemployee"].Value.ToString();
                }
                else
                {
                    MessageBox.Show("select a row please");
                }

            }
            catch(Exception ex)
            {
                MessageBox.Show("Error : " + " " + ex.Message);
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                if(dataGridViewClients.SelectedRows.Count>0)
                {
                    idclient = dataGridViewClients.CurrentRow.Cells["idclient"].Value.ToString();
                    Model.deleteClient(idclient);
                    MessageBox.Show("Msg : " + " " + " A client has been deleted in the data base");
                    // in the dataGridView
                    displayClients();
                }
                else
                {
                    MessageBox.Show("select a row please");
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show("Error in the delete : " + " " + ex.Message);
            }

        }

        /// <summary>
        /// cleaan the text boxes with every click
        /// </summary>
        public void cleanTextbox()
        {
            txtclientNumber.Clear();
            txtname.Clear();
            txtlastName.Clear();
            txtemail.Clear();
            txtimg.Clear();
            txtaddress.Clear();
            txtcardNumber.Clear();
            txtnip.Clear();
            txtidagencies.Clear();
            txtidemployee.Clear();
        }

    }
}
