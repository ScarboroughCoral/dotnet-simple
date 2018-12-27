using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class medical : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
           
            if (Request.QueryString["pcp"] != null)
            {
                doctorTextBox.Text = Request.QueryString["pcp"];

            }
        }
    }

    protected void saveButton_Click(object sender, EventArgs e)
    {
        Label2.Text = nameDate1.EmpName + " born on " + nameDate1.EmpDOB.ToLongDateString();

        HttpCookie cookie = Request.Cookies["Benefits"];
        string doctor = "";
        string life = "";
        if (cookie != null)
        {
            doctor = cookie.Values["doctor"];
            life = cookie.Values["life"];
            //doctorTextBox.Text = doctor;
            //lifeTextBox.Text = life;
        }

        doctor = doctorTextBox.Text;
        HttpCookie newCookie = new HttpCookie("Benefits");
        newCookie.Expires = DateTime.Now.AddDays(30);
        newCookie.Values.Add("doctor", doctor);
        newCookie.Values.Add("life", life);
        Response.Cookies.Add(newCookie);
    }
}
