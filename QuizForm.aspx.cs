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
    public partial class QuizForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["marks"] = 0;
            string ans = RadioButtonList1.SelectedValue;
            if (ans == HiddenField1.Value)
            {
                ViewState["marks"] = 1;
            }

            ans = RadioButtonList2.SelectedValue;
            if (ans == HiddenField2.Value)
            {
                ViewState["marks"] = Convert.ToInt32(ViewState["marks"]) + 1;
            }
            ans = RadioButtonList3.SelectedValue;
            if (ans == HiddenField3.Value)
            {
                ViewState["marks"] = Convert.ToInt32(ViewState["marks"]) + 1;
            }
            ans = RadioButtonList4.SelectedValue;
            if (ans == HiddenField4.Value)
            {
                ViewState["marks"] = Convert.ToInt32(ViewState["marks"]) + 1;
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View1);
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //MultiView1.SetActiveView(View2);
        }
        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //MultiView1.SetActiveView(View3);
        }


        protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //MultiView1.SetActiveView(View4);
        }

        protected void RadioButtonList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            //TextBox1.Visible = true;
            //TextBox1.Text = ViewState["marks"].ToString();

        }

        protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View2);
        }

        protected void RadioButtonList2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View3);
        }

        protected void RadioButtonList3_SelectedIndexChanged1(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View4);
        }

        protected void RadioButtonList4_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            TextBox1.Text = ViewState["marks"].ToString();
        }
    }
}
