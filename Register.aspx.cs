using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BALassi;
using DALassi;

namespace QuizAssi
{
    public partial class Register : System.Web.UI.Page
    {
        BAL b = new BAL();
        DAL d = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            b.userid = TextBox1.Text;
            b.useremail = TextBox2.Text;
            b.userpassword = TextBox3.Text;
            b.username = TextBox4.Text;
            d.Insertuser(b);
            Response.Write("completed sucessfully");
        }
    }
    }