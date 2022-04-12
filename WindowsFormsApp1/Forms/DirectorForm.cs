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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
            StartPosition = FormStartPosition.CenterScreen;
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Form2_Load(object sender, EventArgs e)
        {
            label1.Text = "Добрый день, " + Autorisation.USER.name + " !";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
            Autorisation.FORMA.Show();
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            DialogResult dialog = MessageBox.Show("Вы действительно хотите выйти из программы?", "Завершение программы", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (dialog == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            RoleZ frm = new RoleZ();
            frm.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Customers cus = new Customers();
            cus.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Info inf = new Info();
            inf.Show();
            this.Hide();
        }
    }
}
