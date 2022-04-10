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
    public partial class Zakaz : Form
    {
        Model1 db = new Model1();
        public static Product PRODUCT { get; set; }
        public Zakaz()
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
            Customer customer = new Customer();
            customer.Show();
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            DialogResult dialog = MessageBox.Show("Вы действительно хотите выйти из программы?", "Завершение программы", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (dialog == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void Zakaz_Load(object sender, EventArgs e)
        {
            // TODO: данная строка кода позволяет загрузить данные в таблицу "sampleDataSet2.Product". При необходимости она может быть перемещена или удалена.
            this.productTableAdapter.Fill(this.sampleDataSet2.Product);

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //var ProductInfo = db.Product.ToList().Find((x) => x.Title == comboBox1.Text);
            //if (ProductInfo != null)
            //    label4.Text = db.Product.ToList().Find((x) => x.Title == comboBox1.Text).Cost.ToString();
            //    //label8.Text = db.Product.ToList().Find((x) => x.Title == comboBox1.Text).ArticleNumber.ToString();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}
//var ProductInfo = db.Product.ToList().Find((x) => x.Title == comboBox1.Text);
//if (ProductInfo != null)
//    label4.Text = db.Product.ToList().Find((x) => x.Title == comboBox1.Text).Cost.ToString();
//    //label8.Text = db.Product.ToList().Find((x) => x.Title == comboBox1.Text).ArticleNumber.ToString();



