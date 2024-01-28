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
    public partial class SaleForm : Form
    {
        public SaleForm()
        {
            InitializeComponent();
            FillCustomerComboBox();
            FillProductComboBox();
            FillDoctorComboBox();
            
            cmbCustomerID.SelectedIndexChanged += cmbCustomerID_SelectedIndexChanged;
            cmbProductID.SelectedIndexChanged += cmbProductID_SelectedIndexChanged;
            cmbQuantity.SelectedIndexChanged += cmbQuantity_SelectedIndexChanged;
            





            Load += SaleForm_Load;
        }
        private void SaleForm_Load(object sender, EventArgs e)
        {
            InitializeForm();
            //FillCustomerComboBox();
            //FillProductComboBox();
            //FillDoctorComboBox();
            


        }
        private void InitializeForm()
        {          
            ClearForm();         
        }
        private void ClearForm()
        {
            
            txtBillNo.Text = string.Empty;
            cmbCustomerID.SelectedIndex = -1;
            cmbCustomerName.SelectedIndex = -1;
            txtAddress.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEyePower.Text = string.Empty;
            txtConsultantDoctor.Text = string.Empty;
            cmbProductID.SelectedIndex = -1;
            txtProductName.Text = string.Empty;
            txtProductEyePower.Text = string.Empty;
            txtGlassType.Text = string.Empty;
            txtFrameType.Text = string.Empty;
            txtPrice.Text = string.Empty;
            cmbQuantity.SelectedIndex = -1;
            cmbDoctorID.SelectedIndex = -1;
            cmbDoctorName.SelectedIndex = -1;
            txtQualification.Text = string.Empty;
            txtHospitalName.Text = string.Empty;
            txtDoctorPhone.Text = string.Empty;
            txtDoctorEmail.Text = string.Empty;
            mskdDate.Text = string.Empty;
        }



        SqlConnection baglanti = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=otomasyon;Integrated Security=True");

        private void FillCustomerComboBox()
        {
            
            string query = "SELECT CustomerID, CustomerName,Address,Phone,EyePower,ConsultantDoctor FROM tblCustomer";
            SqlDataAdapter adapter = new SqlDataAdapter(query, baglanti);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            cmbCustomerID.DisplayMember = "CustomerID";
            cmbCustomerID.ValueMember = "CustomerID";
            cmbCustomerID.DataSource = dataTable;

            cmbCustomerName.DisplayMember = "CustomerName";
            cmbCustomerName.ValueMember = "CustomerName";
            cmbCustomerName.DataSource = dataTable;
        }

        private void DisplayCustomerDetails(int customerId)
        {
            string query = "SELECT Address, Phone, EyePower, ConsultantDoctor FROM tblCustomer WHERE CustomerID = @customerId";
            using (SqlCommand command = new SqlCommand(query, baglanti))
            {
                command.Parameters.AddWithValue("@customerId", customerId);
                baglanti.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    
                    txtAddress.Text = reader["Address"].ToString();
                    txtPhone.Text = reader["Phone"].ToString();
                    txtEyePower.Text = reader["EyePower"].ToString();
                    txtConsultantDoctor.Text = reader["ConsultantDoctor"].ToString();
                }

                baglanti.Close();
            }
        }

        private void cmbCustomerID_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbCustomerID.SelectedIndex != -1)
            {
                int selectedCustomerId = Convert.ToInt32(cmbCustomerID.SelectedValue);
                DisplayCustomerDetails(selectedCustomerId);
            }
        }



        private void FillProductComboBox()
        {
            
            string query = "SELECT ProductID, ProductName FROM tblProduct";
            SqlDataAdapter adapter = new SqlDataAdapter(query, baglanti);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            cmbProductID.DisplayMember = "ProductID";
            cmbProductID.ValueMember = "ProductID";
            cmbProductID.DataSource = dataTable;

           
        }

        private void FillProductDetails()
        {
            string query = "SELECT ProductName, EyePower, GlassType, FrameType, Price FROM tblProduct WHERE ProductID = @ProductID";

            using (SqlCommand command = new SqlCommand(query, baglanti))
            {
                
                if (cmbProductID.SelectedValue != null)
                {
                    command.Parameters.AddWithValue("@ProductID", cmbProductID.SelectedValue);
                    baglanti.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtProductName.Text = reader["ProductName"].ToString();
                            txtProductEyePower.Text = reader["EyePower"].ToString();
                            txtGlassType.Text = reader["GlassType"].ToString();
                            txtFrameType.Text = reader["FrameType"].ToString();
                            txtPrice.Text = reader["Price"].ToString();
                        }
                    }
                }
            }

            baglanti.Close();
        }

        private void cmbProductID_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            FillProductDetails();
        }

        private void cmbQuantity_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateTotalPrice();
        }

        private void UpdateTotalPrice()
        {
            if (int.TryParse(cmbQuantity.Text, out int quantity) && decimal.TryParse(txtPrice.Text, out decimal price))
            {
                decimal totalPrice = quantity * price;
                txtTotalPrice.Text = totalPrice.ToString();
            }
        }

        private void FillDoctorComboBox()
        {
            string query = "SELECT DoctorID, DoctorName, Qualification, HospitalName, Phone, Email FROM tblDoctor";
            SqlDataAdapter adapter = new SqlDataAdapter(query, baglanti);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            cmbDoctorID.DisplayMember = "DoctorID";
            cmbDoctorID.ValueMember = "DoctorID";
            cmbDoctorID.DataSource = dataTable;

            cmbDoctorName.DisplayMember = "DoctorName";
            cmbDoctorName.ValueMember = "DoctorName";
            cmbDoctorName.DataSource = dataTable;

            
            txtQualification.DataBindings.Clear();
            txtQualification.DataBindings.Add("Text", dataTable, "Qualification");

            txtHospitalName.DataBindings.Clear();
            txtHospitalName.DataBindings.Add("Text", dataTable, "HospitalName");

            txtDoctorPhone.DataBindings.Clear();
            txtDoctorPhone.DataBindings.Add("Text", dataTable, "Phone");

            txtDoctorEmail.DataBindings.Clear();
            txtDoctorEmail.DataBindings.Add("Text", dataTable, "Email");

            if (cmbDoctorID.Items.Count > 0)
            {
                cmbDoctorID.SelectedIndex = 0;
            }
        }

        

        



        private void btnSave_Click(object sender, EventArgs e)
        {
            timer1.Start();
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblSale (Bill,CustomerID,CustomerName,CustomerAddress,CustomerPhone,EyePower,ConsultantDoctor,ProductID," +
                "ProductName,ProductEyePower,GlassType,FrameType,Price,Quantity,TotalPrice,DoctorID,DoctorName,Qualification,HospitalName,DoctorPhone,Email,DateOfSale) values" +
                " (@p1, @p2, @p3, @p4, @p5,@p6, @p7, @p8, @p9, @p10,@p11, @p12, @p13, @p14, @p15,@p16, @p17, @p18, @p19, @p20,@p21, @p22)", baglanti);
            komut.Parameters.AddWithValue("@p1", txtBillNo.Text);
            komut.Parameters.AddWithValue("@p2", cmbCustomerID.Text);
            komut.Parameters.AddWithValue("@p3", cmbCustomerName.Text);
            komut.Parameters.AddWithValue("@p4", txtAddress.Text);
            komut.Parameters.AddWithValue("@p5", txtPhone.Text);
            komut.Parameters.AddWithValue("@p6", txtEyePower.Text);
            komut.Parameters.AddWithValue("@p7", txtConsultantDoctor.Text);
            komut.Parameters.AddWithValue("@p8", cmbProductID.Text);
            komut.Parameters.AddWithValue("@p9", txtProductName.Text);
            komut.Parameters.AddWithValue("@p10", txtProductEyePower.Text);
            komut.Parameters.AddWithValue("@p11", txtGlassType.Text);
            komut.Parameters.AddWithValue("@p12", txtFrameType.Text);
            komut.Parameters.AddWithValue("@p13", txtPrice.Text);
            komut.Parameters.AddWithValue("@p14", cmbQuantity.Text);
            komut.Parameters.AddWithValue("@p15", cmbDoctorName.Text);
            komut.Parameters.AddWithValue("@p16", cmbDoctorID.Text);
            komut.Parameters.AddWithValue("@p17", cmbDoctorName.Text);
            komut.Parameters.AddWithValue("@p18", txtQualification.Text);
            komut.Parameters.AddWithValue("@p19", txtHospitalName.Text);
            komut.Parameters.AddWithValue("@p20", txtDoctorPhone.Text);
            komut.Parameters.AddWithValue("@p21", txtDoctorEmail.Text);
            komut.Parameters.AddWithValue("@p22", mskdDate.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            
            

            


        }

        private void SaleForm_Load_1(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        int startPoint = 0;
        private void timer1_Tick(object sender, EventArgs e)
        {
            startPoint += 10;

            progressBar1.Value = startPoint;
            if(progressBar1.Value == 100) 
            {
                progressBar1.Value = 0;
                timer1.Stop();

                Receipt receiptForm = new Receipt();
                receiptForm.SetReceiptInfo(txtBillNo.Text, cmbCustomerName.Text, txtProductName.Text, txtTotalPrice.Text);
                receiptForm.Show();
                this.Hide();


            }
        }

        



        private void cmbCustomerID_SelectedIndexChanged_1(object sender, EventArgs e)
        {
           
        }

        

       
    }
}
