using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Otomasyon
{
    public partial class AddCustomer : Form
    {
        public AddCustomer()
        {
            InitializeComponent();
            
        }

        

        SqlConnection baglanti = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=otomasyon;Integrated Security=True");

       

        



        private void button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("insert into tblCustomer (CustomerName,Address,Phone,EyePower,ConsultantDoctor) values (@p1, @p2, @p3, @p4, @p5)", baglanti);
            komut1.Parameters.AddWithValue("@p1", txtAddCustomerName.Text);
            komut1.Parameters.AddWithValue("@p2", txtAddCostumerAddress.Text);
            komut1.Parameters.AddWithValue("@p3", txtAddCostumerPhone.Text);
            komut1.Parameters.AddWithValue("@p4", txtAddCostumerEyePower.Text);
            komut1.Parameters.AddWithValue("@p5", txtAddCustomerConsultantDoctor.Text);
            komut1.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Record save successfully");
        }

        private void btnList_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("select * from tblCustomer", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut3);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            baglanti.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
