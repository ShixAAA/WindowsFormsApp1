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
    public partial class Form4 : Form
    {
        Model1 db = new Model1();
        public Form4()
        {
            InitializeComponent();
        }

        private void Form4_Load(object sender, EventArgs e)
        {

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
            if (textBox1.Text == "" || textBox2.Text == "" || textBox3.Text == "" || textBox4.Text == "" || textBox5.Text == "") 
            {
                MessageBox.Show("Нужно задать все данные!");
                return;
            }
            if (textBox2.Text != textBox3.Text)
            {
                MessageBox.Show("Значение паролей не совпадают!");
                return;
            }
            if ((textBox4.Text != "Директор") && (textBox4.Text != "Бухгалтер") && (textBox4.Text != "Заказчик")) 
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
            usr.role = textBox4.Text;
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
            Form1.FORMA.Show();
            this.Close();
            return;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
            Form1.FORMA.Show();
        }
    }
}
