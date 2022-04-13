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
    public partial class InfoZakaz : Form
    {
        Model1 db = new Model1();
        public InfoZakaz()
        {
            InitializeComponent();
            StartPosition = FormStartPosition.CenterScreen;
        }

        private void InfoZakaz_Load(object sender, EventArgs e)
        {
            
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
            Zakaz infoZakaz = new Zakaz();
            infoZakaz.Show();
        }
    }
}
