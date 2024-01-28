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
    public partial class AddDoctor : Form
    {
        public AddDoctor()
        {
            InitializeComponent();
        }

        SqlConnection baglanti = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=otomasyon;Integrated Security=True");

        private void btnEdit_Click(object sender, EventArgs e)
        {

        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblDoctor (DoctorName,Qualification,HospitalName,Phone,Email) values (@p1, @p2, @p3, @p4, @p5)", baglanti);
            komut.Parameters.AddWithValue("@p1", txtAddDoctorName.Text);
            komut.Parameters.AddWithValue("@p2", txtAddDoctorQualification.Text);
            komut.Parameters.AddWithValue("@p3", txtAddDoctorHospitalName.Text);
            komut.Parameters.AddWithValue("@p4", txtAddDoctorPhone.Text);
            komut.Parameters.AddWithValue("@p5", txtAddDoctorEmail.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Record save successfully");
        }

        private void btnList_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("select * from tblDoctor", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut2);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            baglanti.Close();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void AddDoctor_Load(object sender, EventArgs e)
        {

        }
    }
}
