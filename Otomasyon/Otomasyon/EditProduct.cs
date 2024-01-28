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
    public partial class EditProduct : Form
    {
        public EditProduct()
        {
            InitializeComponent();
            FillComboBox();
            cmbEditProductID.SelectedIndexChanged += cmbEditProductID_SelectedIndexChanged;
        }

        SqlConnection baglanti = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=otomasyon;Integrated Security=True");

        private void FillComboBox()
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("SELECT ProductID FROM tblProduct", baglanti);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                cmbEditProductID.Items.Add(dr["ProductID"].ToString());
            }

            baglanti.Close();
        }


        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("UPDATE tblProduct SET ProductName = @p1, EyePower = @p2, GlassType = @p3, FrameType = @p4, Price = @p5 WHERE ProductID = @p6", baglanti);
            komut.Parameters.AddWithValue("@p1", txtEditProductName.Text);
            komut.Parameters.AddWithValue("@p2", txtEditProductEyePower.Text);
            komut.Parameters.AddWithValue("@p3", txtEditProductGlassType.Text);
            komut.Parameters.AddWithValue("@p4", txtEditProductFrameType.Text);
            komut.Parameters.AddWithValue("@p5", txtEditProductPrice.Text);
            komut.Parameters.AddWithValue("@p6", cmbEditProductID.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Record updated successfully");
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("delete from tblProduct where ProductID=@p1", baglanti);
            komut2.Parameters.AddWithValue("@p1", cmbEditProductID.Text);
            komut2.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Record delete successfully");
        }

        private void btnList_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("select * from tblProduct", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut3);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            baglanti.Close();
        }

        private void cmbEditProductID_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbEditProductID.SelectedItem != null)
            {
                string selectedProductID = cmbEditProductID.SelectedItem.ToString();

                // Veritabanından seçilen ürünün bilgilerini getir
                baglanti.Open();
                SqlCommand komut = new SqlCommand("SELECT * FROM tblProduct WHERE ProductID = @p1", baglanti);
                komut.Parameters.AddWithValue("@p1", selectedProductID);
                SqlDataReader dr = komut.ExecuteReader();

                if (dr.Read())
                {
                    txtEditProductName.Text = dr["ProductName"].ToString();
                    txtEditProductEyePower.Text = dr["EyePower"].ToString();
                    txtEditProductGlassType.Text = dr["GlassType"].ToString();
                    txtEditProductFrameType.Text = dr["FrameType"].ToString();
                    txtEditProductPrice.Text = dr["Price"].ToString();
                }

                baglanti.Close();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}