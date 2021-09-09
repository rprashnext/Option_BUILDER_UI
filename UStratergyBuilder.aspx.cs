using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class UStratergyBuilder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_ADDPOS_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ADDPOS.aspx");
        }
        void SubmitBtn_Click(Object Sender, EventArgs e)
        {

            if (Radio1.Checked)
            {
                Label1.Text = "You selected BUY " + Radio1.Text;
            }
            else if (Radio2.Checked)
            {
                Label1.Text = "You selected SELL" + Radio2.Text;
            }
        }

        protected void Radio1_CheckedChanged(object sender, EventArgs e)
        {
            if (Radio1.Checked)
            {
                Label1.Text = "You selected BUY " + Radio1.Text;
            }
            else if (Radio2.Checked)
            {
                Label1.Text = "You selected SELL" + Radio2.Text;
            }
        }

        protected void Radio2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}