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
    public partial class Registration : Form
    {
        Model1 db = new Model1();
        public Registration()
        {
            InitializeComponent();
            StartPosition = FormStartPosition.CenterScreen;
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            textBox2.UseSystemPasswordChar = true;
            textBox3.UseSystemPasswordChar = true;
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "" || textBox2.Text == "" || textBox3.Text == "" || comboBox1.Text == "" || textBox5.Text == "") 
            {
                MessageBox.Show("Нужно задать все данные!");
                return;
            }
            if (textBox2.Text != textBox3.Text)
            {
                MessageBox.Show("Значение паролей не совпадают!");
                return;
            }
            if (comboBox1.Text != "Заказчик") 
            {
                MessageBox.Show("Задана неверная роль!");
                return ;
            }
            Users usr = db.Users.Find(textBox1.Text);
            if (usr != null)
            {
                MessageBox.Show("Пользователь с таким логином и уже есть");
                return;
            }
            usr = new Users();
            usr.login = textBox1.Text;
            usr.psw = textBox2.Text;
            usr.role = "Заказчик";
            usr.name = textBox5.Text;
            db.Users.Add(usr);
            try
            {
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
            MessageBox.Show($"Пользователь {usr.login} зарегистрирован!");
            Autorisation.FORMA.Show();
            this.Close();
            return;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
            Autorisation.FORMA.Show();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            textBox2.UseSystemPasswordChar = false;
            textBox3.UseSystemPasswordChar = false;
            pictureBox1.Visible = true;
            pictureBox2.Visible = false;
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            textBox2.UseSystemPasswordChar = true;
            textBox3.UseSystemPasswordChar = true;
            pictureBox1.Visible = false;
            pictureBox2.Visible = true;
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            DialogResult dialog = MessageBox.Show("Вы действительно хотите выйти из программы?","Завершение программы",MessageBoxButtons.YesNo,MessageBoxIcon.Warning);
            if (dialog == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
