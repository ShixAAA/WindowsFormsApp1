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
        public static int sum = 0;
        public static List<Product> products = new List<Product>();
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
            comboBox1.Text = "";

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var ProductInfo = db.Product.ToList().Find((x) => x.Title == comboBox1.Text);
            if (ProductInfo != null)
            {
                label4.Text = db.Product.ToList().Find((x) => x.Title == comboBox1.Text).Cost.ToString();
                label8.Text = db.Product.ToList().Find((x) => x.Title == comboBox1.Text).ArticleNumber.ToString();
            }
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            products.Add(Model1.getContext().Product.ToList().Find((x) => x.Title == comboBox1.Text));
            if (label8.Text == "" || label4.Text == "")
            {
                MessageBox.Show("Нельзя оставить поле пустым!");
            }
            else
            {
                richTextBox1.Text = richTextBox1.Text + comboBox1.Text + "\n";
                sum += Convert.ToInt32(label4.Text);
                label6.Text = sum.ToString() + "₽";
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            InfoZakaz infoZakaz = new InfoZakaz();
            infoZakaz.Show();
            this.Close();
            InfoZakaz.dataGridView1.AutoGenerateColumns = true;
            InfoZakaz.dataGridView1.DataSource = products;
            //InfoZakaz.dataGridView1.Rows.Add(comboBox1.Text, label8.Text, label4.Text);
        }
    }
}           





