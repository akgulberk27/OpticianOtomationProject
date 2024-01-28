using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Otomasyon
{
    public partial class LoginForm : Form
    {

        SqlDataReader dr;
        SqlCommand com;
        SqlConnection baglanti = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=otomasyon;Integrated Security=True");
        public LoginForm()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
          
            string user = txtUsername.Text;
            string password = txtPassword.Text;

            com = new SqlCommand();
            baglanti.Open();
            com.Connection = baglanti;
            com = new SqlCommand("SELECT * FROM tblGiris WHERE kullanici = @kullanici AND sifre = @sifre", baglanti);
            com.Parameters.AddWithValue("@kullanici", txtUsername.Text);
            com.Parameters.AddWithValue("@sifre", txtPassword.Text); 
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                new frmMain().Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("The Username or password you entered is incorrect, try again");
                txtUsername.Clear();
                txtPassword.Clear();
                txtUsername.Focus();
            }
            baglanti.Close();
        }

        private void label2_Click(object sender, EventArgs e)
        {
            txtUsername.Clear();
            txtPassword.Clear();
            txtUsername.Focus();
        }

        private void label3_Click_1(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }

        private void LoginForm_Load(object sender, EventArgs e)
        {

        }
    }
}
