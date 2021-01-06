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



namespace systemlogin
{
    public partial class Form1 : Form
    {

        public Form1()
        {
            InitializeComponent();
        }

      
        

        private void button1_Click(object sender, EventArgs e)
        {
            bool result = getir();
            if (result)
            {
                Form2 frm2 = new Form2();
                frm2.Show();
                if (kullaniciAdi !=null)
                {
                    frm2.Text = "Hoşgeldin "+ kullaniciAdi;
                }
               
            }
            else
            {
                MessageBox.Show("Kullanıcı adı veya şifre yanlıs");
            }
            

        }
        public static string kullaniciAdi;
        public static string sifre;
        private bool getir()
        {
            SqlConnection connection = new SqlConnection("Server=STAJYER07;Initial Catalog = login; User ID =mustafa; Password=a1");
            connection.Open();
            SqlCommand komut = new SqlCommand("select * from uygulama where kullaniciadi ='" 
                + textBox1.Text + "' and sifre=  '" + textBox2.Text + "'", connection);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                kullaniciAdi = dr[0].ToString();
                sifre = dr[1].ToString();
                connection.Close();
                return true;
            }
            else
            {
                connection.Close();
                return false;
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        
    }
}
