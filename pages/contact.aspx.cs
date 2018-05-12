using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Submit(object sender, EventArgs e)
    {
        //Get Data from Page
        List<string> contactus = new List<string>();
        contactus.AddRange( new List<string> { txtfname.Text, txtlname.Text, txtemail.Text, txtmessage.Text });
    }
}