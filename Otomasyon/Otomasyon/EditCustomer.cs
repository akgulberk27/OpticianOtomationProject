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
    public partial class EditCustomer : Form
    {
        public EditCustomer()
        {
            InitializeComponent();
        }

        SqlConnection baglanti = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=otomasyon;Integrated Security=True");

        private void FillCustomerIDs()
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("SELECT CustomerID FROM tblCustomer", baglanti);
            SqlDataReader reader = komut.ExecuteReader();

            while (reader.Read())
            {
                cmbEditCustomerID.Items.Add(reader["CustomerID"].ToString());
            }

            reader.Close();
            baglanti.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("delete from tblCustomer where CustomerID=@p1",baglanti);
            komut2.Parameters.AddWithValue("@p1", cmbEditCustomerID.Text);
            komut2.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Record delete successfully");
            
        }

        private void btnList_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut4 = new SqlCommand("select * from tblCustomer", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut4);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            baglanti.Close();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            string updatedCustomerID = cmbEditCustomerID.SelectedItem.ToString();
            string updatedCustomerName = txtEditCustomerName.Text;
            string updatedCustomerAddress = txtEditCustomerAddress.Text;
            string updatedCustomerPhone = txtEditCustomerPhone.Text;
            string updatedEyePower = txtEditCostumerEyePower.Text;
            string updatedConsultantDoctor = txtEditCustomerConsultantDoctor.Text;

            baglanti.Open();
            SqlCommand komut = new SqlCommand("UPDATE tblCustomer SET CustomerName = @p1, Address = @p2, Phone = @p3, EyePower = @p4, ConsultantDoctor = @p5 WHERE CustomerID = @p6", baglanti);
            komut.Parameters.AddWithValue("@p1", updatedCustomerName);
            komut.Parameters.AddWithValue("@p2", updatedCustomerAddress);
            komut.Parameters.AddWithValue("@p3", updatedCustomerPhone);
            komut.Parameters.AddWithValue("@p4", updatedEyePower);
            komut.Parameters.AddWithValue("@p5", updatedConsultantDoctor);
            komut.Parameters.AddWithValue("@p6", updatedCustomerID);

            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Record updated successfully");
        }

        private void EditCustomer_Load(object sender, EventArgs e)
        {
            FillCustomerIDs();
        }

        private void cmbEditCustomerID_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbEditCustomerID.SelectedIndex != -1)
            {
                string selectedCustomerID = cmbEditCustomerID.SelectedItem.ToString();

                // Müşteri bilgilerini veritabanından al
                baglanti.Open();
                SqlCommand komut = new SqlCommand("SELECT * FROM tblCustomer WHERE CustomerID = @p1", baglanti);
                komut.Parameters.AddWithValue("@p1", selectedCustomerID);

                SqlDataReader reader = komut.ExecuteReader();

                if (reader.Read())
                {
                    txtEditCustomerName.Text = reader["CustomerName"].ToString();
                    txtEditCustomerAddress.Text = reader["Address"].ToString();
                    txtEditCustomerPhone.Text = reader["Phone"].ToString();
                    txtEditCostumerEyePower.Text = reader["EyePower"].ToString();
                    txtEditCustomerConsultantDoctor.Text = reader["ConsultantDoctor"].ToString();
                }

                reader.Close();
                baglanti.Close();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
