using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Celendar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
            Calendar1.Visible = false;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        lblMess.Visible = true;
        lblMess.Text = "Bạn vừa chọn " + TextBox1.Text + " là celendar của mình";
    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = !Calendar1.Visible;
        lblMess.Visible = false;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        lblMess.Visible = true;
        lblMess.Text = "Bạn vừa chọn " + TextBox1.Text + " là celendar của mình";
    }

}