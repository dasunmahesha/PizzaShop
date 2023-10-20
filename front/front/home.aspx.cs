using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;

public partial class Default2 : System.Web.UI.Page
{
    
    
    public static string[] Price;
    public static string[] Imgs;
    public static string[] name;
    public static string[] pizdetail;
    protected void Page_Load(object sender, EventArgs e)
    {

        ServiceClient client = new ServiceClient();

        Price = client.priceList();
        name = client.nameList();
        Imgs = client.imglist();
        pizdetail = client.pdail();
        client.Close();

    }


    protected void Lgout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}   
