using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace WindowsForm1
{
    public partial class LoginForm : Form
    {
        MySqlConnection con = new MySqlConnection("host=localhost;user=root;password=;database=finalprojectg1");
        private Button login_btn;
        private TextBox textBox_user;
        private Label label_user;
        private Label label_pass;
        private TextBox textBox_pass;
        private Button sign_up_btn;
        MySqlCommand comm;
        public LoginForm()
        {
            InitializeComponent();
        }

        private void open_connection()
        {

            con.Open();
            //MessageBox.Show($"MySQL version : {con.ServerVersion}");
        }

        private void InitializeComponent()
        {
            this.login_btn = new System.Windows.Forms.Button();
            this.textBox_user = new System.Windows.Forms.TextBox();
            this.label_user = new System.Windows.Forms.Label();
            this.label_pass = new System.Windows.Forms.Label();
            this.textBox_pass = new System.Windows.Forms.TextBox();
            this.sign_up_btn = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // login_btn
            // 
            this.login_btn.Location = new System.Drawing.Point(78, 128);
            this.login_btn.Name = "login_btn";
            this.login_btn.Size = new System.Drawing.Size(131, 40);
            this.login_btn.TabIndex = 1;
            this.login_btn.Text = "Login";
            this.login_btn.UseVisualStyleBackColor = true;
            this.login_btn.Click += new System.EventHandler(this.login_btn_Click);
            // 
            // textBox_user
            // 
            this.textBox_user.Location = new System.Drawing.Point(106, 43);
            this.textBox_user.Name = "textBox_user";
            this.textBox_user.Size = new System.Drawing.Size(143, 22);
            this.textBox_user.TabIndex = 2;
            // 
            // label_user
            // 
            this.label_user.AutoSize = true;
            this.label_user.Location = new System.Drawing.Point(29, 43);
            this.label_user.Name = "label_user";
            this.label_user.Size = new System.Drawing.Size(71, 17);
            this.label_user.TabIndex = 3;
            this.label_user.Text = "username";
            // 
            // label_pass
            // 
            this.label_pass.AutoSize = true;
            this.label_pass.Location = new System.Drawing.Point(29, 73);
            this.label_pass.Name = "label_pass";
            this.label_pass.Size = new System.Drawing.Size(68, 17);
            this.label_pass.TabIndex = 4;
            this.label_pass.Text = "password";
            // 
            // textBox_pass
            // 
            this.textBox_pass.Location = new System.Drawing.Point(106, 73);
            this.textBox_pass.Name = "textBox_pass";
            this.textBox_pass.Size = new System.Drawing.Size(143, 22);
            this.textBox_pass.TabIndex = 5;
            this.textBox_pass.UseSystemPasswordChar = true;
            // 
            // sign_up_btn
            // 
            this.sign_up_btn.Location = new System.Drawing.Point(106, 174);
            this.sign_up_btn.Name = "sign_up_btn";
            this.sign_up_btn.Size = new System.Drawing.Size(75, 35);
            this.sign_up_btn.TabIndex = 6;
            this.sign_up_btn.Text = "Sign up";
            this.sign_up_btn.UseVisualStyleBackColor = true;
            this.sign_up_btn.Click += new System.EventHandler(this.sign_up_Click);
            // 
            // LoginForm
            // 
            this.ClientSize = new System.Drawing.Size(282, 253);
            this.Controls.Add(this.sign_up_btn);
            this.Controls.Add(this.textBox_pass);
            this.Controls.Add(this.label_pass);
            this.Controls.Add(this.label_user);
            this.Controls.Add(this.textBox_user);
            this.Controls.Add(this.login_btn);
            this.Name = "LoginForm";
            this.Text = "Login";
            this.Load += new System.EventHandler(this.LoginForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private void LoginForm_Load(object sender, EventArgs e)
        {
            open_connection();
        }

        private void login_btn_Click(object sender, EventArgs e)
        {
            //open_connection();
            comm = con.CreateCommand();
            comm.CommandText = "SELECT count(*) FROM `finalprojectg1`.`account` WHERE perID = @perID and password = @password";

            comm.Parameters.AddWithValue("@perID", textBox_user.Text);
            comm.Parameters.AddWithValue("@password", textBox_pass.Text);
            string count = comm.ExecuteScalar().ToString();

            if (int.Parse(count) == 1)
            {
                Console.WriteLine("Login");
                this.Hide();
                new Form1().Show();
            } else {
                MessageBox.Show("Invalid username or password");
            }
        }

        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            if (keyData == (Keys.Enter))
            {
                login_btn.PerformClick();
            }
            return base.ProcessCmdKey(ref msg, keyData);
        }

        private void sign_up_Click(object sender, EventArgs e)
        {

        }
    }
}
