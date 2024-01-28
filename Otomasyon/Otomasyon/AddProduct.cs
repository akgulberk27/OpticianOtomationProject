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
    public partial class AddProduct : Form
    {
        public AddProduct()
        {
            InitializeComponent();
        }

        SqlConnection baglanti = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=otomasyon;Integrated Security=True");

        private void AddProduct_Load(object sender, EventArgs e)
        {

        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblProduct (ProductName,EyePower,GlassType,FrameType,Price) values (@p1, @p2, @p3, @p4, @p5)", baglanti);
            komut.Parameters.AddWithValue("@p1", txtAddProductName.Text);
            komut.Parameters.AddWithValue("@p2", txtAddProductEyePower.Text);
            komut.Parameters.AddWithValue("@p3", txtAddProductGlassType.Text);
            komut.Parameters.AddWithValue("@p4", txtAddProductFrameType.Text);
            komut.Parameters.AddWithValue("@p5", txtAddProductPrice.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Record save successfully");
        }

        private void btnList_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("select * from tblProduct", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut2);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            baglanti.Close();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void txtPrice_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtFrameType_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtGlassType_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtEyePower_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtProductName_TextChanged(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
