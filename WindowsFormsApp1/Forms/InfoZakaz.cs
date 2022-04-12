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
        public static List<InfoZakaz> parts = new List<InfoZakaz>();
        public string TITLE { get; set; }
        public string ARCTICLE { get; set; }
        public string COST { get; set; }


        Model1 db = new Model1();
        public InfoZakaz()
        {
            InitializeComponent();
            StartPosition = FormStartPosition.CenterScreen;
        }

        private void InfoZakaz_Load(object sender, EventArgs e)
        {

        }
    }
}
