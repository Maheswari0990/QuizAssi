using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizAssi
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("server=desktop-nb178v4\\sqlexpress;Integrated Security=true;database=AssignementQuiz");
            cn.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from LoginUser where userid='" + TextBox1.Text + "'", cn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            cn.Close();
            if (temp == 1)
            {

                cn.Open();
                SqlCommand cm = new SqlCommand("select userpassword from LoginUser where userid='" + TextBox1.Text + "'", cn);
                string pass = cm.ExecuteScalar().ToString();
                if (pass == TextBox2.Text)
                {
                    Response.Write("Logged in Successfully");
                    Response.Redirect("~/QuizForm.aspx");
                }
                else
                {
                    Response.Write("Password is InCorrect");
                    // b = false;
                }
            }
            else
            {
                Response.Write("UserId is InCorrect");
                //b = false;
            }
        }
    }
}