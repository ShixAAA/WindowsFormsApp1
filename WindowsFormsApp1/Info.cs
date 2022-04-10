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
    public partial class Info : Form
    {
        Model1 db = new Model1();
        public Info()
        {
            InitializeComponent();
            StartPosition = FormStartPosition.CenterScreen;
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            DialogResult dialog = MessageBox.Show("Вы действительно хотите выйти из программы?", "Завершение программы", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (dialog == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
            Autorisation.FORMA.Show();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Info_Load(object sender, EventArgs e)
        {
            Model1 db = new Model1();
            Users usr = Autorisation.USER;
            label1.Text = usr.login;
            label2.Text = usr.psw;
            label3.Text = usr.role;
            label4.Text = usr.name;
        }
    }
}
