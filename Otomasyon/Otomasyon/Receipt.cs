using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.Sql;
using System.Drawing.Printing;

namespace Otomasyon
{
    public partial class Receipt : Form
    {
        public Receipt()
        {
            InitializeComponent();
            this.Load += Receipt_Load;
        }

        private void Receipt_Load(object sender, EventArgs e)
        {
            printDocument1.PrintPage += new PrintPageEventHandler(PrintDocument_PrintPage);

        }

        private void PrintDocument_PrintPage(object sender, PrintPageEventArgs e)
        {
            Bitmap bmp = new Bitmap(this.Width, this.Height);
            this.DrawToBitmap(bmp, new Rectangle(0, 0, this.Width, this.Height));
            e.Graphics.DrawImage(bmp, 0, 0);
        }


        SqlConnection baglanti = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=otomasyon;Integrated Security=True");


        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void maskedTextBox1_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        public void SetReceiptInfo(string billNo, string customerName, string productName, string totalPrice)
        {
           
            label7.Text = billNo;
            label8.Text = customerName;
            label9.Text = productName;
            label10.Text = totalPrice;
            label11.Text = "We received " + totalPrice + " From " + customerName + " For " + productName;



        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            PrintDialog printDialog = new PrintDialog();
            printDialog.Document = printDocument1;

            if (printDialog.ShowDialog() == DialogResult.OK)
            {
                
                btnPrint.Visible = false;
                btnExit.Visible = false;

                printDocument1.Print();

                btnPrint.Visible = true;
                btnExit.Visible = false;
            }

            this.Close();

            MessageBox.Show("Printing completed successfully.", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

            
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
