using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Schema;

namespace Otomasyon
{
    public partial class AnimasyonluGiris : Form
    {

        public AnimasyonluGiris()
        {
            InitializeComponent();
        }
        bool islem = false;
        //private void timer1_Tick(object sender, EventArgs e)
        //{
        //    if (islem == false)
        //    {
        //        this.Opacity += 0.009;
        //    }
        //    if (this.Opacity == 1.0)
        //    {
        //        islem = true;
        //    }
        //    if (islem == true)
        //    {
        //        this.Opacity -= 0.009;
        //        if (this.Opacity == 0)
        //        {
        //            LoginForm frm = new LoginForm();
        //            frm.Show();
        //            this.Hide();
        //            timer1.Enabled = false;
        //        }
        //    }


        //}

        private void AnimasyonluGiris_Load(object sender, EventArgs e)
        {


        }

        private void timer1_Tick_1(object sender, EventArgs e)
        {
            if (islem == false)
            {
                this.Opacity += 0.009;
            }
            if (this.Opacity == 1.0)
            {
                islem = true;
            }
            if (islem == true)
            {
                this.Opacity -= 0.009;
                if (this.Opacity == 0)
                {
                    LoginForm frm = new LoginForm();
                    frm.Show();
                    this.Hide();
                    timer1.Enabled = false;
                }
            }


        }

    }
}
