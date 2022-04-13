namespace WindowsFormsApp1
{
    partial class InfoZakaz
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            dataGridView1 = new System.Windows.Forms.DataGridView();
            this.button3 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            dataGridView1.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new System.Drawing.Point(0, -1);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.Size = new System.Drawing.Size(801, 365);
            dataGridView1.TabIndex = 0;
            dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.button3.FlatAppearance.BorderSize = 0;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.button3.ForeColor = System.Drawing.Color.White;
            this.button3.Location = new System.Drawing.Point(659, 404);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(129, 34);
            this.button3.TabIndex = 5;
            this.button3.Text = "Назад";
            this.button3.UseVisualStyleBackColor = false;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // InfoZakaz
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.button3);
            this.Controls.Add(dataGridView1);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "InfoZakaz";
            this.Text = "InfoZakaz";
            this.Load += new System.EventHandler(this.InfoZakaz_Load);
            ((System.ComponentModel.ISupportInitialize)(dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button button3;
        public static System.Windows.Forms.DataGridView dataGridView1;
    }
}
//partial class InfoZakaz
//{
//    /// <summary>
//    /// Required designer variable.
//    /// </summary>
//    private System.ComponentModel.IContainer components = null;

//    /// <summary>
//    /// Clean up any resources being used.
//    /// </summary>
//    /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
//    protected override void Dispose(bool disposing)
//    {
//        if (disposing && (components != null))
//        {
//            components.Dispose();
//        }
//        base.Dispose(disposing);
//    }

//    #region Windows Form Designer generated code

//    /// <summary>
//    /// Required method for Designer support - do not modify
//    /// the contents of this method with the code editor.
//    /// </summary>
//    private void InitializeComponent()
//    {
//        dataGridView1 = new System.Windows.Forms.DataGridView();
//        this.button3 = new System.Windows.Forms.Button();
//        ((System.ComponentModel.ISupportInitialize)(dataGridView1)).BeginInit();
//        this.SuspendLayout();
//        // 
//        // dataGridView1
//        // 
//        dataGridView1.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
//        dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
//        dataGridView1.Location = new System.Drawing.Point(0, -1);
//        dataGridView1.Name = "dataGridView1";
//        dataGridView1.Size = new System.Drawing.Size(801, 365);
//        dataGridView1.TabIndex = 0;
//        dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
//        // 
//        // button3
//        // 
//        this.button3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
//        this.button3.FlatAppearance.BorderSize = 0;
//        this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
//        this.button3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
//        this.button3.ForeColor = System.Drawing.Color.White;
//        this.button3.Location = new System.Drawing.Point(659, 404);
//        this.button3.Name = "button3";
//        this.button3.Size = new System.Drawing.Size(129, 34);
//        this.button3.TabIndex = 5;
//        this.button3.Text = "Назад";
//        this.button3.UseVisualStyleBackColor = false;
//        this.button3.Click += new System.EventHandler(this.button3_Click);
//        // 
//        // InfoZakaz
//        // 
//        this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
//        this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
//        this.BackColor = System.Drawing.SystemColors.Control;
//        this.ClientSize = new System.Drawing.Size(800, 450);
//        this.Controls.Add(this.button3);
//        this.Controls.Add(dataGridView1);
//        this.DoubleBuffered = true;
//        this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
//        this.Name = "InfoZakaz";
//        this.Text = "InfoZakaz";
//        this.Load += new System.EventHandler(this.InfoZakaz_Load);
//        ((System.ComponentModel.ISupportInitialize)(dataGridView1)).EndInit();
//        this.ResumeLayout(false);

//    }

//    #endregion
//    private System.Windows.Forms.Button button3;
//    public static System.Windows.Forms.DataGridView dataGridView1;
//}