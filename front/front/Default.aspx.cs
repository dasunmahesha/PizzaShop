using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ServiceClient client = new ServiceClient();
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        
        string uname = TypeEmailX.Text;
        String PPWord = TypePassword.Text;

        ServiceClient client = new ServiceClient();
        string dd = client.LogData(uname, PPWord);
        Label3.Text = dd;

        if (Label3.Text== "logig succes")
        {
            Response.Redirect("Home.aspx");
        }

    }

}