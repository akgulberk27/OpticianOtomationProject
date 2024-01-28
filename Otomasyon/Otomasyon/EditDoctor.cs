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


namespace Otomasyon
{
    public partial class EditDoctor : Form
    {
        public EditDoctor()
        {
            InitializeComponent();
            FillDoctorIDs();
            cmbEditDoctorID.SelectedIndexChanged += comboBoxDoctorID_SelectedIndexChanged;
        }

        SqlConnection baglanti = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=otomasyon;Integrated Security=True");

        private void FillDoctorIDs()
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("SELECT DoctorID FROM tblDoctor", baglanti);
            SqlDataReader reader = komut.ExecuteReader();

            while (reader.Read())
            {
                cmbEditDoctorID.Items.Add(reader["DoctorID"].ToString());
            }

            baglanti.Close();
        }


        private void btnUpdate_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("UPDATE tblDoctor SET DoctorName = @p1, Qualification = @p2, HospitalName = @p3, Phone = @p4, Email = @p5 WHERE DoctorID = @p6", baglanti);
            komut.Parameters.AddWithValue("@p1", txtEditDoctorName.Text);
            komut.Parameters.AddWithValue("@p2", txtEditDoctorQualification.Text);
            komut.Parameters.AddWithValue("@p3", txtEditDoctorHospitalName.Text);
            komut.Parameters.AddWithValue("@p4", txtEditDoctorPhone.Text);
            komut.Parameters.AddWithValue("@p5", txtEditDoctorEmail.Text);
            komut.Parameters.AddWithValue("@p6", cmbEditDoctorID.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Record updated successfully");
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("delete from tblDoctor where DoctorID=@p1", baglanti);
            komut2.Parameters.AddWithValue("@p1", cmbEditDoctorID.Text);
            komut2.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Record delete successfully");
        }

        private void btnList_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("select * from tblDoctor", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut3);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            baglanti.Close();
        }

        private void comboBoxDoctorID_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Seçilen doktor ID'sini al
            string selectedDoctorID = cmbEditDoctorID.SelectedItem.ToString();

            FillDoctorInfo(selectedDoctorID);

            // Seçilen doktorun bilgilerini veritabanından al
            baglanti.Open();
            SqlCommand komut = new SqlCommand("SELECT DoctorName, Qualification, HospitalName, Phone, Email FROM tblDoctor WHERE DoctorID = @p1", baglanti);
            komut.Parameters.AddWithValue("@p1", selectedDoctorID);

            SqlDataReader reader = komut.ExecuteReader();

            if (reader.Read())
            {
                // Doktor bilgilerini ilgili alanlara doldur
                txtEditDoctorName.Text = reader["DoctorName"].ToString();
                txtEditDoctorQualification.Text = reader["Qualification"].ToString();
                txtEditDoctorHospitalName.Text = reader["HospitalName"].ToString();
                txtEditDoctorPhone.Text = reader["Phone"].ToString();
                txtEditDoctorEmail.Text = reader["Email"].ToString();
            }

            baglanti.Close();
        }


        

        private void FillDoctorInfo(string doctorID)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("SELECT DoctorName, Qualification, HospitalName, Phone, Email FROM tblDoctor WHERE DoctorID = @p1", baglanti);
            komut.Parameters.AddWithValue("@p1", doctorID);

            SqlDataReader reader = komut.ExecuteReader();

            if (reader.Read())
            {
                // Doktor bilgilerini ilgili alanlara doldur
                txtEditDoctorName.Text = reader["DoctorName"].ToString();
                txtEditDoctorQualification.Text = reader["Qualification"].ToString();
                txtEditDoctorHospitalName.Text = reader["HospitalName"].ToString();
                txtEditDoctorPhone.Text = reader["Phone"].ToString();
                txtEditDoctorEmail.Text = reader["Email"].ToString();
            }

            baglanti.Close();
        }

        private void EditDoctor_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}