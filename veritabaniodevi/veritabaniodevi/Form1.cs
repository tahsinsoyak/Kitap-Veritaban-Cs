using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace veritabaniodevi
{
    public partial class Form1 : Form
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-F9ROG65\\SQLEXPRESS;Initial Catalog=veritabaniodev;Integrated Security=True");
        public Form1()
        {
            InitializeComponent();
        }

        private void kitapgoster()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("kitaplistele", con);
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            dataGridView1.DataSource = dt;
            con.Close();
        }
        private void yazargoster()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("yazarlistele", con);
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            dataGridView1.DataSource = dt;
            con.Close();
        }

        private void kitapekle_Click(object sender, EventArgs e)
        {
            if(kitapid.Text=="")
            {
                MessageBox.Show("Lütfen kitap bilgilerini girin.", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("kitapekle", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@kitapid", SqlDbType.Int).Value = kitapid.Text.Trim();
                cmd.Parameters.AddWithValue("@kitapad", SqlDbType.VarChar).Value = kitapad.Text.Trim();
                cmd.Parameters.AddWithValue("@yazar", SqlDbType.VarChar).Value = kitapyazar.Text.Trim();
                cmd.Parameters.AddWithValue("@yayinevi", SqlDbType.VarChar).Value = kitapyayinevi.Text.Trim();
                cmd.Parameters.AddWithValue("@sayfasayisi", SqlDbType.Int).Value = kitapsayfasayisi.Text.Trim();
                cmd.Parameters.AddWithValue("@fiyat", SqlDbType.Money).Value = kitapfiyat.Text.Trim();
                cmd.Parameters.AddWithValue("@cevirmen", SqlDbType.VarChar).Value = kitapcevirmen.Text.Trim();
                cmd.Parameters.AddWithValue("@dil", SqlDbType.VarChar).Value = kitapdil.Text.Trim();
                cmd.Parameters.AddWithValue("@yayintarihi", SqlDbType.Date).Value = kitapyayintarihi.Text.Trim();
                cmd.Parameters.AddWithValue("@cilt", SqlDbType.VarChar).Value = kitapcilt.Text.Trim();
                cmd.ExecuteNonQuery();
                MessageBox.Show("Kitap başarılı bir şekilde eklendi.","Bilgilendirme",MessageBoxButtons.OK, MessageBoxIcon.Information);
                con.Close();
                kitapgoster();
            }
            

        }

        private void kitaplistele_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("kitaplistele", con);
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            dataGridView1.DataSource = dt;
            con.Close();
        }

        private void yazarekle_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("yazarekle", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@yazarid", SqlDbType.Int).Value = yazarid.Text.Trim();
            cmd.Parameters.AddWithValue("@yazaradsoyad", SqlDbType.VarChar).Value = yazarad.Text.Trim();
            cmd.Parameters.AddWithValue("@yazareposta", SqlDbType.VarChar).Value = yazarilet.Text.Trim();
            cmd.ExecuteNonQuery();
            MessageBox.Show("Yazar başarılı bir şekilde eklendi.", "Bilgilendirme", MessageBoxButtons.OK, MessageBoxIcon.Information);
            con.Close();
            yazargoster();
        }

        private void yazarlistele_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("yazarlistele", con);
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            dataGridView1.DataSource = dt;
            con.Close();
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (kitapfiyat.Text=="")
            {
                MessageBox.Show("Lütfen belirli bir fiyat girin(max fiyat).", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("kitapfiyat", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@fiyat", SqlDbType.Money).Value = kitapfiyat.Text.Trim();
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataGridView1.DataSource = dt;
                MessageBox.Show("Fiyatlar küçükten büyüğe sıralandı.", "Bilgilendirme", MessageBoxButtons.OK, MessageBoxIcon.Information);
                con.Close();
            }
            
        }

        private void yazaragore_Click(object sender, EventArgs e)
        {
            if(yazarad.Text=="")
            {
                MessageBox.Show("Lütfen Yazar Adı Giriniz", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("yazarkitaplariliste", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@yazarad", SqlDbType.Money).Value = yazarad.Text.Trim();
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataGridView1.DataSource = dt;
                MessageBox.Show("BAŞARIYLA SIRALANDI");
                con.Close();
            }
        }

        private void kitapsure_Click(object sender, EventArgs e)
        {
            if( kitapad.Text=="")
            {
                MessageBox.Show("Lütfen Kitap Adı Giriniz", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from kitapyayinsuresi('" + kitapad.Text.Trim() + "')", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable table = new DataTable();
                da.Fill(table);
                dataGridView1.DataSource = new BindingSource(table, null);
                con.Close();
            }
            
        }

        private void yayinevikitaplar_Click(object sender, EventArgs e)
        {
            if(kitapyayinevi.Text=="")
            {
                MessageBox.Show("Lütfen Yayınevi Adı Giriniz", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from yayinevikitaplari('" + kitapyayinevi.Text.Trim() + "')", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable table = new DataTable();
                da.Fill(table);
                dataGridView1.DataSource = new BindingSource(table, null);
                con.Close();
            }
            
        }

        private void yazarkitaphesap_Click(object sender, EventArgs e)
        {
                if (kitapyazar.Text == "")
                {
                    MessageBox.Show("Lütfen Yazar Adı Giriniz", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select * from kitapsayisi('" + kitapyazar.Text.Trim() + "')", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable table = new DataTable();
                    da.Fill(table);
                    dataGridView1.DataSource = new BindingSource(table, null);
                    con.Close();
                }
        }
    }
}
