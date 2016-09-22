using System;
using System.Collections;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using WebSite.DataHelper;
public partial class cn_include_memoinfocontent : System.Web.UI.UserControl
{
    public string Type = "";
    public string Content = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Hashtable condition = new Hashtable();
        condition.Add("Type", Type);
        DataTable table = DataHelper.Single.Select("MemoInfo", new ArrayList(),condition);
        if (table != null && table.Rows.Count == 1)
            Content = table.Rows[0]["Content"] + "";

    }
}