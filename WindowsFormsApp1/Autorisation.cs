using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Autorisation : Form
    {
        public static Autorisation FORMA { get; set; }
        public static Users USER { get; set; }
        Model1 db = new Model1();

        public Autorisation()
        {
            InitializeComponent();
            StartPosition = FormStartPosition.CenterScreen;
        }
 
        private void Form1_Load(object sender, EventArgs e)
        {
            textBox2.UseSystemPasswordChar = true;
        }     

        private void button1_Click(object sender, EventArgs e)
        {
            Model1 db = new Model1();
            if (textBox1.Text == "" || textBox2.Text == "")
            {
                MessageBox.Show("Нужно задать логин и пароль!");
                return;
            }
            Users usr = db.Users.Find(textBox1.Text);
            if ((usr != null) && (usr.psw == textBox2.Text))
            {             
                USER = usr;
                FORMA = this;
                if(usr.role == "Директор")
                {
                    Form2 frm = new Form2();
                    frm.Show();
                    this.Hide();
                }
                else if(usr.role == "Менеджер")
                {
                    ManagerForm frm = new ManagerForm();
                    frm.Show();
                    this.Hide();
                }
            }
            else
            {
                MessageBox.Show("Пользователя с таким логином и паролем нет!");
                return;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Registration f = new Registration();
            FORMA = this;
            this.Hide();
            f.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
        private void pictureBox1_Click(object sender, EventArgs e)
        {         
            textBox2.UseSystemPasswordChar = true;
            pictureBox1.Visible = false;
            pictureBox2.Visible = true;
        }
        private void pictureBox2_Click(object sender, EventArgs e)
        {
            textBox2.UseSystemPasswordChar = false;
            pictureBox1.Visible = true;
            pictureBox2.Visible = false;
        }
        private void button4_Click_1(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
        }
    }
}

