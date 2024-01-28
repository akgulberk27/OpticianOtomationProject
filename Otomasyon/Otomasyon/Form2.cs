using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Otomasyon
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
            InitializePanels();
        }

        private void InitializePanels()
        {
            
            pnlCustomers.Visible = true;
            pnlProducts.Visible = false;
            pnlDoctor.Visible = false;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            pnlCustomers.Visible = true;
            pnlProducts.Visible = false;
            pnlDoctor.Visible = false;
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnSales_Click(object sender, EventArgs e)
        {
            new SaleForm().Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void pnlAddDoctor_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnProducts_Click(object sender, EventArgs e)
        {
            pnlCustomers.Visible = true;
            pnlProducts.Visible = true;
            pnlDoctor.Visible = false;
        }

        private void bntDoctors_Click(object sender, EventArgs e)
        {
            pnlCustomers.Visible = true;
            pnlProducts.Visible = true;
            pnlDoctor.Visible = true;
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            new AddCustomer().Show();
        }

        private void btnEditCustomer_Click(object sender, EventArgs e)
        {
            new EditCustomer().Show();
        }

        private void btnAddProduct_Click(object sender, EventArgs e)
        {
            new AddProduct().Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            new EditProduct().Show();
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            new AddDoctor().Show();
        }

        private void btnEditDoctor_Click(object sender, EventArgs e)
        {
            new EditDoctor().Show();
        }

        

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
