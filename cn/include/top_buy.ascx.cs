using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cn_include_top_buy : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        SearchImageButton.Click += SearchImageButton_Click;
    }

    void SearchImageButton_Click(object sender, ImageClickEventArgs e)
    {
        if (SearchContent.Text != "")
            Response.Redirect("../buy/index.aspx?Scontent=" + SearchContent.Text);
    }
}